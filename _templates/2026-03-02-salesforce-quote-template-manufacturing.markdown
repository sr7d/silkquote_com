---
layout: post
title: "Salesforce Quote Template for Manufacturing"
description: "A native Salesforce quote template for manufacturers. Generate branded BOM-style proposals with part numbers, lead times, and freight directly from Salesforce."
date: 2026-03-02 10:01:00 +0300
author: admin
permalink: /salesforce-quote-template-manufacturing/
tags: [templates]
---

## Native Salesforce Quoting Built for Manufacturing Sales Teams

Stop pasting spreadsheet quotes into emails. SilkQuote generates branded, buyer-ready manufacturing quotes directly from your Salesforce Opportunities — part numbers, lead times, freight terms, and payment conditions included. No CPQ. No external tools.

<div class="template-preview">
  <img src="/images/ManufacturingTemplate.png" alt="Manufacturing quote template in Salesforce Lightning" class="template-preview__img" onclick="this.closest('.template-preview').querySelector('.template-preview__overlay').classList.add('open')">
  <button class="template-preview__expand" onclick="this.closest('.template-preview').querySelector('.template-preview__overlay').classList.add('open')" aria-label="View full size">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="15 3 21 3 21 9"/><polyline points="9 21 3 21 3 15"/><line x1="21" y1="3" x2="14" y2="10"/><line x1="3" y1="21" x2="10" y2="14"/></svg>
    Expand
  </button>
  <div class="template-preview__overlay" onclick="this.classList.remove('open')">
    <img src="/images/ManufacturingTemplate.png" alt="Manufacturing quote template — full size">
  </div>
</div>

## How It Works

1. **Install and set up the SilkQuote app** — [follow the setup guide →](/install/)
2. **Create the Apex Class and Visualforce Page** — copy the code below and paste each file into your Salesforce org via Setup
3. **Create a SilkQuote Template record** — in the SilkQuote app, create a new template and set the Visualforce Page name to `SilkQuote_Manufacturing`

If you need any assistance, reach out to [support](mailto:support@silkquote.com).

## Requirements

Before you install, confirm you have:

- **Salesforce edition** — Professional, Enterprise, or Unlimited
- **System Administrator profile** — required for package installation

[Install SilkQuote — free, installs in minutes →](/install/)

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Apex Class</span> ManufacturingPDFController.cls<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```
// Apex Controller Class
/**
 * ManufacturingPDFController
 *
 * Unmanaged Apex controller for SilkQuote_Manufacturing.page.
 * Customers have full ownership of this class and can modify it freely.
 *
 * This controller is a pure data provider — it loads Salesforce records and
 * exposes simple string/boolean properties. All layout and HTML lives in
 * SilkQuote_Manufacturing.page, which is the only file you need to edit to
 * change how the document looks.
 *
 * Uses "without sharing" so it works in guest/site contexts (e.g. the
 * Collaboration Site iframe for quote review). Change to "with sharing"
 * if you only use this template in authenticated contexts.
 *
 * ============================================================
 * CUSTOMIZATION GUIDE
 * ============================================================
 * Accent color:  Change ACCENT_COLOR constant below.
 * Logo:          Set LOGO_ID to a ContentVersion or Document Id.
 * Company name:  Set COMPANY_NAME (shown when no logo is set).
 * Tax:           In loadLineItems(), replace taxVal = 0 with
 *                your own tax logic.
 * Layout:        Edit SilkQuote_Manufacturing.page — no Apex changes needed.
 * ============================================================
 */
public without sharing class ManufacturingPDFController {

    // ============================================================
    // CUSTOMIZE THESE
    // ============================================================
    private static final String ACCENT_COLOR = '#1B3A5C';
    private static final String LOGO_ID      = '';   // ContentVersion or Document Id
    private static final String COMPANY_NAME = '';   // Shown when no logo is set
    // ============================================================

    // Styling
    public String  accentColor { get; private set; }
    public String  logoId      { get; private set; }
    public String  companyName { get; private set; }

    // Quote metadata
    public String  quoteName     { get; private set; }
    public String  formattedDate { get; private set; }
    public String  validUntil    { get; private set; }

    // Rep / Sales contact
    public String  repName  { get; private set; }
    public String  repPhone { get; private set; }

    // Bill To / Ship To address (uses billing address for both)
    public String  accName         { get; private set; }
    public String  accStreet       { get; private set; }
    public String  accCityStateZip { get; private set; }
    public String  accCountry      { get; private set; }
    public String  accPhone        { get; private set; }

    // Line items
    public List<LineItemRow> lineItems { get; private set; }
    public Boolean hasLineItems { get; private set; }

    // Totals
    public String  formattedSubtotal { get; private set; }
    public String  formattedDiscount { get; private set; }
    public String  formattedTax      { get; private set; }
    public String  formattedTotal    { get; private set; }
    public Boolean hasDiscount { get; private set; }
    public Boolean hasTax      { get; private set; }

    // Terms — raw HTML from the managed package, rendered with escape="false"
    public String  termsHtml { get; private set; }
    public Boolean hasTerms  { get; private set; }

    // ============================================================
    // LineItemRow — one row of the products table.
    // ============================================================
    public class LineItemRow {
        public Boolean isEven        { get; set; }
        public String  sku           { get; set; }
        public String  name          { get; set; }
        public String  description   { get; set; }
        public Boolean hasDescription { get; set; }
        public String  qty           { get; set; }
        public String  listPrice     { get; set; }
        public String  discount      { get; set; }
        public Boolean hasDiscount   { get; set; }
        public String  unitPrice     { get; set; }
        public String  lineTotal     { get; set; }
    }

    // ============================================================
    // Constructor
    // ============================================================
    public ManufacturingPDFController() {
        accentColor  = ACCENT_COLOR;
        logoId       = LOGO_ID;
        companyName  = COMPANY_NAME;
        formattedDate = formatDate(Date.today());
        lineItems    = new List<LineItemRow>();
        hasLineItems = false;
        hasTerms     = false;
        hasDiscount  = false;
        hasTax       = false;
        termsHtml    = '';
        quoteName = repName = repPhone = '';
        accName = accStreet = accCityStateZip = accCountry = accPhone = '';
        validUntil = '';
        formattedSubtotal = formattedDiscount = formattedTax = formattedTotal = '$0.00';

        Map<String, String> params = ApexPages.currentPage().getParameters();
        quoteName = safe(params.get('quoteName'));
        String oppId = sanitizeId(params.get('opportunityId'));

        if (String.isNotBlank(oppId)) {
            loadOpportunity(oppId);
            loadLineItems(oppId);
        }
        String termsId = sanitizeId(params.get('selectedTerms'));
        if (String.isNotBlank(termsId)) {
            loadTerms(termsId);
        }
    }

    // ============================================================
    // Data Loading
    // ============================================================
    private void loadOpportunity(String oppId) {
        List<Opportunity> opps = [
            SELECT Id, Name, CloseDate,
                   Account.Name,
                   Account.BillingStreet,
                   Account.BillingCity,
                   Account.BillingState,
                   Account.BillingPostalCode,
                   Account.BillingCountry,
                   Account.Phone,
                   Owner.Name,
                   Owner.Phone
            FROM Opportunity
            WHERE Id = :oppId
            LIMIT 1
        ];
        if (opps.isEmpty()) return;
        Opportunity opp = opps[0];

        validUntil = opp.CloseDate != null ? formatDate(opp.CloseDate) : '';

        repName  = safe(opp.Owner.Name);
        repPhone = safe(opp.Owner.Phone);

        Account a = opp.Account;
        accName   = safe(a.Name);
        accStreet = safe(a.BillingStreet);
        String city = safe(a.BillingCity);
        String state = safe(a.BillingState);
        String zip   = safe(a.BillingPostalCode);
        accCityStateZip = city
            + (String.isNotBlank(state) ? ', ' + state : '')
            + (String.isNotBlank(zip)   ? ' '  + zip   : '');
        accCountry = safe(a.BillingCountry);
        accPhone   = safe(a.Phone);
    }

    private void loadLineItems(String oppId) {
        List<OpportunityLineItem> raw = [
            SELECT Id, Name, ProductCode, Description,
                   Quantity, ListPrice, UnitPrice, TotalPrice, Discount,
                   silkquote__Hide_On_PDF__c
            FROM OpportunityLineItem
            WHERE OpportunityId = :oppId
            ORDER BY SortOrder ASC NULLS LAST, Name ASC
        ];
        Decimal sub = 0, disc = 0;
        Integer n = 0;
        for (OpportunityLineItem item : raw) {
            if (item.silkquote__Hide_On_PDF__c == true) continue;
            n++;
            Decimal lineTotal = item.TotalPrice != null ? item.TotalPrice : 0;
            Decimal listTotal = (item.ListPrice != null ? item.ListPrice : 0)
                              * (item.Quantity  != null ? item.Quantity  : 0);
            sub  += lineTotal;
            disc += (listTotal - lineTotal);

            LineItemRow row = new LineItemRow();
            row.isEven        = Math.mod(n, 2) == 0;
            row.sku           = safe(item.ProductCode);
            row.name          = safe(item.Name);
            row.description   = safe(item.Description);
            row.hasDescription = String.isNotBlank(item.Description);
            row.qty           = formatQty(item.Quantity);
            row.listPrice     = formatCurrency(item.ListPrice);
            row.hasDiscount   = item.Discount != null && item.Discount > 0;
            row.discount      = row.hasDiscount ? formatQty(item.Discount) + '%' : '';
            row.unitPrice     = formatCurrency(item.UnitPrice);
            row.lineTotal     = formatCurrency(item.TotalPrice);
            lineItems.add(row);
        }
        hasLineItems = !lineItems.isEmpty();

        Decimal subtotalVal = sub.setScale(2, RoundingMode.HALF_UP);
        Decimal discountVal = (disc < 0 ? 0 : disc).setScale(2, RoundingMode.HALF_UP);
        Decimal taxVal      = 0; // ✏️ Add tax logic here if needed
        Decimal totalVal    = (subtotalVal - discountVal + taxVal).setScale(2, RoundingMode.HALF_UP);

        formattedSubtotal = formatCurrency(subtotalVal);
        formattedDiscount = formatCurrency(discountVal);
        formattedTax      = formatCurrency(taxVal);
        formattedTotal    = formatCurrency(totalVal);
        hasDiscount = discountVal > 0;
        hasTax      = taxVal > 0;
    }

    private void loadTerms(String termsId) {
        List<silkquote__Terms__c> termsList = [
            SELECT silkquote__Terms_Text_Body__c
            FROM silkquote__Terms__c
            WHERE Id = :termsId
            LIMIT 1
        ];
        if (!termsList.isEmpty() && String.isNotBlank(termsList[0].silkquote__Terms_Text_Body__c)) {
            hasTerms  = true;
            termsHtml = termsList[0].silkquote__Terms_Text_Body__c;
        }
    }

    // ============================================================
    // Utilities
    // ============================================================
    private static String safe(String val) {
        return val != null ? val : '';
    }

    private static String formatCurrency(Decimal val) {
        if (val == null) return '$0.00';
        Decimal v = val.setScale(2, RoundingMode.HALF_UP);
        String raw = String.valueOf(v.abs());
        Integer dot = raw.indexOf('.');
        String intPart = dot >= 0 ? raw.substring(0, dot) : raw;
        String decPart = dot >= 0 ? raw.substring(dot + 1) : '00';
        while (decPart.length() < 2) decPart += '0';
        if (decPart.length() > 2)   decPart = decPart.substring(0, 2);
        String result = '';
        Integer count = 0;
        for (Integer i = intPart.length() - 1; i >= 0; i--) {
            if (count > 0 && Math.mod(count, 3) == 0) result = ',' + result;
            result = intPart.substring(i, i + 1) + result;
            count++;
        }
        return (v < 0 ? '-' : '') + '$' + result + '.' + decPart;
    }

    private static String formatQty(Decimal val) {
        if (val == null) return '';
        Long whole = val.longValue();
        return (val == Decimal.valueOf(whole))
            ? String.valueOf(whole)
            : String.valueOf(val.setScale(2, RoundingMode.HALF_UP));
    }

    private static String formatDate(Date d) {
        if (d == null) return '';
        String[] months = new String[]{
            'January','February','March','April','May','June',
            'July','August','September','October','November','December'
        };
        return months[d.month() - 1] + ' ' + d.day() + ', ' + d.year();
    }

    private static String sanitizeId(String raw) {
        if (String.isBlank(raw)) return null;
        String clean = raw.trim().replaceAll('[^a-zA-Z0-9]', '');
        return (clean.length() == 15 || clean.length() == 18) ? clean : null;
    }
}

```

</div>
</details>

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Visualforce Page</span> SilkQuote_Manufacturing.page<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```
<apex:page controller="ManufacturingPDFController"
           renderAs="pdf"
           showHeader="false"
           sidebar="false"
           standardStylesheets="false"
           applyBodyTag="false"
           applyHtmlTag="false">
<html>
<head>
  <meta charset="UTF-8"/>
  <style>

    @page {
      size: letter;
      margin: 0 0.35in 0.6in 0;
    }

    body {
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      font-size: 11px;
      line-height: 18px;
      color: #1a1a1a;
      margin: 0;
      padding: 0;
    }

    /* ── Header band ─────────────────────────────────────────── */
    .doc-header {
      width: 100%;
      padding: 16pt 20pt;
      box-sizing: border-box;
    }

    .doc-header table {
      width: 100%;
      border-collapse: collapse;
    }

    .doc-header .doc-title {
      font-size: 15pt;
      font-weight: bold;
      letter-spacing: 1.5pt;
      text-transform: uppercase;
      color: #1B3A5C;
      text-align: right;
      line-height: 1.2;
    }

    .doc-header .doc-sub {
      font-size: 8pt;
      color: rgba(255,255,255,0.6);
      text-align: right;
      margin-top: 2pt;
      letter-spacing: 0.5pt;
    }

    /* ── Content area ────────────────────────────────────────── */
    .doc-body {
      padding: 14pt 4pt 20pt 20pt;
      box-sizing: border-box;
    }

    .section {
      margin-bottom: 14pt;
    }

    /* ── Address cards — Bill To / Ship To ───────────────────── */
    .addr-table {
      width: 100%;
      border-collapse: collapse;
    }

    .addr-box {
      border: 1pt solid #b0bec8;
      vertical-align: top;
    }

    .addr-box-header {
      background-color: #1B3A5C;
      color: #ffffff;
      font-size: 7.5pt;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 1pt;
      padding: 4pt 10pt;
    }

    .addr-box-body {
      padding: 8pt 10pt;
      font-size: 10pt;
      line-height: 17px;
      color: #1a1a1a;
    }

    .addr-box-body .addr-name {
      font-weight: bold;
      margin-bottom: 2pt;
    }

    .addr-box-body .addr-line {
      color: #444;
    }

    /* ── Quote reference bar ─────────────────────────────────── */
    .ref-table-wrap {
      border: 1pt solid #b0bec8;
      margin-bottom: 14pt;
    }

    .ref-table {
      width: 100%;
      border-collapse: collapse;
      font-size: 9.5pt;
    }

    .ref-table th {
      background-color: #2E86C1;
      color: #ffffff;
      font-size: 7.5pt;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 0.8pt;
      padding: 5pt 10pt;
      text-align: left;
      border-right: 1pt solid #5aa8d8;
    }

    .ref-table td {
      padding: 6pt 10pt;
      border-right: 1pt solid #b0bec8;
      vertical-align: top;
    }

    .ref-table th:last-child,
    .ref-table td:last-child {
      border-right: none;
    }

    /* ── Section header bar ──────────────────────────────────── */
    .section-header {
      background-color: #1B3A5C;
      color: #ffffff;
      font-size: 8pt;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 1pt;
      padding: 5pt 8pt;
      margin-bottom: 0;
    }

    /* ── Line items table ────────────────────────────────────── */
    .items-table-wrap {
      border: 1pt solid #b0bec8;
    }

    .items-table {
      width: 100%;
      border-collapse: collapse;
      font-size: 9.5pt;
    }

    .items-table th {
      background-color: #2E86C1;
      color: #ffffff;
      font-size: 8pt;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 0.5pt;
      padding: 6pt 8pt;
      text-align: left;
      border-right: 1pt solid #5aa8d8;
    }

    .items-table th.right { text-align: right; }

    .items-table th:last-child { border-right: none; }

    .items-table td {
      padding: 6pt 8pt;
      border-bottom: 1pt solid #d0dae4;
      border-right: 1pt solid #d0dae4;
      vertical-align: top;
      color: #1a1a1a;
    }

    .items-table td.right { text-align: right; }

    .items-table td:last-child { border-right: none; }

    .items-table .even td { background-color: #f4f8fc; }

    .item-name { font-weight: bold; }
    .item-sku  { font-size: 8pt; color: #666; margin-bottom: 2pt; }
    .item-desc { font-size: 8.5pt; color: #666; margin-top: 2pt; }
    .item-disc { font-size: 8pt; color: #888; }

    /* ── Totals ──────────────────────────────────────────────── */
    .totals-wrap {
      width: 46%;
      margin-left: auto;
    }

    .totals-table {
      width: 100%;
      border-collapse: collapse;
      border: 1pt solid #b0bec8;
      font-size: 9.5pt;
    }

    .totals-table td {
      padding: 5pt 10pt;
      border-bottom: 1pt solid #d0dae4;
    }

    .totals-table .t-label { color: #444; }
    .totals-table .t-value { text-align: right; font-weight: bold; }

    .totals-table .total-row td {
      background-color: #1B3A5C;
      color: #ffffff;
      font-size: 10.5pt;
      font-weight: bold;
      border-bottom: none;
      padding: 7pt 10pt;
    }

    /* ── Footer ──────────────────────────────────────────────── */
    .doc-footer {
      position: fixed;
      bottom: 0;
      left: 0;
      right: 0;
      padding: 5pt 20pt;
      font-size: 7.5pt;
      border-top: 0.5pt solid #b0bec8;
      background: #ffffff;
      color: #666;
    }

    .doc-footer table {
      width: 100%;
      border-collapse: collapse;
    }

    /* ── Terms page ──────────────────────────────────────────── */
    .terms-page {
      page-break-before: always;
      padding: 20pt;
    }

    .terms-title {
      font-size: 14pt;
      font-weight: bold;
      color: #1a1a1a;
      margin-bottom: 16pt;
      text-align: center;
    }

    .terms-content {
      font-size: 10px;
      line-height: 18px;
      color: #444;
      white-space: pre-line;
      word-wrap: break-word;
    }

  </style>
</head>
<body>

  <!-- ══════════════════════════════════════════════════════════
       HEADER BAND
  ══════════════════════════════════════════════════════════ -->
  <div class="doc-header">
    <table>
      <tr>
        <td style="vertical-align:middle;width:50%;">
          <apex:outputPanel rendered="{!NOT(ISBLANK(logoId))}">
            <img src="/servlet/servlet.FileDownload?file={!URLENCODE(logoId)}"
                 style="max-height:40pt; max-width:150pt;" alt="Logo"/>
          </apex:outputPanel>
          <apex:outputPanel rendered="{!ISBLANK(logoId)}">
            <div style="font-size:14pt;font-weight:bold;color:#1B3A5C;letter-spacing:0.5pt;">{!companyName}</div>
          </apex:outputPanel>
        </td>
        <td style="vertical-align:middle;text-align:right;width:46%;">
          <!-- ✏️ CUSTOMIZE: Change document title here -->
          <div class="doc-title">Purchase Quotation</div>
        </td>
        <td style="width:4%;"></td>
      </tr>
    </table>
  </div>

  <div class="doc-body">

    <!-- ══════════════════════════════════════════════════════
         BILL TO / SHIP TO — bordered address cards
    ══════════════════════════════════════════════════════ -->
    <div class="section">
      <table class="addr-table">
        <tr>
          <td style="width:48%;" class="addr-box">
            <div class="addr-box-header">Bill To</div>
            <div class="addr-box-body">
              <div class="addr-name">{!accName}</div>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accStreet))}">
                <div class="addr-line">{!accStreet}</div>
              </apex:outputPanel>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accCityStateZip))}">
                <div class="addr-line">{!accCityStateZip}</div>
              </apex:outputPanel>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accCountry))}">
                <div class="addr-line">{!accCountry}</div>
              </apex:outputPanel>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accPhone))}">
                <div class="addr-line" style="margin-top:3pt;">{!accPhone}</div>
              </apex:outputPanel>
            </div>
          </td>
          <td style="width:4%;"></td>
          <td style="width:48%;" class="addr-box">
            <div class="addr-box-header">Ship To</div>
            <div class="addr-box-body">
              <div class="addr-name">{!accName}</div>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accStreet))}">
                <div class="addr-line">{!accStreet}</div>
              </apex:outputPanel>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accCityStateZip))}">
                <div class="addr-line">{!accCityStateZip}</div>
              </apex:outputPanel>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accCountry))}">
                <div class="addr-line">{!accCountry}</div>
              </apex:outputPanel>
              <apex:outputPanel rendered="{!NOT(ISBLANK(accPhone))}">
                <div class="addr-line" style="margin-top:3pt;">{!accPhone}</div>
              </apex:outputPanel>
            </div>
          </td>
        </tr>
      </table>
    </div>

    <!-- ══════════════════════════════════════════════════════
         QUOTE REFERENCE BAR
    ══════════════════════════════════════════════════════ -->
    <div class="section">
      <div class="ref-table-wrap">
      <table class="ref-table">
        <thead>
          <tr>
            <th style="width:25%;">Quote Name</th>
            <th style="width:20%;">Date</th>
            <th style="width:20%;">Valid Until</th>
            <th style="width:17.5%;">Sales Rep</th>
            <th style="width:17.5%;">Rep Phone</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>{!quoteName}</td>
            <td>{!formattedDate}</td>
            <td>{!validUntil}</td>
            <td>{!repName}</td>
            <td>{!repPhone}</td>
          </tr>
        </tbody>
      </table>
      </div>
    </div>

    <!-- ══════════════════════════════════════════════════════
         PRODUCTS
    ══════════════════════════════════════════════════════ -->
    <div class="section">
      <div class="section-header">Products</div>
      <apex:outputPanel rendered="{!hasLineItems}">
        <div class="items-table-wrap">
        <table class="items-table">
          <thead>
            <tr>
              <th style="width:12%;">SKU</th>
              <th>Product</th>
              <th class="right" style="width:8%;">Qty</th>
              <th class="right" style="width:13%;">List Price</th>
              <th class="right" style="width:10%;">Discount</th>
              <th class="right" style="width:13%;">Unit Price</th>
              <th class="right" style="width:13%;">Total</th>
            </tr>
          </thead>
          <tbody>
            <apex:repeat value="{!lineItems}" var="row">
              <tr class="{!IF(row.isEven, 'even', '')}">
                <td style="font-size:8.5pt;">{!row.sku}</td>
                <td>
                  <div class="item-name">{!row.name}</div>
                  <apex:outputPanel rendered="{!row.hasDescription}">
                    <div class="item-desc">{!row.description}</div>
                  </apex:outputPanel>
                </td>
                <td class="right">{!row.qty}</td>
                <td class="right">{!row.listPrice}</td>
                <td class="right">
                  <apex:outputPanel rendered="{!row.hasDiscount}">
                    <span class="item-disc">{!row.discount}</span>
                  </apex:outputPanel>
                </td>
                <td class="right">{!row.unitPrice}</td>
                <td class="right">{!row.lineTotal}</td>
              </tr>
            </apex:repeat>
          </tbody>
        </table>
        </div>
      </apex:outputPanel>
      <apex:outputPanel rendered="{!NOT(hasLineItems)}">
        <p style="color:#aaa;font-size:10pt;padding:8pt 0;">No products listed.</p>
      </apex:outputPanel>
    </div>

    <!-- ══════════════════════════════════════════════════════
         TOTALS
    ══════════════════════════════════════════════════════ -->
    <div class="section">
      <div class="totals-wrap">
        <table class="totals-table">
          <tr>
            <td class="t-label">Subtotal</td>
            <td class="t-value">{!formattedSubtotal}</td>
          </tr>
          <apex:outputPanel rendered="{!hasDiscount}" layout="none">
            <tr>
              <td class="t-label">Discount</td>
              <td class="t-value">({!formattedDiscount})</td>
            </tr>
          </apex:outputPanel>
          <apex:outputPanel rendered="{!hasTax}" layout="none">
            <tr>
              <td class="t-label">Tax</td>
              <td class="t-value">{!formattedTax}</td>
            </tr>
          </apex:outputPanel>
          <tr class="total-row">
            <td>Total Due</td>
            <td style="text-align:right;font-weight:bold;">{!formattedTotal}</td>
          </tr>
        </table>
      </div>
    </div>

  </div><!-- end doc-body -->

  <!-- ══════════════════════════════════════════════════════════
       FIXED FOOTER
  ══════════════════════════════════════════════════════════ -->
  <div class="doc-footer">
    <table>
      <tr>
        <td style="text-align:left;">{!accName}</td>
        <td style="text-align:right;white-space:nowrap;">{!quoteName} &nbsp;|&nbsp; {!formattedDate}</td>
      </tr>
    </table>
  </div>

<!-- ══════════════════════════════════════════════════════════
     TERMS &amp; CONDITIONS — new page
══════════════════════════════════════════════════════════ -->
<apex:outputPanel rendered="{!hasTerms}">
  <div class="terms-page">
    <div class="terms-title">Terms &amp; Conditions</div>
    <div class="terms-content">
      <apex:outputText value="{!termsHtml}" escape="false"/>
    </div>
  </div>
</apex:outputPanel>

</body>
</html>
</apex:page>

```

</div>
</details>

<style>
/* Template preview image */
.template-preview {
  position: relative;
  display: inline-block;
  width: 100%;
  border: 1px solid var(--border-color);
  border-radius: var(--border-radius-large);
  overflow: hidden;
  margin: 1rem 0 1.5rem;
  cursor: zoom-in;
}
.template-preview__img {
  display: block;
  width: 100%;
  height: auto;
}
.template-preview__expand {
  position: absolute;
  bottom: 0.75rem;
  right: 0.75rem;
  display: flex;
  align-items: center;
  gap: 0.35rem;
  padding: 0.35rem 0.7rem;
  font-size: 0.75rem;
  font-weight: 600;
  background: rgba(0,0,0,0.55);
  color: #fff;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  backdrop-filter: blur(6px);
}
.template-preview__overlay {
  display: none;
  position: fixed;
  inset: 0;
  background: rgba(0,0,0,0.85);
  z-index: 9999;
  align-items: center;
  justify-content: center;
  cursor: zoom-out;
  padding: 2rem;
  box-sizing: border-box;
}
.template-preview__overlay.open {
  display: flex;
}
.template-preview__overlay img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
  border-radius: 4px;
  box-shadow: 0 8px 48px rgba(0,0,0,0.6);
}

/* Code accordions */
.code-accordion {
  border: 1px solid var(--border-color);
  border-radius: var(--border-radius);
  margin: 1.25rem 0;
  overflow: hidden;
}
.code-accordion__summary {
  display: flex;
  align-items: center;
  gap: 0.6rem;
  padding: 0.75rem 1rem;
  cursor: pointer;
  font-size: 0.875rem;
  font-weight: 500;
  color: var(--text-color);
  list-style: none;
  user-select: none;
}
.code-accordion__summary::-webkit-details-marker { display: none; }
.code-accordion__label {
  font-size: 0.7rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.07em;
  padding: 0.15rem 0.5rem;
  border-radius: 4px;
  background: var(--background-alt-color);
  color: var(--text-muted);
  white-space: nowrap;
}
.code-accordion[open] > .code-accordion__summary {
  border-bottom: 1px solid var(--border-color);
}
.code-accordion__body > pre {
  margin: 0;
  border-radius: 0;
  border: none;
}
.code-accordion__copy {
  display: inline-flex;
  align-items: center;
  gap: 0.3rem;
  margin-left: auto;
  padding: 0.25rem 0.6rem;
  font-size: 0.72rem;
  font-weight: 600;
  color: var(--text-muted);
  background: var(--background-alt-color);
  border: 1px solid var(--border-color);
  border-radius: 4px;
  cursor: pointer;
  flex-shrink: 0;
  transition: color 0.15s, border-color 0.15s;
}
.code-accordion__copy:hover {
  color: var(--text-color);
  border-color: var(--border-second-color);
}
.code-accordion__copy.copied {
  color: var(--green);
  border-color: var(--green);
}

.faq-section { margin-top: 2rem;}
</style>
<script>
function copyAccordionCode(btn) {
  var accordion = btn.closest('.code-accordion');
  var codeEl = accordion.querySelector('pre code') || accordion.querySelector('pre');
  if (!codeEl) return;
  var text = codeEl.textContent;

  function onSuccess() {
    var span = btn.querySelector('span');
    span.textContent = 'Copied!';
    btn.classList.add('copied');
    setTimeout(function() {
      span.textContent = 'Copy';
      btn.classList.remove('copied');
    }, 2000);
  }

  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(text).then(onSuccess).catch(function() { fallbackCopy(text, onSuccess); });
  } else {
    fallbackCopy(text, onSuccess);
  }
}

function fallbackCopy(text, callback) {
  var ta = document.createElement('textarea');
  ta.value = text;
  ta.style.cssText = 'position:fixed;top:0;left:0;opacity:0;pointer-events:none';
  document.body.appendChild(ta);
  ta.focus();
  ta.select();
  try { document.execCommand('copy'); callback(); } catch(e) {}
  document.body.removeChild(ta);
}
</script>
<style>
.faq-section .faq-label { font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.1em; color: var(--text-muted); margin-bottom: 1.25rem; }
.faq-section h5 { font-size: 14px; font-weight: 600; color: var(--text-muted); margin-bottom: 0.25rem; }
.faq-section p { font-size: 14px; color: var(--text-secondary); }
</style>
---
<div class="faq-section" markdown="1">
<p class="faq-label">Frequently Asked Questions</p>

##### How do I create a bill of materials quote in Salesforce?

Salesforce doesn't generate BOM-style quotes natively, but SilkQuote does. Once installed, you configure a manufacturing template with part number, description, quantity, unit price, extended total, and lead time columns — then generate a formatted PDF from any Opportunity with one click.

##### Can Salesforce generate a PDF purchase quote with part numbers?

Yes, with SilkQuote. SilkQuote reads your Opportunity Products and formats them into a professional PDF quote that includes part numbers, quantities, pricing, lead times, and payment terms. No spreadsheet, no copy-pasting.

##### What Salesforce quoting tools work for manufacturers without CPQ?

SilkQuote is built for exactly this use case. It works with standard Salesforce Opportunities and Products — no CPQ license required. Install it from AppExchange, configure your BOM-style template once, and your team can generate quotes directly from Salesforce.

##### How do I include freight and payment terms on a Salesforce quote?

SilkQuote's template editor includes dedicated sections for freight and shipping terms (FOB point, carrier, prepaid/collect) and payment terms (Net 30, deposit requirements, progress billing). These appear as structured sections in the PDF below the line items.
</div>

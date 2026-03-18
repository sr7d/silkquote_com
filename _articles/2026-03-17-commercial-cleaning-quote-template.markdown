---
layout: post
title: "Commercial Cleaning Quote Template: Free for Salesforce"
seo_title: "Cleaning Quote Template: Free for Salesforce"
description: "Free commercial cleaning quote template for Salesforce. Include service types, frequency, square footage, and contract terms. Generate PDF quotes in one click."
date: 2026-03-17 09:30:00 +0000
last_modified_at: 2026-03-17 00:00:00 +0000
author: admin
tags: [templates]
permalink: /commercial-cleaning-quote-template/
faq:
  - question: "Can I use this cleaning quote template without Salesforce CPQ?"
    answer: "Yes. SilkQuote works with standard Salesforce products and pricebooks. No CPQ is required. Set up your cleaning services as Products in Salesforce, add them to Opportunities, and SilkQuote generates the branded PDF quote from the Opportunity data."
  - question: "Can the template handle both recurring and one-time services?"
    answer: "Yes. You can configure a conditional section in SilkQuote that appears only for new contracts (where a one-time setup fee applies) and is hidden for renewals. Line items for recurring and one-time services can be grouped separately with subtotals for each category."
  - question: "What fields does a cleaning quote template typically map?"
    answer: "A commercial cleaning quote template commonly maps Property Address, Square Footage, Service Frequency, Contract Start Date, and Payment Terms from the Opportunity record. These are stored as custom fields on the Opportunity object and mapped into the template header or a property details section."
  - question: "How do cleaning companies share quotes with prospects?"
    answer: "SilkQuote generates a hosted quote link that the prospect can view in a browser and accept with a click. The acceptance is logged to the Opportunity in Salesforce with a timestamp. You can also download the PDF and attach it to an email if the prospect prefers a traditional delivery method."
  - question: "Which Salesforce editions does SilkQuote support?"
    answer: "SilkQuote works with Salesforce Professional Edition and above. Most cleaning companies using Salesforce run Professional Edition, so no edition upgrade is required."
---

## Commercial Cleaning Quote Template

A professional janitorial quote signals organized, reliable service before work ever begins. The template below covers recurring services, property details, contract terms, and a conditional one-time setup section that hides automatically on renewal quotes. Copy and customize it, or generate it automatically from Salesforce with SilkQuote.

## How It Works

1. **Copy the HTML body below** and customize it: replace the placeholder company details, service list, and pricing with your own
2. **Paste it into SilkQuote** as the template body — SilkQuote uses this HTML as the document body for every quote generated from this template
3. **Add merge fields** to any section and SilkQuote will automatically pull live values from the corresponding Salesforce objects — Opportunity, Account, Opportunity Products, or any custom field — when the quote is generated
4. Works on **Salesforce Professional Edition** and above — no CPQ required

## Commercial Cleaning Quote Template

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Template</span> Commercial Cleaning Quote — HTML Body<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2" ry="2"></rect><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"></path></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">
```html
<body style="margin:0;padding:0;background:#f4f5f7;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;">
<table width="100%" cellpadding="0" cellspacing="0" style="background:#f4f5f7;padding:32px 16px;">
<tr><td align="center">
<table width="680" cellpadding="0" cellspacing="0" style="background:#ffffff;border-radius:6px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.08);">

  <!-- HEADER -->
  <tr>
    <td style="background:#0d5c6b;padding:32px 36px 24px;">
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <div style="font-size:22px;font-weight:700;color:#ffffff;letter-spacing:-0.3px;">Brightline Commercial Cleaning</div>
            <div style="font-size:12px;color:rgba(255,255,255,0.75);margin-top:4px;">Licensed &amp; Insured &nbsp;|&nbsp; ABN 00 000 000 000</div>
            <div style="font-size:12px;color:rgba(255,255,255,0.75);margin-top:2px;">123 Industry Drive, Suite 4, Citytown NSW 2000</div>
            <div style="font-size:12px;color:rgba(255,255,255,0.75);margin-top:2px;">P: (02) 0000 0000 &nbsp;|&nbsp; E: quotes@brightlinecleaning.com</div>
          </td>
          <td align="right" valign="top">
            <div style="font-size:28px;font-weight:700;color:rgba(255,255,255,0.25);letter-spacing:-1px;text-transform:uppercase;">QUOTE</div>
          </td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- QUOTE META -->
  <tr>
    <td style="padding:0 36px;">
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td width="25%" style="background:#1a7a8a;padding:10px 14px;border-right:2px solid #ffffff;">
            <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:rgba(255,255,255,0.7);">Quote Number</div>
            <div style="font-size:14px;font-weight:600;color:#ffffff;margin-top:3px;">CLN-2026-0041</div>
          </td>
          <td width="25%" style="background:#1a7a8a;padding:10px 14px;border-right:2px solid #ffffff;">
            <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:rgba(255,255,255,0.7);">Quote Date</div>
            <div style="font-size:14px;font-weight:600;color:#ffffff;margin-top:3px;">17 March 2026</div>
          </td>
          <td width="25%" style="background:#1a7a8a;padding:10px 14px;border-right:2px solid #ffffff;">
            <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:rgba(255,255,255,0.7);">Valid Until</div>
            <div style="font-size:14px;font-weight:600;color:#ffffff;margin-top:3px;">16 April 2026</div>
          </td>
          <td width="25%" style="background:#1a7a8a;padding:10px 14px;">
            <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:rgba(255,255,255,0.7);">Prepared By</div>
            <div style="font-size:14px;font-weight:600;color:#ffffff;margin-top:3px;">Account Manager Name</div>
          </td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- CUSTOMER / PROPERTY ADDRESS -->
  <tr>
    <td style="padding:24px 36px 0;">
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td width="50%" valign="top" style="padding-right:16px;">
            <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:10px;">Customer</div>
            <div style="font-size:14px;font-weight:700;color:#1a1a2e;">Metro Facilities Group</div>
            <div style="font-size:13px;color:#444;margin-top:3px;">Facilities Manager: Jane Smith</div>
            <div style="font-size:13px;color:#444;margin-top:2px;">jane.smith@metrofacilities.com</div>
            <div style="font-size:13px;color:#444;margin-top:2px;">(03) 0000 0000</div>
            <div style="font-size:13px;color:#444;margin-top:2px;">PO Box 100, Citytown VIC 3000</div>
          </td>
          <td width="50%" valign="top" style="padding-left:16px;border-left:1px solid #e8eaed;">
            <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:10px;">Service Address</div>
            <div style="font-size:14px;font-weight:700;color:#1a1a2e;">Metro Corporate Centre</div>
            <div style="font-size:13px;color:#444;margin-top:3px;">Level 4, 250 Collins Street</div>
            <div style="font-size:13px;color:#444;margin-top:2px;">Melbourne VIC 3000</div>
            <div style="font-size:13px;color:#444;margin-top:6px;">Building Access: Security desk, Level B1</div>
          </td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- PROPERTY DETAILS -->
  <tr>
    <td style="padding:20px 36px 0;">
      <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:12px;">Property Details</div>
      <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #e8eaed;border-radius:4px;overflow:hidden;">
        <tr style="background:#f9fafb;">
          <td style="padding:8px 14px;font-size:12px;font-weight:600;color:#555;border-bottom:1px solid #e8eaed;width:35%;">Total Area</td>
          <td style="padding:8px 14px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;">15,000 sq ft (1,394 sqm)</td>
        </tr>
        <tr>
          <td style="padding:8px 14px;font-size:12px;font-weight:600;color:#555;border-bottom:1px solid #e8eaed;">Primary Contact</td>
          <td style="padding:8px 14px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;">Jane Smith, Facilities Manager</td>
        </tr>
        <tr style="background:#f9fafb;">
          <td style="padding:8px 14px;font-size:12px;font-weight:600;color:#555;border-bottom:1px solid #e8eaed;">Contract Start Date</td>
          <td style="padding:8px 14px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;">1 May 2026</td>
        </tr>
        <tr>
          <td style="padding:8px 14px;font-size:12px;font-weight:600;color:#555;border-bottom:1px solid #e8eaed;">Contract Term</td>
          <td style="padding:8px 14px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;">12 months, renewing annually unless terminated with 30 days notice</td>
        </tr>
        <tr style="background:#f9fafb;">
          <td style="padding:8px 14px;font-size:12px;font-weight:600;color:#555;">Payment Terms</td>
          <td style="padding:8px 14px;font-size:13px;color:#1a1a2e;">Net 14 days from invoice</td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- SCOPE OF SERVICES -->
  <tr>
    <td style="padding:20px 36px 0;">
      <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:12px;">Scope of Services</div>
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td width="50%" valign="top" style="padding-right:16px;">
            <div style="font-size:12px;font-weight:700;color:#333;margin-bottom:6px;">Included Services</div>
            <ul style="margin:0;padding-left:18px;font-size:13px;color:#444;line-height:1.7;">
              <li>Nightly janitorial: restrooms, common areas, offices</li>
              <li>Kitchen and break room cleaning (nightly)</li>
              <li>Rubbish removal and liner replacement</li>
              <li>Monthly deep clean: baseboards, vents, full scrub</li>
              <li>Quarterly floor care: strip, wax, and buff</li>
              <li>Bi-annual ground-floor exterior window cleaning</li>
              <li>Vendor-supplied consumables: hand soap, paper products, bin liners</li>
            </ul>
          </td>
          <td width="50%" valign="top" style="padding-left:16px;border-left:1px solid #e8eaed;">
            <div style="font-size:12px;font-weight:700;color:#333;margin-bottom:6px;">Excluded Items</div>
            <ul style="margin:0;padding-left:18px;font-size:13px;color:#444;line-height:1.7;">
              <li>Biohazard or hazardous material remediation</li>
              <li>Upper-floor exterior window cleaning (above Level 1)</li>
              <li>Specialized server room or data centre cleaning</li>
              <li>Carpet shampooing (available as add-on service)</li>
              <li>After-hours event cleaning</li>
              <li>Pest control</li>
            </ul>
          </td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- RECURRING SERVICES -->
  <tr>
    <td style="padding:20px 36px 0;">
      <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:0;">Recurring Services</div>
      <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #e8eaed;border-radius:0 0 4px 4px;overflow:hidden;">
        <tr style="background:#0d5c6b;">
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:left;text-transform:uppercase;letter-spacing:0.05em;">Service</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:left;text-transform:uppercase;letter-spacing:0.05em;">Frequency</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:center;text-transform:uppercase;letter-spacing:0.05em;">Unit</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:right;text-transform:uppercase;letter-spacing:0.05em;">Rate</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:right;text-transform:uppercase;letter-spacing:0.05em;">Monthly Total</th>
        </tr>
        <tr style="background:#ffffff;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Janitorial cleaning (restrooms, common areas, offices)</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">5x/week</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">per visit</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$285.00</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$6,175.00</td>
        </tr>
        <tr style="background:#f9fafb;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Kitchen and break room cleaning</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">5x/week</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">included</td>
          <td style="padding:9px 12px;font-size:13px;color:#888;border-bottom:1px solid #f0f0f0;text-align:right;">n/a</td>
          <td style="padding:9px 12px;font-size:13px;color:#888;border-bottom:1px solid #f0f0f0;text-align:right;">n/a</td>
        </tr>
        <tr style="background:#ffffff;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Monthly deep clean (baseboards, vents, full scrub)</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">1x/month</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">flat</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$680.00</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$680.00</td>
        </tr>
        <tr style="background:#f9fafb;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Floor care: strip and wax</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">Quarterly</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">per service</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$1,200.00</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$400.00</td>
        </tr>
        <tr style="background:#ffffff;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Exterior window cleaning (ground floor)</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">2x/year</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">per service</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$850.00</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$141.67</td>
        </tr>
        <tr style="background:#f9fafb;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Consumables (hand soap, paper products, bin liners)</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">Ongoing</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">flat</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$220.00</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$220.00</td>
        </tr>
        <tr style="background:#ffffff;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;">Contract management fee</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #e8eaed;">Monthly</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #e8eaed;text-align:center;">flat</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;text-align:right;">$95.00</td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;text-align:right;">$95.00</td>
        </tr>
        <tr style="background:#0d5c6b;">
          <td colspan="4" style="padding:10px 12px;font-size:13px;font-weight:700;color:#ffffff;">Monthly Recurring Total</td>
          <td style="padding:10px 12px;font-size:15px;font-weight:700;color:#ffffff;text-align:right;">$7,711.67</td>
        </tr>
        <tr style="background:#1a7a8a;">
          <td colspan="4" style="padding:10px 12px;font-size:13px;font-weight:700;color:#ffffff;">Annual Contract Value</td>
          <td style="padding:10px 12px;font-size:15px;font-weight:700;color:#ffffff;text-align:right;">$92,540.04</td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- ONE-TIME SERVICES -->
  <!-- NOTE: Remove this section for renewal quotes -->
  <tr>
    <td style="padding:20px 36px 0;">
      <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:0;">One-time Services (New Contracts Only)</div>
      <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #e8eaed;border-radius:0 0 4px 4px;overflow:hidden;">
        <tr style="background:#1a7a8a;">
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:left;text-transform:uppercase;letter-spacing:0.05em;">Service</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:left;text-transform:uppercase;letter-spacing:0.05em;">Timing</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:center;text-transform:uppercase;letter-spacing:0.05em;">Unit</th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:right;text-transform:uppercase;letter-spacing:0.05em;"></th>
          <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:right;text-transform:uppercase;letter-spacing:0.05em;">Amount</th>
        </tr>
        <tr style="background:#f9fafb;">
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;">Initial setup, onboarding, and site inspection</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #e8eaed;">At contract signing</td>
          <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #e8eaed;text-align:center;">flat</td>
          <td style="padding:9px 12px;border-bottom:1px solid #e8eaed;"></td>
          <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #e8eaed;text-align:right;">$450.00</td>
        </tr>
        <tr style="background:#0d5c6b;">
          <td colspan="4" style="padding:10px 12px;font-size:13px;font-weight:700;color:#ffffff;">One-time Total</td>
          <td style="padding:10px 12px;font-size:15px;font-weight:700;color:#ffffff;text-align:right;">$450.00</td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- TERMS AND CONDITIONS -->
  <tr>
    <td style="padding:20px 36px 0;">
      <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:12px;">Terms and Conditions</div>
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td style="font-size:12px;color:#555;line-height:1.7;">
            <p style="margin:0 0 6px;"><strong style="color:#333;">Service Standards.</strong> All services are performed by trained, uniformed, and police-checked staff in accordance with the agreed schedule and scope listed above. Service quality issues must be reported within 24 hours for remedy.</p>
            <p style="margin:0 0 6px;"><strong style="color:#333;">Access Requirements.</strong> The client is responsible for providing safe, unobstructed access to all service areas on scheduled service days. Access code or key arrangements are confirmed at contract commencement.</p>
            <p style="margin:0 0 6px;"><strong style="color:#333;">Consumables.</strong> Vendor-supplied consumables are included as listed in the scope. Quantities are based on estimated usage for the stated area. Excess consumption due to events or increased occupancy may be invoiced separately with prior written notice.</p>
            <p style="margin:0 0 6px;"><strong style="color:#333;">Payment.</strong> Invoices are issued monthly in advance and are due within 14 days. Overdue accounts attract a late fee of 1.5% per month. Services may be suspended for accounts overdue by more than 30 days.</p>
            <p style="margin:0 0 6px;"><strong style="color:#333;">Cancellation.</strong> Either party may terminate with 30 days written notice. Early termination within a 12-month term by the client is subject to a cancellation fee equal to one month's recurring service value.</p>
            <p style="margin:0;"><strong style="color:#333;">Liability.</strong> The contractor's liability is limited to the monthly contract value. The contractor is not liable for pre-existing damage, normal wear, or losses arising from client access failures.</p>
          </td>
        </tr>
      </table>
    </td>
  </tr>

  <!-- ACCEPTANCE -->
  <tr>
    <td style="padding:24px 36px 32px;">
      <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:16px;">Acceptance</div>
      <p style="margin:0 0 16px;font-size:13px;color:#555;line-height:1.6;">By signing below, you accept the scope, pricing, and terms set out in this quote and authorize commencement of services on the agreed start date.</p>
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td width="48%" style="padding-right:10px;">
            <div style="border-bottom:1px solid #ccc;padding-bottom:4px;margin-bottom:4px;min-height:28px;"></div>
            <div style="font-size:11px;color:#888;">Authorized Name</div>
          </td>
          <td width="4%"></td>
          <td width="48%" style="padding-left:10px;">
            <div style="border-bottom:1px solid #ccc;padding-bottom:4px;margin-bottom:4px;min-height:28px;"></div>
            <div style="font-size:11px;color:#888;">Title / Position</div>
          </td>
        </tr>
        <tr><td colspan="3" style="padding:12px 0 0;"></td></tr>
        <tr>
          <td width="48%" style="padding-right:10px;">
            <div style="border-bottom:1px solid #ccc;padding-bottom:4px;margin-bottom:4px;min-height:28px;"></div>
            <div style="font-size:11px;color:#888;">Signature</div>
          </td>
          <td width="4%"></td>
          <td width="48%" style="padding-left:10px;">
            <div style="border-bottom:1px solid #ccc;padding-bottom:4px;margin-bottom:4px;min-height:28px;"></div>
            <div style="font-size:11px;color:#888;">Date</div>
          </td>
        </tr>
      </table>
    </td>
  </tr>

</table>
</td></tr>
</table>
</body>
```
</div>
</details>

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Add-on</span> Commercial Add-On — Multi-Site Schedule<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2" ry="2"></rect><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"></path></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">
```html
<!-- MULTI-SITE SCHEDULE — Insert after Recurring Services section for multi-location accounts -->
<tr>
  <td style="padding:20px 36px 0;">
    <div style="font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:0.07em;color:#0d5c6b;border-bottom:2px solid #0d5c6b;padding-bottom:4px;margin-bottom:0;">Multi-Site Service Schedule</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #e8eaed;border-radius:0 0 4px 4px;overflow:hidden;">
      <tr style="background:#0d5c6b;">
        <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:left;text-transform:uppercase;letter-spacing:0.05em;">Site Name</th>
        <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:left;text-transform:uppercase;letter-spacing:0.05em;">Address</th>
        <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:center;text-transform:uppercase;letter-spacing:0.05em;">Area (sq ft)</th>
        <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:center;text-transform:uppercase;letter-spacing:0.05em;">Frequency</th>
        <th style="padding:9px 12px;font-size:11px;font-weight:700;color:#ffffff;text-align:right;text-transform:uppercase;letter-spacing:0.05em;">Monthly Rate</th>
      </tr>
      <tr style="background:#ffffff;">
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Head Office</td>
        <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">250 Collins St, Melbourne VIC</td>
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:center;">15,000</td>
        <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">5x/week</td>
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$7,711.67</td>
      </tr>
      <tr style="background:#f9fafb;">
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Warehouse A</td>
        <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">8 Distribution Rd, Laverton VIC</td>
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:center;">22,000</td>
        <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">3x/week</td>
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$5,200.00</td>
      </tr>
      <tr style="background:#ffffff;">
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;">Retail Fitout — Southbank</td>
        <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;">Shop 4, 12 Riverside Blvd, Southbank VIC</td>
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:center;">3,200</td>
        <td style="padding:9px 12px;font-size:13px;color:#444;border-bottom:1px solid #f0f0f0;text-align:center;">7x/week</td>
        <td style="padding:9px 12px;font-size:13px;color:#1a1a2e;border-bottom:1px solid #f0f0f0;text-align:right;">$2,480.00</td>
      </tr>
      <tr style="background:#0d5c6b;">
        <td colspan="4" style="padding:10px 12px;font-size:13px;font-weight:700;color:#ffffff;">Combined Monthly Contract Value</td>
        <td style="padding:10px 12px;font-size:15px;font-weight:700;color:#ffffff;text-align:right;">$15,391.67</td>
      </tr>
      <tr style="background:#1a7a8a;">
        <td colspan="4" style="padding:10px 12px;font-size:13px;font-weight:700;color:#ffffff;">Combined Annual Contract Value</td>
        <td style="padding:10px 12px;font-size:15px;font-weight:700;color:#ffffff;text-align:right;">$184,700.04</td>
      </tr>
    </table>
  </td>
</tr>
```
</div>
</details>

## What Each Section Does

**Header and quote meta.** Company name, license, and contact details in the header ensure the quote is immediately attributable. The four-cell meta block (Quote Number, Date, Valid Until, Prepared By) gives the prospect and your team a clear reference for follow-up.

**Property details.** Mapping property address, total area, and contract start date into the quote confirms the pricing reflects the actual site. It prevents renegotiation attempts when coverage or pricing is questioned later.

**Scope of services.** The included/excluded two-column layout sets clear boundaries. Listing exclusions explicitly (biohazard cleanup, upper-floor windows, server rooms) protects the contract value against scope creep.

**Recurring services table.** The five-column table (Service, Frequency, Unit, Rate, Monthly Total) handles the mix of per-visit, flat monthly, and annualized costs that are typical in cleaning contracts. The Monthly Recurring Total and Annual Contract Value footer rows give the facilities manager and procurement team the numbers they need for approval.

**One-time services.** The setup and onboarding section is separated from recurring services to keep the renewal quote clean. In SilkQuote, a display rule hides this section when the Opportunity field `Contract_Type__c` does not equal "New Contract."

**Terms and Conditions.** Six clauses cover the service standards, access, consumables, payment, cancellation, and liability terms that govern most commercial cleaning agreements. Customize these to match your actual contract language.

**Acceptance block.** Four signature lines (Authorized Name, Title, Signature, Date) capture the approval with enough detail for your records. For formal e-signature requirements, the PDF can be sent through DocuSign or Adobe Sign.

## Automating This in Salesforce

The HTML body above goes directly into SilkQuote as the template body. Static placeholder text is replaced with merge fields that pull live data from Salesforce at generation time. Property address, square footage, service frequency, contract start date, and payment terms come from custom fields on the Opportunity record. Customer name and billing address come from the Account. Line item rows in the recurring services table populate automatically from Opportunity Products. The one-time setup section shows or hides based on a picklist value on the Opportunity — no manual editing of the quote needed.

SilkQuote works on Salesforce Professional Edition and above. No CPQ license, no Apex code, no implementation project. Install from the AppExchange, load the template body, map your merge fields, and your team can generate and send professional cleaning quotes directly from Salesforce the same day.

Once the quote is generated, SilkQuote creates a hosted quote link. The facilities manager opens it in a browser, reviews the scope and pricing, and clicks Accept. Acceptance is logged to the Opportunity in Salesforce with a timestamp.

For the full template configuration guide including field mapping and conditional section logic, see [Salesforce quote templates](/salesforce-quote-templates/). For PDF generation from Salesforce, see [Salesforce PDF quote generation](/salesforce-pdf-quote-generation/).

## Requirements

- **Salesforce edition**: Professional, Enterprise, or Unlimited
- **System Administrator profile**: required for package installation

[Install SilkQuote, free, installs in minutes →](/install)

<style>
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
.code-accordion__copy:hover { color: var(--text-color); border-color: var(--border-second-color); }
.code-accordion__copy.copied { color: var(--green); border-color: var(--green); }
.faq-section { margin-top: 2rem; }
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
    setTimeout(function() { span.textContent = 'Copy'; btn.classList.remove('copied'); }, 2000);
  }
  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(text).then(onSuccess).catch(function() { fallbackCopy(text, onSuccess); });
  } else { fallbackCopy(text, onSuccess); }
}
function fallbackCopy(text, callback) {
  var ta = document.createElement('textarea');
  ta.value = text;
  ta.style.cssText = 'position:fixed;top:0;left:0;opacity:0;pointer-events:none';
  document.body.appendChild(ta);
  ta.focus(); ta.select();
  try { document.execCommand('copy'); callback(); } catch(e) {}
  document.body.removeChild(ta);
}
</script>
<style>
.faq-section .faq-label { font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.1em; color: var(--text-muted); margin-bottom: 1.25rem; }
.faq-section h5 { font-size: 14px; font-weight: 600; color: var(--text-muted); margin-bottom: 0.25rem; }
.faq-section p { font-size: 14px; color: var(--text-secondary); }
</style>

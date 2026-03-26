---
layout: post
title: "Construction Quote Template: Free for Salesforce"
seo_title: "Construction Quote Template: Free for Salesforce"
description: "Free construction quote template for Salesforce. Include labor, materials, equipment, and payment schedules. Generate branded PDF quotes in one click with SilkQuote."
date: 2026-03-17 09:00:00 +0000
last_modified_at: 2026-03-17 00:00:00 +0000
author: admin
label: Free
tags: [templates]
permalink: /construction-quote-template/
faq:
  - question: "Can I use this construction quote template without Salesforce CPQ?"
    answer: "Yes. SilkQuote works with standard Salesforce products and pricebooks. No CPQ is required. Add your construction services and materials as Products in Salesforce, add them to Opportunities, and SilkQuote generates the branded PDF quote directly from the Opportunity data."
  - question: "Can a construction quote template handle multiple cost categories?"
    answer: "Yes. SilkQuote supports line item grouping, which lets you organize products by category (labor, materials, equipment rental, subcontractor costs) each with subtotals. This gives the client a clear breakdown by cost type rather than a flat list."
  - question: "Does the template support conditional sections for change orders?"
    answer: "Yes. You can configure a conditional section in SilkQuote that appears only when the Opportunity type is set to Change Order or includes a specific product. The section is hidden on standard quotes and visible only when relevant."
  - question: "What Salesforce fields does a construction quote template typically map?"
    answer: "A construction quote template commonly maps Project Address, Start Date, Completion Estimate, and Payment Terms from custom Opportunity fields, plus line items from Opportunity Products. Any custom field on the Opportunity or Account record can be mapped into the template."
  - question: "Which Salesforce editions does SilkQuote support?"
    answer: "SilkQuote works with Salesforce Professional Edition and above. You do not need Enterprise or Unlimited Edition, and you do not need Salesforce CPQ."
---

## Professional Construction Quotes for Contractors and Project Teams

Stop assembling bids in spreadsheets. Use the template below to produce a complete construction quote covering scope, phase-by-phase line items, payment schedule, and terms, then see how Salesforce teams automate this with SilkQuote.

## How It Works

1. **Copy the HTML body below** and customize it for your company: adjust the phase sections to match your scope and replace the placeholder values with your pricing
2. **Paste it into SilkQuote** as the template body — SilkQuote uses this HTML as the document body for every quote generated from this template
3. **Add merge fields** to any text in the template and SilkQuote will automatically pull live values from the corresponding Salesforce objects — Opportunity, Account, Opportunity Products, or any custom field — when the quote is generated
4. Works on **Salesforce Professional Edition** and above — no CPQ required

## Construction Quote Template

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Template</span> Construction Quote — HTML Body<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```html
<body>
<table width="100%" cellpadding="0" cellspacing="0" style="font-family:Helvetica,Arial,sans-serif;font-size:11px;color:#1a1a1a;">

  <!-- HEADER -->
  <tr><td style="padding:20px 20px 12px;">
    <table width="100%" cellpadding="0" cellspacing="0"><tr>
      <td style="vertical-align:top;">
        <div style="font-size:16px;font-weight:bold;color:#1e3a5f;">[YOUR COMPANY NAME]</div>
        <div style="font-size:10px;color:#666;margin-top:4px;">[Address] &nbsp;|&nbsp; [Phone] &nbsp;|&nbsp; [Email] &nbsp;|&nbsp; License: [Number]</div>
      </td>
      <td style="vertical-align:top;text-align:right;">
        <div style="font-size:18px;font-weight:bold;letter-spacing:2px;text-transform:uppercase;color:#1e3a5f;">Quotation</div>
      </td>
    </tr></table>
  </td></tr>

  <!-- QUOTE META -->
  <tr><td style="padding:0 20px 16px;">
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;">
      <tr>
        <td style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:20%;border-right:1px solid #2e5280;">Quote #</td>
        <td style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:20%;border-right:1px solid #2e5280;">Date</td>
        <td style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:20%;border-right:1px solid #2e5280;">Valid Until</td>
        <td style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:40%;">Project</td>
      </tr>
      <tr>
        <td style="padding:7px 10px;border-right:1px solid #eee;">CON-[YYYY]-[001]</td>
        <td style="padding:7px 10px;border-right:1px solid #eee;">[Date]</td>
        <td style="padding:7px 10px;border-right:1px solid #eee;">[30 days from issue]</td>
        <td style="padding:7px 10px;">[e.g., Commercial office fitout, 45 Main St]</td>
      </tr>
    </table>
  </td></tr>

  <!-- CLIENT / PROJECT ADDRESS -->
  <tr><td style="padding:0 20px 16px;">
    <table width="100%" cellpadding="0" cellspacing="0"><tr>
      <td style="width:48%;vertical-align:top;">
        <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;">
          <tr><td style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;">Client</td></tr>
          <tr><td style="padding:8px 10px;line-height:18px;"><strong>[Client Name / Company]</strong><br>[Phone] &nbsp;|&nbsp; [Email]</td></tr>
        </table>
      </td>
      <td style="width:4%;"></td>
      <td style="width:48%;vertical-align:top;">
        <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;">
          <tr><td style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;">Project Address</td></tr>
          <tr><td style="padding:8px 10px;line-height:18px;">[Site Address]<br>[City, State, ZIP]</td></tr>
        </table>
      </td>
    </tr></table>
  </td></tr>

  <!-- PROJECT DETAILS -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Project Details</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:6px 10px;width:30%;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Project Type</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[e.g., Commercial fitout / Residential new build / Renovation]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 10px;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Start Date</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[Estimated start date]</td></tr>
      <tr><td style="padding:6px 10px;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Estimated Completion</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[Estimated completion date]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 10px;border-right:1px solid #eee;font-weight:bold;font-size:10px;">Payment Terms</td><td style="padding:6px 10px;">[e.g., Milestone-based — see payment schedule below]</td></tr>
    </table>
  </td></tr>

  <!-- SCOPE OF WORKS -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Scope of Works</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;line-height:16px;color:#333;">
        <strong>Included:</strong> Site preparation &amp; demolition &nbsp;|&nbsp; Structural framing &nbsp;|&nbsp; Electrical rough-in &nbsp;|&nbsp; HVAC installation &nbsp;|&nbsp; Drywall &amp; finishing &nbsp;|&nbsp; Interior painting &nbsp;|&nbsp; Project management &amp; supervision &nbsp;|&nbsp; Permits &amp; inspections<br><br>
        <strong>Excluded:</strong> Furniture &amp; loose fitout, IT cabling, security systems, landscaping. See Schedule A for client-supplied items.
      </td></tr>
    </table>
  </td></tr>

  <!-- SITE PREPARATION -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Phase 1 — Site Preparation</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Item</th>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Specification</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Qty</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Unit</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:12%;">Unit Cost</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:12%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Site preparation &amp; demolition</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Scope description]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">lot</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Waste removal &amp; disposal</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Skip bins, haulage]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">lot</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td colspan="5" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#1e3a5f;color:#fff;">Phase 1 Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- STRUCTURE & FRAMING -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Phase 2 — Structure &amp; Framing</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Item</th>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Specification</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Qty</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Unit</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:12%;">Unit Cost</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:12%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Framing labor</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Steel stud / timber framing]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">hrs</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Framing materials</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Lumber, studs, hardware]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">lot</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td colspan="5" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#1e3a5f;color:#fff;">Phase 2 Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- MEP -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Phase 3 — MEP Rough-In</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Item</th>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Specification</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Qty</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Unit</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:12%;">Unit Cost</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:12%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Electrical rough-in</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Conduit, wiring, panel]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">lot</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">HVAC installation</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Units, ductwork, controls]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">lot</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td colspan="5" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#1e3a5f;color:#fff;">Phase 3 Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- FINISHES -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Phase 4 — Finishes</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Item</th>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Specification</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Qty</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">Unit</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:12%;">Unit Cost</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:12%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Drywall &amp; finishing</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Supply &amp; install, taped &amp; set</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m2</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Interior painting — walls</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">2 coats, [Colour]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m2</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:6px 8px;border-right:1px solid #eee;">Interior painting — ceilings</td><td style="padding:6px 8px;border-right:1px solid #eee;">2 coats, [Colour]</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">[X]</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">m2</td><td style="padding:6px 8px;text-align:right;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;text-align:right;">$[X]</td></tr>
      <tr><td colspan="5" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#1e3a5f;color:#fff;">Phase 4 Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- PROJECT MANAGEMENT & FEES -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Project Management &amp; Fees</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;width:40%;">Project management &amp; supervision</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Included throughout all phases</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-right:1px solid #eee;">Permits &amp; inspection fees</td><td style="padding:6px 8px;border-right:1px solid #eee;">Building permit, inspections</td><td style="padding:6px 8px;text-align:right;">$[X]</td></tr>
      <tr><td colspan="2" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#1e3a5f;color:#fff;">Fees Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- QUOTE SUMMARY -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Quote Summary</div>
    <table width="46%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;margin-left:auto;">
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Phase 1 — Site Preparation</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Phase 2 — Structure &amp; Framing</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Phase 3 — MEP Rough-In</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Phase 4 — Finishes</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Project Management &amp; Fees</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Contingency (10%)</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Tax ([X]%)</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:7px 10px;font-weight:bold;background:#1e3a5f;color:#fff;">Total Estimate</td><td style="padding:7px 10px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- PAYMENT SCHEDULE -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Payment Schedule</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;">Milestone</th>
        <th style="text-align:center;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:8%;">%</th>
        <th style="text-align:right;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #3a6494;width:15%;">Amount</th>
        <th style="text-align:left;background:#2e5280;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:20%;">Due</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Deposit on acceptance</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">20%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">On signing</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Framing complete</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">25%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">MEP rough-in complete</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">25%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Practical completion</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">25%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
      <tr><td style="padding:6px 8px;border-right:1px solid #eee;">Final handover &amp; defects clearance</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">5%</td><td style="padding:6px 8px;text-align:right;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;">[Date]</td></tr>
    </table>
  </td></tr>

  <!-- TERMS -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Terms and Conditions</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;line-height:16px;color:#333;">
        <strong>Scope and Variations</strong><br>
        Any changes to the agreed scope, materials, or timeline constitute a variation. All variations will be quoted in writing and require written client approval before work proceeds.<br><br>
        <strong>Materials Allowances</strong><br>
        Where allowances are stated, final costs will be reconciled against actual selections. Credits or additional charges will be documented and agreed in writing.<br><br>
        <strong>Permits and Approvals</strong><br>
        [Company Name] will obtain all required building permits and coordinate inspections. Permit fees are included in this quotation as itemized above.<br><br>
        <strong>Delays</strong><br>
        [Company Name] is not liable for delays caused by weather, client-supplied material delays, or regulatory approvals outside our control. Timeline adjustments will be communicated in writing.<br><br>
        <strong>Payment Terms</strong><br>
        Progress payments are due within [X] days of invoice. Works may be suspended on accounts overdue by more than [X] days.<br><br>
        <strong>Workmanship Warranty</strong><br>
        [Company Name] warrants all workmanship for [X] months from practical completion. Defects caused by client misuse or normal wear are excluded.
      </td></tr>
    </table>
  </td></tr>

  <!-- ACCEPTANCE -->
  <tr><td style="padding:0 20px 20px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Acceptance</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;color:#555;">By signing below or paying the deposit, the client confirms acceptance of this quotation including the scope, pricing, payment schedule, and terms above.</td></tr>
      <tr><td style="padding:0 10px 14px;">
        <table width="100%" cellpadding="0" cellspacing="0">
          <tr>
            <td style="width:48%;padding-top:8px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Client Name</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
            <td style="width:4%;"></td>
            <td style="width:48%;padding-top:8px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Signature</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
          </tr>
          <tr>
            <td style="padding-top:12px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Date</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
            <td></td>
            <td style="padding-top:12px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Deposit Paid</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
          </tr>
        </table>
      </td></tr>
    </table>
  </td></tr>

</table>
</body>
```

</div>
</details>

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Change Order Add-On</span> Variation Quotation<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```html
<table width="100%" cellpadding="0" cellspacing="0" style="font-family:Helvetica,Arial,sans-serif;font-size:11px;color:#1a1a1a;">
  <tr><td style="padding:20px 20px 12px;">
    <div style="font-size:16px;font-weight:bold;color:#1e3a5f;">[COMPANY NAME] — Change Order</div>
    <div style="font-size:10px;color:#666;margin-top:4px;">CO-[001] &nbsp;|&nbsp; Relates to Quote CON-[YYYY]-[001] &nbsp;|&nbsp; [Date]</div>
  </td></tr>

  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Description of Change</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:6px 10px;width:30%;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Originally specified</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[e.g., Standard drywall partition, 90mm stud]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 10px;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Client request</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[e.g., Change to acoustic-rated partition, 150mm stud with insulation]</td></tr>
      <tr><td style="padding:6px 10px;border-right:1px solid #eee;font-weight:bold;font-size:10px;">Reason</td><td style="padding:6px 10px;">[e.g., Tenant requirement for meeting room noise reduction]</td></tr>
    </table>
  </td></tr>

  <tr><td style="padding:0 20px 16px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Change Order Pricing</div>
    <table width="46%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;margin-left:auto;">
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Original item credit</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">-$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">New materials cost</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">+$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Additional labor</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">+$[X]</td></tr>
      <tr><td style="padding:7px 10px;font-weight:bold;background:#1e3a5f;color:#fff;">Net Change Order Value</td><td style="padding:7px 10px;text-align:right;font-weight:bold;background:#1e3a5f;color:#fff;">+$[X]</td></tr>
    </table>
    <div style="font-size:9px;color:#666;padding:6px 0;">Revised contract value: $[X] (original $[X] + this change order $[X])</div>
  </td></tr>

  <tr><td style="padding:0 20px 20px;">
    <div style="background:#1e3a5f;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Acceptance</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;color:#555;">Works will not proceed on this change order until written approval is received.</td></tr>
      <tr><td style="padding:0 10px 14px;">
        <table width="100%" cellpadding="0" cellspacing="0">
          <tr>
            <td style="width:48%;padding-top:8px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Client Name</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
            <td style="width:4%;"></td>
            <td style="width:48%;padding-top:8px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Signature &amp; Date</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
          </tr>
        </table>
      </td></tr>
    </table>
  </td></tr>
</table>
```

</div>
</details>

## What Each Section Does

**Phase-by-phase line items** make the total feel earned rather than arbitrary. Clients reviewing a lump-sum construction quote have no reference point. Breaking costs into Site Preparation, Framing, MEP, and Finishes lets them verify the number against their own expectations for each phase.

**Project Details** locks in the start date, completion estimate, and payment terms before any money changes hands. Disputes about timeline almost always trace back to a quote that did not define one.

**The payment schedule earns the commitment.** Milestone-based payments protect your cash flow and give the client clear expectations. A 20% deposit on signing filters out uncommitted inquiries.

**Always issue a change order.** Never absorb a client-requested scope change without documenting and pricing it. The Change Order Add-On above gives you a consistent format for every variation.

## Automating This in Salesforce

The HTML body above goes directly into SilkQuote as the template body. Once it is loaded, you replace the static placeholder text with merge fields that pull live data from Salesforce when the quote is generated. Project name, client address, start date, and payment terms come from the Opportunity record or custom Opportunity fields. Company name and billing address come from the Account. Line item rows populate automatically from Opportunity Products, including quantity, unit price, and extended totals. Any custom field on any object can be mapped into any section of the template.

SilkQuote works on Salesforce Professional Edition and above. No CPQ license, no Apex development, no implementation partner needed. Install from the AppExchange, paste in the template body, configure your merge fields, and your team is generating consistent, branded construction quotes from Salesforce the same day.

See [Salesforce quote templates](/salesforce-quote-templates/) and [SilkQuote features](/features/) for the full setup walkthrough.

## Requirements

Before automating in Salesforce, confirm you have:

- **Salesforce edition**: Professional, Enterprise, or Unlimited
- **System Administrator profile**: required for package installation

[Install SilkQuote, free, installs in minutes](/install)

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

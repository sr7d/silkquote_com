---
layout: post
title: "Interiors Quotation: Free Template for Interior Design & Fit-Out Projects"
description: "A free interiors quotation template for interior designers and fit-out companies — itemized by room, with payment schedule, change order terms, and a Salesforce setup guide."
date: 2026-03-14 09:00:00 +0000
last_modified_at: 2026-03-14 00:00:00 +0000
author: admin
tags: [templates]
permalink: /interiors-quotation/
seo_title: "Interiors Quotation: Free Template"
---

## Professional Interiors Quotations for Design Studios and Fit-Out Teams

Stop assembling quotes in spreadsheets. Use the template below to produce a complete interiors quotation, itemized by room, with payment milestones, change order terms, and workmanship warranty, and see how Salesforce teams automate this with SilkQuote.

## How It Works

1. **Copy the template below**: use the room sections that match your project scope and remove those that do not apply
2. **Fill in your project details**: replace placeholder values with actual specifications and pricing
3. **Or automate it in Salesforce**: [install SilkQuote](/install), add your materials and services to a price book, and generate branded PDFs from Opportunities in seconds

## Interiors Quotation Template

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Template</span> Interiors Quotation — HTML Body<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```html
<body>
<table width="100%" cellpadding="0" cellspacing="0" style="font-family:Helvetica,Arial,sans-serif;font-size:11px;color:#1a1a1a;">

  <!-- HEADER -->
  <tr><td style="padding:20px 20px 12px;">
    <table width="100%" cellpadding="0" cellspacing="0"><tr>
      <td style="vertical-align:top;">
        <div style="font-size:16px;font-weight:bold;color:#2c3e50;">[STUDIO / COMPANY NAME]</div>
        <div style="font-size:10px;color:#666;margin-top:4px;">[Address] &nbsp;|&nbsp; [Phone] &nbsp;|&nbsp; [Email] &nbsp;|&nbsp; [Business Reg.]</div>
      </td>
      <td style="vertical-align:top;text-align:right;">
        <div style="font-size:18px;font-weight:bold;letter-spacing:2px;text-transform:uppercase;color:#2c3e50;">Quotation</div>
      </td>
    </tr></table>
  </td></tr>

  <!-- QUOTE META -->
  <tr><td style="padding:0 20px 16px;">
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;">
      <tr>
        <td style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:20%;border-right:1px solid #3d5166;">Quote #</td>
        <td style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:20%;border-right:1px solid #3d5166;">Date</td>
        <td style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:20%;border-right:1px solid #3d5166;">Valid Until</td>
        <td style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;width:40%;">Project</td>
      </tr>
      <tr>
        <td style="padding:7px 10px;border-right:1px solid #eee;">INT-[YYYY]-[001]</td>
        <td style="padding:7px 10px;border-right:1px solid #eee;">[Date]</td>
        <td style="padding:7px 10px;border-right:1px solid #eee;">[30 days from issue]</td>
        <td style="padding:7px 10px;">[e.g., 3-bed residential fit-out, 12 Smith St]</td>
      </tr>
    </table>
  </td></tr>

  <!-- CLIENT / PROJECT ADDRESS -->
  <tr><td style="padding:0 20px 16px;">
    <table width="100%" cellpadding="0" cellspacing="0"><tr>
      <td style="width:48%;vertical-align:top;">
        <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;">
          <tr><td style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;">Client</td></tr>
          <tr><td style="padding:8px 10px;line-height:18px;"><strong>[Client Name]</strong><br>[Phone] &nbsp;|&nbsp; [Email]</td></tr>
        </table>
      </td>
      <td style="width:4%;"></td>
      <td style="width:48%;vertical-align:top;">
        <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;">
          <tr><td style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 10px;">Project Address</td></tr>
          <tr><td style="padding:8px 10px;line-height:18px;">[Property Address]<br>[City, State, ZIP]</td></tr>
        </table>
      </td>
    </tr></table>
  </td></tr>

  <!-- SCOPE -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Scope of Works</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;line-height:16px;color:#333;">
        <strong>Included:</strong> Design &amp; documentation &nbsp;|&nbsp; Procurement management &nbsp;|&nbsp; Site supervision ([X] visits) &nbsp;|&nbsp; Joinery &amp; cabinetry &nbsp;|&nbsp; Flooring &nbsp;|&nbsp; Painting &nbsp;|&nbsp; Tiling &amp; waterproofing &nbsp;|&nbsp; Electrical (lighting) &nbsp;|&nbsp; Plumbing fixtures &nbsp;|&nbsp; Furniture per schedule of finishes<br><br>
        <strong>Excluded:</strong> Structural works, window treatments, appliances, artwork. Client-supplied items per Schedule A.
      </td></tr>
    </table>
  </td></tr>

  <!-- LIVING AREAS -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Living Areas</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Item</th>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Specification</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">Qty</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">Unit</th>
        <th style="text-align:right;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:13%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Flooring — Engineered Timber</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Brand/Code], 180mm board</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">65</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m²</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Painting — Walls</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">2 coats, [Colour]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">180</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m²</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Painting — Ceilings</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">2 coats, [Colour]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">55</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m²</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-right:1px solid #eee;">Built-in Joinery — TV Unit</td><td style="padding:6px 8px;border-right:1px solid #eee;">[Specification]</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">item</td><td style="padding:6px 8px;text-align:right;">$[X]</td></tr>
      <tr><td colspan="4" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#2c3e50;color:#fff;">Living Area Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#2c3e50;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- KITCHEN -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Kitchen</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Item</th>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Specification</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">Qty</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">Unit</th>
        <th style="text-align:right;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:13%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Kitchen Cabinetry</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Doors, handles, benchtop spec]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">set</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Benchtop</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Material, 20mm]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">4.2</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">lm</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Splashback</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Material]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">item</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-right:1px solid #eee;">Tapware &amp; Sink</td><td style="padding:6px 8px;border-right:1px solid #eee;">[Brand/Model]</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">set</td><td style="padding:6px 8px;text-align:right;">$[X]</td></tr>
      <tr><td colspan="4" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#2c3e50;color:#fff;">Kitchen Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#2c3e50;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- BATHROOMS -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Bathrooms</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Item</th>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Specification</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">Qty</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">Unit</th>
        <th style="text-align:right;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:13%;">Total</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Tiling — Floor</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Material], incl. waterproofing</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">12</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m²</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Tiling — Walls</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Material]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">28</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">m²</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Vanity &amp; Basin</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Brand/Model]</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">item</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Shower Screen</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Frameless, 10mm glass</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">item</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:6px 8px;border-right:1px solid #eee;">Tapware — Shower &amp; Bath</td><td style="padding:6px 8px;border-right:1px solid #eee;">[Brand/Model]</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">1</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">set</td><td style="padding:6px 8px;text-align:right;">$[X]</td></tr>
      <tr><td colspan="4" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#2c3e50;color:#fff;">Bathroom Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#2c3e50;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- FEES -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Design &amp; Professional Fees</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;width:40%;">Design Fee</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Concept through to installation documentation</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Procurement Management</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X]% of net procurement value</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:6px 8px;border-right:1px solid #eee;">Site Supervision</td><td style="padding:6px 8px;border-right:1px solid #eee;">[X] visits included</td><td style="padding:6px 8px;text-align:right;">$[X]</td></tr>
      <tr><td colspan="2" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#2c3e50;color:#fff;">Fees Subtotal</td><td style="padding:6px 8px;text-align:right;font-weight:bold;background:#2c3e50;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- SUMMARY -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Quote Summary</div>
    <table width="46%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;margin-left:auto;">
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Living Areas</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Kitchen</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Bathrooms</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Design &amp; Fees</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Tax ([X]%)</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">$[X]</td></tr>
      <tr><td style="padding:7px 10px;font-weight:bold;background:#2c3e50;color:#fff;">Total Project Value</td><td style="padding:7px 10px;text-align:right;font-weight:bold;background:#2c3e50;color:#fff;">$[X]</td></tr>
    </table>
  </td></tr>

  <!-- PAYMENT SCHEDULE -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Payment Schedule</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Milestone</th>
        <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:8%;">%</th>
        <th style="text-align:right;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:15%;">Amount</th>
        <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:20%;">Due</th>
      </tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Deposit — on acceptance</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">20%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">On signing</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Design completion &amp; procurement start</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">30%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
      <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Installation commencement</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">30%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Practical completion</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">15%</td><td style="padding:6px 8px;text-align:right;border-bottom:1px solid #eee;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
      <tr><td style="padding:6px 8px;border-right:1px solid #eee;">Final styling &amp; handover</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">5%</td><td style="padding:6px 8px;text-align:right;border-right:1px solid #eee;">$[X]</td><td style="padding:6px 8px;">[Date]</td></tr>
    </table>
  </td></tr>

  <!-- TERMS -->
  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Terms and Conditions</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;line-height:16px;color:#333;">
        <strong>Scope and Variations</strong><br>
        Any changes to materials, finishes, quantities, or works requested after acceptance constitute a variation. All variations will be quoted in writing and require written client approval before work proceeds.<br><br>
        <strong>Client-Supplied Items</strong><br>
        Items in Schedule A are the client's responsibility to source and deliver to site. [Studio Name] is not liable for schedule delays caused by late or damaged client-supplied items.<br><br>
        <strong>Long-Lead Items</strong><br>
        Orders will be placed on receipt of the Stage 2 payment. Timeline commitments are contingent on timely payment milestones.<br><br>
        <strong>Workmanship Warranty</strong><br>
        [Studio Name] warrants all installation workmanship for 12 months from practical completion. Defects caused by client misuse or normal wear and tear are excluded.<br><br>
        <strong>Payment Terms</strong><br>
        Progress payments are due within [X] days of invoice. Overdue accounts may result in works being suspended.<br><br>
        <strong>Intellectual Property</strong><br>
        All design concepts and documentation remain the intellectual property of [Studio Name] until full payment is received.
      </td></tr>
    </table>
  </td></tr>

  <!-- ACCEPTANCE -->
  <tr><td style="padding:0 20px 20px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Acceptance</div>
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
            <td style="padding-top:12px;"><div style="font-size:9px;color:#666;margin-bottom:4px;">Deposit Amount</div><div style="border-bottom:1px solid #999;height:20px;"></div></td>
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
<summary class="code-accordion__summary"><span class="code-accordion__label">Commercial Add-On</span> Compliance &amp; Programme Section<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```html
<!-- Add before the Terms section for commercial fit-outs -->
<tr><td style="padding:0 20px 16px;">
  <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Compliance</div>
  <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
    <tr><td style="padding:10px;font-size:9px;line-height:16px;color:#333;">
      All works will be carried out in compliance with applicable building codes, fire safety requirements, and [accessibility standard, e.g., ADA / DDA].<br><br>
      Where works require building approval, [Studio Name] will coordinate with the relevant certifier. A copy of all certificates will be provided to the client on practical completion.<br><br>
      Certifier: [Name / Firm]
    </td></tr>
  </table>
</td></tr>

<!-- Project programme summary -->
<tr><td style="padding:0 20px 16px;">
  <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Project Programme</div>
  <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
    <tr>
      <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;">Phase</th>
      <th style="text-align:center;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:15%;">Duration</th>
      <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;border-right:1px solid #4a6278;width:20%;">Start</th>
      <th style="text-align:left;background:#3d5166;color:#fff;padding:6px 8px;font-size:8px;text-transform:uppercase;letter-spacing:0.5px;width:20%;">End</th>
    </tr>
    <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Design &amp; Documentation</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X] wks</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Date]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
    <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Procurement</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X] wks</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Date]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
    <tr><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">Installation</td><td style="padding:6px 8px;text-align:center;border-bottom:1px solid #eee;border-right:1px solid #eee;">[X] wks</td><td style="padding:6px 8px;border-bottom:1px solid #eee;border-right:1px solid #eee;">[Date]</td><td style="padding:6px 8px;border-bottom:1px solid #eee;">[Date]</td></tr>
    <tr style="background:#f5f7fa;"><td style="padding:6px 8px;border-right:1px solid #eee;">Finishing &amp; Styling</td><td style="padding:6px 8px;text-align:center;border-right:1px solid #eee;">[X] wks</td><td style="padding:6px 8px;border-right:1px solid #eee;">[Date]</td><td style="padding:6px 8px;">[Date]</td></tr>
    <tr><td colspan="3" style="padding:6px 8px;text-align:right;font-weight:bold;font-size:10px;background:#2c3e50;color:#fff;">Estimated Practical Completion</td><td style="padding:6px 8px;font-weight:bold;background:#2c3e50;color:#fff;">[Date]</td></tr>
  </table>
</td></tr>
```

</div>
</details>

<details class="code-accordion">
<summary class="code-accordion__summary"><span class="code-accordion__label">Variation Template</span> Change Order Quotation<button class="code-accordion__copy" onclick="event.stopPropagation();copyAccordionCode(this)" aria-label="Copy code"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg><span>Copy</span></button></summary>
<div class="code-accordion__body" markdown="1">

```html
<table width="100%" cellpadding="0" cellspacing="0" style="font-family:Helvetica,Arial,sans-serif;font-size:11px;color:#1a1a1a;">
  <tr><td style="padding:20px 20px 12px;">
    <div style="font-size:16px;font-weight:bold;color:#2c3e50;">[STUDIO NAME] — Variation Quotation</div>
    <div style="font-size:10px;color:#666;margin-top:4px;">VAR-[001] &nbsp;|&nbsp; Relates to Quote INT-[YYYY]-[001] &nbsp;|&nbsp; [Date]</div>
  </td></tr>

  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Description of Variation</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:6px 10px;width:30%;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Originally specified</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[e.g., Porcelain floor tile — 600x600, Ref ABC123]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:6px 10px;border-right:1px solid #eee;border-bottom:1px solid #eee;font-weight:bold;font-size:10px;">Client request</td><td style="padding:6px 10px;border-bottom:1px solid #eee;">[e.g., Change to marble — Calacatta Gold 600x600]</td></tr>
      <tr><td style="padding:6px 10px;border-right:1px solid #eee;font-weight:bold;font-size:10px;">Reason</td><td style="padding:6px 10px;">[e.g., Client preference — selected during site visit on [date]]</td></tr>
    </table>
  </td></tr>

  <tr><td style="padding:0 20px 16px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Variation Pricing</div>
    <table width="46%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;margin-left:auto;">
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Original item credit</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">-$[X]</td></tr>
      <tr style="background:#f5f7fa;"><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">New item cost</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">+$[X]</td></tr>
      <tr><td style="padding:5px 10px;border-bottom:1px solid #eee;color:#444;">Additional labour (if applicable)</td><td style="padding:5px 10px;text-align:right;border-bottom:1px solid #eee;">+$[X]</td></tr>
      <tr><td style="padding:7px 10px;font-weight:bold;background:#2c3e50;color:#fff;">Net Variation</td><td style="padding:7px 10px;text-align:right;font-weight:bold;background:#2c3e50;color:#fff;">+$[X]</td></tr>
    </table>
    <div style="font-size:9px;color:#666;padding:6px 0;">Revised contract value: $[X] (original $[X] + this variation $[X])</div>
  </td></tr>

  <tr><td style="padding:0 20px 20px;">
    <div style="background:#2c3e50;color:#fff;font-size:8px;font-weight:bold;text-transform:uppercase;letter-spacing:1px;padding:5px 8px;">Acceptance</div>
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #ccc;border-top:none;">
      <tr><td style="padding:10px;font-size:9px;color:#555;">Works will not proceed on this variation until written approval is received.</td></tr>
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

**Lead with scope, not price.** Clients reading a quote for the first time look at the scope section to confirm you understood the brief. Specificity, including naming each room, trade, and exclusion, signals you paid attention. A vague scope is the single most common source of post-project disputes.

**Itemize by room, not by trade.** Clients think "I'm spending $X on the kitchen," not "I'm spending $X on carpentry." Room-based line items make the quote navigable.

**The payment schedule earns the commitment.** Milestone-based payments make the total feel manageable and protect your cash flow. The 20% deposit on acceptance filters uncommitted clients.

**Always issue a variation quotation.** Never absorb a client-requested change without documenting and pricing it. Every un-quoted variation is margin you worked for and did not charge for.

## Automating Interiors Quotations in Salesforce

With SilkQuote, materials categories, labor types, and design fees live in a central Salesforce price book. When a new project comes in, add the relevant products to the Opportunity and click Generate Quote. A branded, consistently formatted PDF is ready in seconds.

See [Salesforce quote templates](/salesforce-quote-templates/) and [Salesforce PDF quote generation](/salesforce-pdf-quote-generation/) for the full setup walkthrough.

## Requirements

Before automating in Salesforce, confirm you have:

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
<div class="faq-section" markdown="1">
<p class="faq-label">Frequently Asked Questions</p>

##### What should an interiors quotation include?

An itemized breakdown by room or trade, design and professional fees, a milestone-based payment schedule, validity period, and terms covering change orders, client-supplied items, long-lead materials, and workmanship warranty.

##### How do interior designers charge in a quotation?

The three standard models are a flat project fee, an hourly rate, or a percentage of total project cost (10–20%). State the model clearly in the quote and define what triggers a variation charge.

##### What is the difference between an estimate and an interiors quotation?

An estimate is a cost range before specifications are confirmed. A quotation is a formal, itemized price for a defined scope. The client expects the final invoice to match it unless changes are agreed and documented.

##### How do you handle change orders in an interiors project?

Issue a variation quotation for every change, no matter how small. Document what was originally specified, what the client is requesting, the net cost impact, and any programme effect. Require written sign-off before proceeding.
</div>

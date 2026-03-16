---
layout: post
title: "Set Paper Size for Your Quote"
description: "Set the paper size for your SilkQuote PDF quote — choose Letter, Legal, or A4 to match print standards and regional requirements for Salesforce quotes."
date: 2025-01-25 10:15:00 +0300
last_modified_at: 2026-03-03 00:00:00 +0000
author: admin
image: /images/paperSize.png
image_caption: "Paper size and margins"
tags: [generator, paper-size]
featured: false
---
## Overview

Paper size controls the physical dimensions of the generated PDF and affects margins, content layout, and pagination. SilkQuote supports three standard sizes: Letter, Legal, and A4. The right choice depends on where your prospects are located and whether they are likely to print the document.

Paper size is selected each time a quote is generated and is not locked to the template. This means a single template can produce quotes in different paper sizes for different markets.

## Paper Size Options

**Letter (8.5" × 11")**
The standard for North American business documents. Most US-based printers default to Letter. Use this format if your primary market is the United States or Canada.

**Legal (8.5" × 14")**
A taller format used for legal documents in North America. Useful when quotes have many line items and you want to reduce pagination; the extra length means more content fits on fewer pages. Less commonly used for sales quotes but appropriate when required by contract or compliance procedures.

**A4 (210mm × 297mm)**
The international standard used in most of Europe, Asia, Australia, and Latin America. Use A4 for prospects outside North America to ensure the document prints correctly on their standard paper.

## Steps

1. Open the Opportunity record and click the **Generate Quote Document** Quick Action.
2. Enter the Quote Name and select the Template.
3. In the **Paper Size** dropdown, choose **Letter**, **Legal**, or **A4**.
4. Complete any remaining options (Terms, Draft Watermark, Signature Block).
5. Click **Save PDF** or **View Quote**.

## Setting a Default Paper Size

While paper size is selected per generation, you can guide reps by configuring template-level defaults or by naming templates with the size (e.g., "Standard Proposal - A4", "Standard Proposal - Letter"). This prevents reps from accidentally generating in the wrong format.

If your organization operates primarily in one region, train reps to always select the same size. For organizations with international sales teams, consider creating separate templates or adding a note in rep training materials.

## How Paper Size Affects the PDF

Paper size changes more than just the physical dimensions:

- **Margins**: Each size has calibrated margins that affect how much content fits per page.
- **Pagination**: A4 is slightly taller and narrower than Letter. Quotes with many line items may paginate differently across sizes.
- **Print quality**: Printing an A4 PDF on Letter paper (or vice versa) can result in cropped content or scaling artifacts. Matching the PDF size to the printer paper size is important for professional printed output.

## Tips

- **Preview before saving**: Use the View Quote preview option to verify that content fits correctly in the selected paper size, especially for quotes with many products.
- **Consistent size within a deal**: If you generate multiple quote versions for the same deal, use the same paper size consistently. Mixing sizes in the Files section can confuse prospects who print and compare versions.

## Related

- [Generate a Quote PDF from an Opportunity](/generate-quote-pdf/)
- [Preview a Quote without Saving](/preview-a-quote-without-saving/)
- [Create a New Template](/create-a-new-template/)

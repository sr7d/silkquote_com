---
layout: post
title: "Product Bundles"
description: "Define bundle relationships between products in Salesforce so SilkQuote automatically expands a bundle's child products when a rep adds it to a quote."
date: 2026-04-05 00:00:00 +0000
author: admin
tags: [pricing, configure-products]
permalink: /product-bundles/
robots: noindex
featured: false
image: /images/productBundle.png
image_caption: "Bundle indicator and child products in the Add Products panel"
---

## Overview

A product bundle is a parent product that automatically includes one or more child products. When a rep adds a bundle to the quote, SilkQuote inserts all of the bundle's children immediately after the parent in the line-item list — no manual selection required.

Bundle relationships are defined using the `Product_Bundle_Item__c` custom object, which ships with SilkQuote.


## Prerequisites

- The parent and child products must exist in Salesforce as `Product2` records.
- Both must be active and present in the opportunity's pricebook.


## Create a Bundle Relationship

For each child product in a bundle, create one `Product_Bundle_Item__c` record:

1. In Salesforce Setup, go to **Object Manager → Product Bundle Item**.
2. Click **New**.
3. Set **Parent Product** to the bundle parent (`Product2` record).
4. Set **Child Product** to the child product (`Product2` record).
5. Save.

Repeat for every child product in the bundle. There is no limit on the number of children per parent.


## How It Works at Runtime

When the Add Products panel opens, SilkQuote reads all `Product_Bundle_Item__c` records and builds an in-memory bundle map keyed by parent `Product2Id`.

When a rep clicks **Add Selected**, SilkQuote calls `expandBundles` on the selected product list. For each selected bundle parent, its children are inserted immediately after the parent in the line-item list. If the same child product appears in more than one selected bundle, it is included only once (deduplication by `productId`).


## What Reps See

In the Add Products panel, any product with bundle children shows a **bundle indicator** on its row. Expanding the row reveals the child products inline — name, code, and formatted list price — so reps can confirm what is included before adding.


## Permissions

Both the `SilkQuoteAdmin` and `SilkQuoteUser` permission sets include read access to `Product_Bundle_Item__c` and its two lookup fields. No additional permission setup is required.

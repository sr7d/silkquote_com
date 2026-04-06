---
layout: post
title: "Product Field Sets"
description: "Control which fields appear as filters and display columns in the SilkQuote Add Products panel using two optional field sets on the Product2 object."
date: 2026-04-05 00:00:00 +0000
author: admin
tags: [pricing, configure-products]
permalink: /product-field-sets/
robots: noindex
featured: false
image: /images/fieldset.png
image_caption: "Product field set configuration in Salesforce Setup"
---

## Overview

Two optional field sets on the `Product2` object control what appears in the Add Products panel. Both are read at catalog load time — no code change or deployment is needed after you update them.

| Field Set API Name | Purpose |
|---|---|
| `SilkQuote_Product_Filters` | Fields rendered as filter controls above the product list |
| `SilkQuote_Product_Display` | Fields rendered as columns in each product row |

If a field set is absent, the panel falls back to default behavior (Family filter; Name, Code, List Price columns).


## SilkQuote_Product_Filters

### What it does

Fields in this set appear as filter controls in the filter bar above the product list. The **Family** filter is always present and does not need to be included in the field set.

- **Picklist fields** render as dropdown (`<select>`) menus with an "All" default.
- **Text and number fields** render as free-text inputs.

### Setup

1. In Salesforce Setup, go to **Object Manager → Product → Field Sets**.
2. Click **New**.
3. Set the **Field Set Label** to `SilkQuote Product Filters` and the **Field Set Name** to `SilkQuote_Product_Filters`.
4. Drag the fields you want as filters into the **In the Field Set** area.
5. Save.

Changes take effect the next time a rep opens the Add Products panel (catalog reloads on first open per session).

### Supported field types

Picklist, multi-select picklist, text, number, currency, and percent fields are supported. Lookup and formula fields are not rendered as filters.


## SilkQuote_Product_Display

### What it does

Fields in this set appear as columns in each product row in the panel. Order in the field set determines column order.

### Setup

1. In Salesforce Setup, go to **Object Manager → Product → Field Sets**.
2. Click **New**.
3. Set the **Field Set Label** to `SilkQuote Product Display` and the **Field Set Name** to `SilkQuote_Product_Display`.
4. Drag the fields you want as columns into the **In the Field Set** area.
5. Save.

### Default behavior

If `SilkQuote_Product_Display` is absent, the panel shows three default columns: **Name**, **Product Code**, and **List Price**.


## Picklist Values in Filters

When `SilkQuote_Product_Filters` includes a picklist field, SilkQuote reads the picklist's active values at catalog load time and populates the dropdown options automatically. No additional configuration is needed.

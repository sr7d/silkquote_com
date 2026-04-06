---
layout: post
slug: generate-quote-quick-action
permalink: /generate-quote-quick-action/
title: "Add the Generate Quote Quick Action to Opportunity"
description: "Add the Generate Quote Quick Action to your Salesforce Opportunity page layout and enable reps to create professional PDF quotes in one click."
date: 2025-01-25 10:35:00 +0300
last_modified_at: 2026-03-03 00:00:00 +0000
author: admin
image: /images/generateQuoteDocument.png
image_caption: "Lightning actions"
tags: [configure-templates, quick-action]
featured: false
---
## Overview

The Generate Quote Document Quick Action is the button reps click to trigger quote generation from an Opportunity record. SilkQuote installs this action automatically, but an admin must add it to the Opportunity Page Layout before reps can see and use it.

This is a one-time setup step performed after installing SilkQuote. Once the action is on the layout, every rep with the SilkQuote permission set sees the button on every Opportunity.

## Before You Begin

Confirm that:
1. SilkQuote has been installed from the AppExchange.
2. You are logged in as a Salesforce System Administrator.
3. At least one SilkQuote template has been configured (reps need a template to generate a quote).

## Steps

### Verify the Action Exists

1. Go to **Setup** (gear icon → Setup).
2. In the Quick Find box, type **Object Manager** and open it.
3. Click **Opportunity** in the object list.
4. Click **Buttons, Links, and Actions** in the left sidebar.
5. Confirm that **Generate Quote Document** appears in the list. If it does not, re-check that SilkQuote is fully installed.

### Add the Action to the Page Layout

1. In the Opportunity object, click **Page Layouts** in the left sidebar.
2. Select the page layout used by your sales team (the one reps see when opening Opportunity records).
3. In the layout editor, scroll to the **Salesforce Mobile and Lightning Experience Actions** section.
4. In the palette at the top of the editor, click **Mobile & Lightning Actions**.
5. Find **Generate Quote Document** in the action list.
6. Drag it into the **Salesforce Mobile and Lightning Experience Actions** section on the layout.
7. Click **Save**.

### Test the Action

1. Open any Opportunity record in Lightning Experience.
2. Look for the **Generate Quote Document** button in the Highlights Panel or the actions list.
3. Click it to confirm the generation dialog opens.

## Lightning App Builder Consideration

If your Opportunity page uses a custom Lightning page built in Lightning App Builder (rather than the standard page layout), the Salesforce Mobile and Lightning Experience Actions on the page layout may not surface automatically. In that case:

1. Open **Lightning App Builder** from Setup.
2. Find and edit the Lightning page used for Opportunities.
3. Add a **Highlights Panel** component or ensure the existing one is configured to show page layout actions.
4. Activate the page.

## Tips

- **Multiple page layouts**: If your org has different Opportunity page layouts for different record types or profiles, add the Quick Action to each layout that reps use.
- **Positioning**: Place the action prominently in the actions list. If it is buried behind a "More" dropdown, reps may not discover it. Drag it to one of the first positions in the actions bar.
- **Mobile users**: The action works in Salesforce Mobile as well. Test it from the mobile app if your team uses it in the field.

## Related

- [Generate a Quote PDF from an Opportunity](/generate-quote-pdf/)
- [Grant Access with the Permission Set](/permission-set/)
- [Open the SilkQuote Configuration Manager](/configuration-manager/)

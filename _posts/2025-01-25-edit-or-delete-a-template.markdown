---
layout: post
title: "Edit or Delete a Template"
description: "Edit or delete a SilkQuote template in Salesforce to update your quote layout, branding, or field rules — keep your template library current and accurate."
date: 2025-01-25 10:55:00 +0300
last_modified_at: 2026-03-03 00:00:00 +0000
author: admin
image: /images/editDeleteTemplate.png
image_caption: "Template maintenance"
tags: [configurator, template-management]
featured: false
---
## Overview

As your quoting process evolves, templates need to be updated to reflect new branding, revised field mappings, changed conditions, or updated paper size preferences. You may also need to remove templates that are no longer in use to keep the selection list clean for reps.

Both editing and deleting are managed in the SilkQuote Configuration Manager. Only users with the appropriate SilkQuote admin permissions can modify or remove templates — reps cannot change templates at generation time.

## Editing a Template

To update a template's settings (name, accent color, conditions, group/sort options):

1. Open the **SilkQuote Configuration Manager** from the App Launcher.
2. Select the template you want to edit from the template dropdown selector.
3. Click the **Edit** button (pencil icon) next to the template name.
4. Update any of the available fields: Name, Accent Color, Condition, Required, Precedence, Group By, Order By.
5. Click **Save**.

Changes take effect immediately for all future quote generation. Previously generated PDFs are not affected.

## Editing Sections and Fields

Template settings control the overall template properties, but section and field content is edited separately. To change which Salesforce fields appear in the quote or how they are organized:

1. Select the template and navigate to the relevant section (e.g., Company, Customer, Line Items).
2. Use the field configuration panel to add, remove, or reorder fields.
3. Save the section.

See [Configure Template Sections & Fields](/configure-template-fields/) for detailed steps on field mapping.

## Deleting a Template

Deleting a template permanently removes it and all its associated section field mappings. Before deleting:

- Confirm the template is no longer in use by checking with your sales team.
- Consider whether any in-progress deals have quotes generated from this template that reps may need to regenerate.

To delete:

1. Select the template from the template dropdown.
2. Click the **Delete** button (trash icon) next to the template name.
3. Confirm the deletion in the prompt.

The template is removed immediately and will no longer appear in the generation dialog for reps.

## Tips

- **Archive rather than delete**: If you are unsure whether a template is still needed, rename it with an "- ARCHIVED" suffix (e.g., "Old SMB Template - ARCHIVED") instead of deleting. This keeps it visible for reference without cluttering the active template list.
- **Test edits before rollout**: After editing a template, use the Preview feature to verify the changes look correct before reps generate live quotes. See [Preview a Template with Real Data](/preview-a-template-with-real-data/).
- **Communicate changes to reps**: If you change a template's name or output format significantly, let reps know so they understand what to expect when they generate their next quote.

## Related

- [Create a New Template](/create-a-new-template/)
- [Configure Template Sections & Fields](/configure-template-fields/)
- [Preview a Template with Real Data](/preview-a-template-with-real-data/)

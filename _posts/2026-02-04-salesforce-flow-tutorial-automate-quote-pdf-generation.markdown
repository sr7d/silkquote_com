---
layout: post
title: "Salesforce Flow Tutorial: Automate Quote PDF Generation (Step-by-Step)"
description: "Step-by-step Salesforce Flow tutorial for automating quote PDF generation, including setup, configuration, and alternatives for admins."
date: 2026-02-04 10:00:00 +0300
author: admin
image: /images/introducing.png
image_caption: 'Salesforce Flow quote PDF automation tutorial'
tags: [articles]
---

Generating quote PDFs inside Salesforce is one of the most requested automation tasks among sales operations teams. While the platform ships with basic quoting capabilities, many organizations need more control over the document layout, data included, and delivery workflow. Salesforce Flow provides a way to build that automation without writing Apex, though the process involves several moving pieces.

This tutorial walks through the complete process of using Salesforce Flow for quote PDF generation, from choosing the right Flow type to saving the finished document on the record. It also covers the limitations admins should expect and an alternative approach for teams that want professional results without the build-and-maintain overhead.

---

## Understanding Salesforce Flow Quote PDF Generation

Salesforce Flow is the platform's declarative automation engine. It allows admins to build logic, screen interactions, data operations, and integrations using a visual canvas rather than code. For Salesforce Flow quote PDF generation, the idea is to collect Opportunity and Quote data, merge it into a formatted template, render the result as a PDF, and store that file back on the record.

The challenge is that Flow does not include a native PDF rendering engine. It can query data, perform calculations, and create records, but it cannot produce a formatted PDF document on its own. To bridge that gap, admins typically pair Flow with a Visualforce page that handles the actual rendering. This combination is the foundation of most Flow-based quote PDF workflows.

Before starting the build, it helps to decide which type of Flow is the best fit for the use case.

---

## Screen Flow vs. Record-Triggered Flow: Which to Choose

Salesforce offers several Flow types, and two are particularly relevant for Salesforce Flow quote PDF generation.

### Screen Flow

A Screen Flow includes user-facing screens that allow reps to interact with the process. For quote generation, a Screen Flow is useful when reps need to make choices before the PDF is created, such as selecting a template, toggling a draft watermark, or confirming the data before rendering. The rep launches the Flow manually, typically through a Quick Action button on the Opportunity or Quote page.

**Best for:** Manual, on-demand quote generation where the rep controls when and how the PDF is produced.

### Record-Triggered Flow

A Record-Triggered Flow fires automatically when a record meets certain criteria. For example, the Flow could trigger when a Quote's status field changes to "Approved," generating the PDF without any manual action from the rep. This approach is ideal for organizations that want quote documents created automatically at a specific stage in the sales process.

**Best for:** Automated, event-driven PDF generation tied to record changes.

For this tutorial, the Screen Flow approach is used because it gives admins the most flexibility during the learning process. The same underlying logic can later be adapted to a Record-Triggered Flow once the rendering pipeline is stable.

---

## Step 1: Create the Visualforce Page for PDF Rendering

Since Flow cannot render PDFs natively, the first step is to create a Visualforce page that acts as the quote template. This page uses the `renderAs="pdf"` attribute, which tells Salesforce to convert the HTML output into a PDF document when the page is accessed.

### Setting Up the Visualforce Page

1. Navigate to **Setup** and search for **Visualforce Pages** in the Quick Find box.
2. Click **New** to create a new page.
3. Give the page a descriptive name, such as `QuotePDFTemplate`.
4. In the markup editor, build the page using standard HTML and Visualforce merge fields.

A basic example of the page markup looks like this:

```html
<apex:page standardController="Opportunity"
           renderAs="pdf"
           applyBodyTag="false"
           showHeader="false"
           sidebar="false">
  <html>
    <head>
      <style>
        body { font-family: Arial, sans-serif; font-size: 11px; }
        .header { text-align: center; margin-bottom: 20px; }
        .company-name { font-size: 18px; font-weight: bold; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { border: 1px solid #ccc; padding: 6px; text-align: left; }
        th { background-color: #f2f2f2; }
        .total-row { font-weight: bold; background-color: #e8e8e8; }
      </style>
    </head>
    <body>
      <div class="header">
        <div class="company-name">{!Opportunity.Account.Name}</div>
        <div>Quote for: {!Opportunity.Name}</div>
        <div>Date: {!TODAY()}</div>
      </div>

      <table>
        <tr>
          <th>Product</th>
          <th>Quantity</th>
          <th>Unit Price</th>
          <th>Total</th>
        </tr>
        <apex:repeat value="{!Opportunity.OpportunityLineItems}" var="item">
          <tr>
            <td>{!item.Name}</td>
            <td>{!item.Quantity}</td>
            <td>{!item.UnitPrice}</td>
            <td>{!item.TotalPrice}</td>
          </tr>
        </apex:repeat>
        <tr class="total-row">
          <td colspan="3">Total</td>
          <td>{!Opportunity.Amount}</td>
        </tr>
      </table>
    </body>
  </html>
</apex:page>
```

This markup is standard HTML with Visualforce merge fields pulling data from the Opportunity and its related line items. No Apex controller is required because the page uses the standard Opportunity controller. The `renderAs="pdf"` attribute handles the conversion automatically.

### Customizing the Template

Admins can expand this template to include additional fields such as Account billing address, Contact information, quote expiration date, and payment terms. CSS styles control the visual layout, so admins with basic HTML knowledge can adjust fonts, colors, spacing, and table formatting to match brand guidelines.

---

## Step 2: Build the Screen Flow

With the Visualforce page in place, the next step is to create the Flow that drives the process.

### Creating the Flow

1. In **Setup**, navigate to **Flows** and click **New Flow**.
2. Select **Screen Flow** and click **Create**.
3. The Flow Builder canvas opens with a Start element.

### Adding a Record Variable

The Flow needs to know which Opportunity record to work with. Add a variable of type **Record** with the data type set to **Opportunity**. Name it something clear, such as `inputOpportunity`. Mark this variable as **Available for Input** so it can receive the record ID when launched from a Quick Action.

### Querying Related Data

Add a **Get Records** element to retrieve the full Opportunity record along with the fields needed for the PDF. Configure it to filter by the record ID passed into the Flow. Add additional Get Records elements if the template references data from related objects like Account, Contact, or Quote Line Items.

For example:

- **Get Records: Opportunity** -- Filter by Id equals `{!inputOpportunity.Id}`. Store all fields needed for the template.
- **Get Records: Opportunity Line Items** -- Filter by OpportunityId equals `{!inputOpportunity.Id}`. Store the collection of line items.
- **Get Records: Account** -- Filter by Id equals the AccountId from the retrieved Opportunity.

### Adding an Optional Screen Element

If the Flow should allow the rep to confirm or adjust settings before generating the PDF, add a Screen element. This screen could include:

- A text display showing the Opportunity name and amount for confirmation.
- A checkbox for enabling a draft watermark.
- A picklist for selecting a paper size.

This step is optional. If the goal is a single-click generation with no user interaction beyond launching the Flow, the screen can be omitted.

---

## Step 3: Invoke the Visualforce Page and Capture the PDF

This is the most technically involved step in the Salesforce Flow quote PDF generation process. The Flow needs to call the Visualforce page, capture the rendered PDF content, and prepare it for storage.

### Using an Apex Action

While the Visualforce page renders the PDF, Flow cannot directly call a Visualforce page and capture its output as a file. To bridge this gap, a lightweight Apex invocable action is needed. This action takes the Opportunity ID as input, calls the Visualforce page using `PageReference.getContentAsPDF()`, and returns the PDF content as a base64-encoded string.

Here is a simplified example of the invocable Apex class:

```java
public class GenerateQuotePDF {
    @InvocableMethod(label='Generate Quote PDF'
                     description='Renders the Visualforce quote template as PDF')
    public static List<String> generate(List<Id> opportunityIds) {
        List<String> results = new List<String>();
        for (Id oppId : opportunityIds) {
            PageReference pdfPage = Page.QuotePDFTemplate;
            pdfPage.getParameters().put('id', oppId);
            Blob pdfBlob = pdfPage.getContentAsPDF();
            results.add(EncodingUtil.base64Encode(pdfBlob));
        }
        return results;
    }
}
```

This class is a minimal Apex requirement. It does not contain business logic or complex controller behavior. Its sole purpose is to act as a bridge between the Flow and the Visualforce rendering engine.

### Adding the Action to the Flow

In the Flow Builder, add an **Action** element. Search for the invocable method by its label ("Generate Quote PDF"). Pass the Opportunity ID as the input parameter. The action returns the base64-encoded PDF content, which the Flow stores in a text variable for the next step.

---

## Step 4: Save the PDF as a ContentVersion Record

Once the Flow has the PDF content in a variable, the next step is to save it as a Salesforce file attached to the Opportunity.

### Creating the ContentVersion Record

Add a **Create Records** element to the Flow and configure it to create a ContentVersion record with the following field mappings:

- **Title** -- Set to a dynamic value such as "Quote - {Opportunity Name} - {Today's Date}".
- **PathOnClient** -- Set to a filename like "Quote.pdf". This tells Salesforce the file type.
- **VersionData** -- Set to the base64-encoded PDF string returned by the Apex action.
- **FirstPublishLocationId** -- Set to the Opportunity record ID. This automatically creates the ContentDocumentLink and attaches the file to the record.

After this element executes, the PDF appears in the Files related list on the Opportunity.

### Verifying the Output

Before deploying the Flow to the team, run it in debug mode against a test Opportunity. Open the generated file and verify that the layout, data, and formatting match expectations. Pay attention to edge cases such as line items with long product names, missing fields, and special characters in account or contact names.

---

## Step 5: Add a Quick Action to Launch the Flow

The final step is to give reps an easy way to trigger the Flow from the Opportunity record.

### Creating the Quick Action

1. Navigate to **Setup > Object Manager > Opportunity > Buttons, Links, and Actions**.
2. Click **New Action**.
3. Set the action type to **Flow**.
4. Select the Screen Flow created in the previous steps.
5. Give the action a clear label, such as "Generate Quote PDF".
6. Save the action.

### Adding the Action to the Page Layout

1. Open the Opportunity **Lightning Record Page** in the Lightning App Builder.
2. Add the Quick Action to the highlights panel or an action group.
3. Save and activate the page.

Reps now see a "Generate Quote PDF" button on every Opportunity. Clicking it launches the Screen Flow, which collects data, renders the PDF, and saves the file to the record.

---

## Limitations of the Flow-Based Approach

While Salesforce Flow quote PDF generation is a viable solution, it comes with several limitations that admins should weigh before committing to this path.

**HTML and CSS constraints in Visualforce PDF rendering.** The PDF rendering engine in Salesforce supports a subset of HTML and CSS. Features like flexbox, grid layout, web fonts, and advanced CSS selectors do not work reliably. Admins are limited to basic table-based layouts and inline styles, which restricts design flexibility.

**Maintenance overhead.** The solution spans multiple components: a Visualforce page, an Apex class, a Flow, and a Quick Action. Any change to the quote layout requires editing the Visualforce markup. Adding new fields means updating both the Visualforce page and potentially the Flow's data queries. Over time, this distributed maintenance becomes a burden, especially when multiple admins work on the same org.

**Testing difficulty.** Debugging the PDF output requires running the entire pipeline end to end. There is no way to preview the Visualforce PDF directly from the Flow Builder. Admins must activate the Flow, trigger it from a real record, and open the resulting file to see the output. This trial-and-error cycle slows down template iteration.

**Limited dynamic formatting.** Conditional sections, dynamic tables that adjust column count based on data, and rules-based content inclusion are technically possible but require increasingly complex Visualforce markup or additional Apex logic. What starts as a simple template can quickly become a maintenance challenge.

**No built-in template management.** If the organization needs multiple quote formats for different regions, product lines, or deal types, each format requires its own Visualforce page. There is no centralized template management interface, and switching between templates adds complexity to the Flow logic.

**Governor limits.** The `getContentAsPDF()` method counts against callout and heap size limits. For Flows that process multiple records or generate large documents, these limits can become a constraint.

---

## An Alternative: Purpose-Built Quote PDF Tools

For Salesforce admins who want professional quote PDFs without building and maintaining a multi-component automation pipeline, purpose-built applications offer a more streamlined path.

SilkQuote is one such application, available natively on the Salesforce AppExchange. It provides a visual drag-and-drop template designer that allows admins to build branded quote layouts by mapping Salesforce fields directly into the document, all without writing Visualforce markup, Apex code, or Flow logic. Templates support conditional sections, custom logos, terms and conditions rules, signature blocks, and multiple paper sizes out of the box.

The quote generation process in SilkQuote is a single Quick Action on the Opportunity record. A rep clicks the button, selects a template, and the PDF is generated and saved to the record in seconds. Admins can preview templates against live Opportunity data before deploying them, which eliminates the trial-and-error testing cycle that the Flow approach requires.

For organizations that need the control and flexibility of custom automation, the Flow-based approach described in this tutorial is a solid foundation. For teams that prefer to skip the build phase and start generating polished quote PDFs immediately, a tool like SilkQuote delivers the same end result with significantly less setup and ongoing maintenance.

---

## Summary

Salesforce Flow quote PDF generation is achievable with a combination of Flow, Visualforce, and a small Apex invocable action. The process involves creating a Visualforce template with `renderAs="pdf"`, building a Screen Flow to orchestrate data collection and file creation, writing a lightweight Apex class to bridge the rendering gap, and adding a Quick Action for rep access.

This approach works well for organizations with admins who are comfortable working across multiple Salesforce configuration surfaces. It offers flexibility and avoids third-party dependencies, at the cost of higher setup effort and ongoing maintenance.

For admins evaluating the right approach for their team, the key question is whether the time spent building and maintaining the Flow pipeline is justified by the level of control it provides, or whether a dedicated tool would deliver better results with less effort.

---

*Ready to generate professional quote PDFs without building Flows from scratch? [Install SilkQuote](/install/) to get started, or [reach out](/contact/) to see a live demo.*

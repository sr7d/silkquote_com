---
layout: post
title: Price Rule Logging in Salesforce CPQ
description: This guide outlines the process of implementing Salesforce logging for price rules in the CPQ system. It covers the importance of price rule logging, creating a rich text field, resetting it to avoid data issues, updating price rules, and offers a solution for automation. This resource helps businesses streamline pricing strategy management and sales processes in Salesforce CPQ.
date: 2023-10-19 15:01:35 +0300
author: admin
image: /images/PriceRuleLogging.png
image_caption: 
tags: [cpq,logging,video-guides]
featured:
video_embed: https://www.youtube.com/embed/HpF29uJwdyg?si=xWgBwcXxSRBjQ2YG
---
# Salesforce Logging for Price Rules in CPQ: A Step-by-Step Guide

Price rules play a vital role in this process, and tracking their behavior is essential. In this article, I'll walk you through the process of implementing Salesforce logging for price rules in CPQ. This approach involves using a rich text field, creating a new price rule action, building a flow for each new action, and updating the Lightning page for a comprehensive solution.

# Why Price Rule Logging Is Important

Price rule logging is essential for several reasons. It provides visibility into when, how, and in what order price rules are triggered, allowing you to:
- Debug pricing issues efficiently.
- Audit quotes for approval with confidence.
- Ensure pricing calculations aligned with the business process for this quote.

# Creating a Rich Text Field

***[I've done this for you in the Unmanaged Package (click here to install)](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tHs000000hKkd)***

To begin the logging process, we need a custom field to capture the relevant information. I'll use a rich text field for this purpose. Follow these steps to create one:

1. Access the setup menu
2. Navigate to Custom Objects: Go to "Objects and Fields" and select "Object Manager."
3. Select the Quote Object (SBQQ__Quote__c)
4. Create a Rich Text Field: Under "Fields & Relationships," click "New Custom Field."
5. Choose Data Type: Select "Rich Text Area" as the data type. Use the maximum number of characters or as many as you can spare.
6. Field Label and Name: Assign a label and name for this field. "PriceRuleLogging".

# Resetting the Rich Text Field

As you log data in the rich text field, we need to manage its size and prevent it from exceeding the maximum character limit. When the field approaches this limit, we can create a new price rule to reset it to null. This ensures that your logging remains effective and doesn't cause errors when quoting.

Configure the rule as follows:

- Price Rule

|Field|Value|
|----|------|
|Price Rule Name|PriceRuleLogging - max char reset|
|Evaluation Scope|Calculator|
|Calculator Evaluation Event|Before Calculate|
|Evaluation Order|0|
|Conditions Met|All|
|Active|True|

- Price Condition

|Field|Value|
|----|------|
|Object|Quote|
|Tested Formula|LEN(cpqdev__PriceRuleLogging__c)|
|Operator|greater than|
|Filter Type|Value|
|Filter Value|130000 (or whatever your max number of chars is)|

- Price Action

|Field|Value|
|----|------|
|Object|Quote|
|Target Field|***The API name of your field***|

# Updating Price Rules with a New Action

The next step is to create a new price rule action for each price rule you want to log. This action will update the rich text field with relevant information when the rule is executed.
Create a new action for an existing Price Rule or dataload a new price action for each rule you want to log. Use the following values to create your price action:

|Field|Value|
|----|------|
|Object|Quote|
|Target Field|***The API name of your field***|
|Formula|IF (cpqdev__PriceRuleLogging__c = null, "<ol>", LEFT(cpqdev__PriceRuleLogging__c, LEN(cpqdev__PriceRuleLogging__c) - 4)) + "<li><strong>The Name Of Your Price Rule</strong> - " + NOW() + "</li></ol>"|

# Create a Flow To Handle New Price Rules

***[I've done this for you in the Unmanaged Package (click here to install)](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tHs000000hKkd)***

While the above method is effective, it will require you to follow the same steps for every new price rule. To streamline the process, you can build a flow that automates the creation of a new action for each rule. This flow will make your system more scalable and easier to manage.

# Updating the Lightning Page

To access the logged information easily, you should consider updating your Lightning page layout for the Quote object. By including the "Price Rule Log" field, you can view the log directly on the quote record, simplifying debugging and analysis.

# Simplify with an Unmanaged Package

If you find the process of implementing price rule logging complex or time-consuming, I've created an ***[Unmanaged Package (click here to install)](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tHs000000hKkd)*** that contains the necessary components and configurations to do this for you on all new price rules, however you will still need to dataload actions for existing price rules. If your org is using a custom domain you will need to replace "login.salesforce.com" with your orgs domain name, or to install it in a sanbox replace it with "test.salesforce.com" or the sandboxes domain name.

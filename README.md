# data-analytics-power-bi-report377
## Milestone 5 - Build the Customer Detail page.
### - Task 1: Create Headline Card Visuals
Used this DAX formula to create the [Revenue per Customer] measure:

    Revenue per Customer = DIVIDE([Total Revenue], [Total Customers], 0)

Then incorporated it into card visuals, as per task instructions:  
(For visual purposes, Revenue per Customer format changed to 2 decimal places and assumed to be in Sterling)

![alt text](images/M5T1.jpg)

### - Task 2: Create the Summary Charts
Two Donut Charts created, as instructed (colours left as default):
![alt text](M5T2.jpg)

### - Task 3: Create the Line Chart
Line Chart created as per instructions, with settings for trend line and forecast.

![alt text](M5T3a.jpg)
![alt text](M5T3b.jpg)![alt text](M5T3c.jpg)

### - Task 4: Create the Top 20 Customers Table
Table created, as instructed:
(Note - values with blank names excluded as seen in the filter screenshot)

![alt text](M5T4a.jpg)

With these settings:

![alt text](M5T4b.jpg) ![alt text](M5T4c.jpg) ![alt text](M5T4d.jpg)

### - Task 5: Create the Top Customers Cards
Cards created as instructed, with settings similar to task 3:
(Headings renamed to reflect presentational context)

![alt text](M5T5.jpg)

### - Task 6: Add a Date Slicer
Slicer added as instructed:

![alt text](M5T6.jpg)

### - Finished Page

![alt text](Finish.jpg)


## Milestone 6 - Create an Executive Summary Page.
### - Task 1: Create the Card Visuals
Green chosen to be stand out.

![alt text](M6T1a.jpg)

### - Task 2: Add a Revenue Trending Line Chart

![alt text](M6T2.jpg)

### - Task 3: Add Donut Charts for Revenue by Country and Store Type
(Label formatting adjusted due to space).

![alt text](M6T3-1.jpg)

### - Task 4: Add a Bar Chart of Orders by Product Category

![alt text](M6T4.jpg)

### - Task 5: Add KPI Visuals
Used these DAX formulas to create the required measures:

    Previous Quarter Profit = CALCULATE([Total Profit],PREVIOUSQUARTER('Date Table'[StartOfQuarter]))

    Previous Quarter Revenue = CALCULATE([Total Revenue],PREVIOUSQUARTER('Date Table'[StartOfQuarter]))

    Previous Quarter Orders = CALCULATE([Total Orders],PREVIOUSQUARTER('Date Table'[StartOfQuarter]))

    Target Profit = [Previous Quarter Profit] * 1.05

    Target Revenue = [Previous Quarter Revenue] * 1.05

    Target Orders = [Previous Quarter Orders] * 1.05

KPIs created as follows:

![alt text](M6T5.jpg)

### - Finished Page

![alt text](<M6 Finish.jpg>)

## Milestone 7 - Create a Product Detail Page
 - Completed but awaiting guidance on accuracy on some of the visualisations. Will update README in due course.

## Milestone 8 - Create a Stores Map Page
 - Completed but confusion in respect of instructions regarding drillthrough, and tooltip. Will update README in due course.

## Milestone 9 - Cross-Filtering and Navigation
### - Task 1: Cross-filtering enacted as instructed.
### - Task 2: Finish the Navigation Bar
 - Buttons added as required - example below.

![alt text](M9T2.jpg)


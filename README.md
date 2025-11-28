# Superstore Analytics Dashboard (Power BI)

🚀 Welcome to the **Superstore Analytics Project** repository.

This project is an interactive Dashboard built in **Power BI**, using the public Kaggle Superstore dataset.  
The dashboard answers key business questions around **sales performance**, **profitability**, **returns**, and **customer segmentation**.

You can interact with the live dashboard here:  
 **https://app.powerbi.com/view?r=eyJrIjoiZjIyNzljNjMtZWQwNy00NjE4LWFiZTMtN2NhOTA1M2M2ODA2IiwidCI6IjIyODhlZGEwLWZiMTQtNDVlZS05OTY2LWE4ZGIwNDY2YzUzOSIsImMiOjEwfQ%3D%3D&pageName=fd0c27f131064400c6b0**

---

##  Dashboard Preview

![Dashboard Preview](https://github.com/user-attachments/assets/b47446aa-7a65-4d88-91a7-adf998d15dee)


---

##  Business Questions Answered

1. **Key Metrics:**  
   Sales, Profit, % Returned Orders, and **% change vs Previous Year (PY)**

2. **Sales vs Previous Year Over Time:**  
   Month-over-month sales performance compared to PY trends

3. **Most Profitable vs Loss-Making Products:**  
   Identify products generating the highest profit and products losing money

4. **Profit by Location (State):**  
   Which states are driving the most profit?

5. **Sales by Segment:**  
   Performance of Consumer, Corporate, and Home Office segments

---

##  Dataset Information

- **Source:** Kaggle – Superstore Dataset  
- **Dataset Link:** https://www.kaggle.com/datasets/bitricks/superstore-dataset
- **Key fields used:**
  - `Order Date`
  - `Sales`, `Profit`
  - `Customer Segment`
  - `State`

---

##  Data Preparation & Modeling

In Power Query:

✔ Remove Columns                                                                                                                                                       
✔ First Row as Header

In Power BI:

✔ Created a **Date Table** to enable time-intelligence                                                                                                              
✔ Built data model relationships                                                                                                                                  
✔ Created DAX measures:
- Total Sales  
- Total Profit  
- % of Returned Orders  
- Sales PY, Profit PY  
- % Change vs Previous Year  

✔ Added conditional formatting for profit gain/loss and sales segment                                                                                             
✔ Designed a clean, interactive layout for analysis

---

##  Dashboard Components

### **1. KPI Cards**
- Total Sales  
- Total Profit  
- % Returned Orders  
- Previous Year values  
- Growth % vs PY  

### **2. Sales vs Previous Year Trend**
Line chart comparing:
- Current year sales  
- Previous year sales  

### **3. Profit by Product**
Identifies:
- Top profit-generating products  
- Loss-making products (negative profit)

### **4. Profit by State (Map)**
Shows geographical contribution of profit across the US.

### **5. Sales by Segment**
Donut chart showing distribution across:
- Consumer  
- Corporate  
- Home Office  

---

##  Key Insights (From Dashboard)

- Total **Sales:** $2.3M  
- Total **Profit:** $292.3K  
- **Sales grew 47%** vs previous year  
- **Profit grew 48%** vs previous year  
- Return rate: **5.79%**, improved from last year  
- Technology accessories and copiers are highly profitable  
- Tables (Furniture) show significant losses  
- California and New York drive the highest profits  
- Consumer segment contributes ~50% of total sales  

---

##  Tools Used

- **Power BI** (main tool)
- **DAX** for time intelligence & measures
- **Excel** (data source)
- **Kaggle** dataset

---


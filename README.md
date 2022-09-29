# Customer Loyalty Program for E-Commerce

This project consists of identifying the most valuable group of customers to create a loyalty program.

![online-shopping-4516036__340](https://user-images.githubusercontent.com/105643907/192764287-a556c53e-c6b8-46be-80fb-2e03fa4fe472.jpg)


# Business Problem


APA LTDA is a fictitious company that sells various items through an 'e-commerce' (data obtained from Kaggle).
After 1 year of operation (2016/11 - 2017/12), the business team noticed that some customers in its base buy high-ticket products with high frequency and contribute significantly to the company's revenue. Based on this perception, the data team was asked to select the best customers from the base through advanced data manipulation techniques, so that the marketing team can later launch a loyalty program called "Insiders", with the objective of increasing retention and revenue.

In addition to the Insiders group, the other groups of customers found will receive appropriate marketing strategies, whether with the aim of leveraging, avoiding churn, etc.

# Challenges

As a result of this project, the delivery of a list of people eligible to participate in the Insiders program is expected, as well as the following business questions must be answered to the marketing area:

- Who are the people eligible to participate in the Loyals program?
- How many customers will be part of the group?
- What are the main characteristics of these customers?
- What is the percentage of revenue contribution from Loyals?
- What is the revenue expectation of this group for the coming months?
- What are the conditions for a person to be eligible for Loyals?
- What are the conditions for a person to be removed from Loyals?
- What is the guarantee that the Loyals program is better than the rest of the base?
- What actions can the marketing team take to increase revenue?

# Business Assumptions

- Purchases with zero price will not be considered (removed).
- Items whose stock code has only alphabetic characters (such as D', 'DOT', 'M', 'POST') will not be considered in the calculations.
- The negative "quantity" attribute means a product return.
- Customers who return more products than they purchased will not be considered (removed).
- Purchases whose customer id is unknown will not be considered (removed).

# Attribute List

- InvoiceNo - unique identifier for each transaction
- StockCode - product code (item)
- Description - product name and description
- Quantity - quantity of items of each product per transaction
- InvoiceDate - date (day) on which the transaction was carried out
- UnitPrice - unit price of each product (item)
- CustomerID - unique identifier for each customer
- Country - name of the country where the customer resides

# Solution Strategy

## The management method used was CRISP-DM:

**Step 00. Solution Planning:** Solution planning, considering the business context. Consider Input, Output and Tasks to be performed.

**Step 01. Data Description:** 
- Rename columns, understand dimensions and data types.
- Verification and treatment of missing data.
- Changes in data types that are necessary.
- Analyze numerical and categorical attributes through descriptive statistics.

**Step 02. Data Filtering:** 
- Filter irrelevant rows and columns for modeling, according to descriptive statistics.

**Step 03. Feature Engineering:** 
- Changing the granularity from InvoiceNo to CustomerID
- New attributes are derived through the original variables, in order to better describe the phenomenon to be modeled.

**Step 04. Exploratory Data Analysis:** 
- Univariate analysis using Pandas Profiling.
- Exploration of data to understand its distribution in the data space (embedding space), understand the behavior of the business, and measure the impact of variables on the model.

**Step 05. Data Preparation:** 
- Apply transformations to features to facilitate learning and execution of the model.

**Step 06. Selection of resources:** 
- Select the variables that best describe the model and eliminate redundant variables that do not have information for learning. 

**Step 07. Hyperparameter Fine Tunning:** 
- Execution of machine learning models with different Ks (number of groups), in the feature space and in the embedding space.
- Fine-tune the hyperparameters in each model, identifying the best set of parameters to maximize its learning ability.

**Step 08. Machine Learning Modeling:** 
- Run different machine learning models and select the one with the best performance based on the chosen metrics (Silhouette Score).

**Step 09. Convert model performance to business values:** 
- Analysis of the profile (attributes) of each cluster found by the model.
- Plot results translating to the business team.

**Step 10. Exploratory Data Analysis for Business:** 
- Creation, prioritization and validation of hypotheses.
- Answer business questions.

**Step 11. Deploy to Production:** 

- Planning and implementation of the model deployment architecture locally.
- Build and test the architecture in the AWS environment, through S3, EC2 and RDS.
- Build and validate the dashboard in Metabase.

![ffdfdfdfdf](https://user-images.githubusercontent.com/105643907/193111797-d372173f-e81a-400b-9e2f-23c33614c3c8.jpg)



# Top Data Insights

**H1: Customers in the Insiders cluster have a number of returns below the average of the total customer base.** 

**False**: The average of the returns from the insider cluster is: 107.00. The total base average is: 31.00.


**H2: Insiders cluster customers have a volume (turnover) of purchases above 20% of total purchases.**

**True**: The Insiders cluster has a GMV volume of 60.21%.


**H3: Insiders cluster customers have a purchase volume of unique products above 20% of total purchases.**

**True**: The Insiders cluster has a unique product purchase volume of 55.89%. 



# Used Machine Learning Models

## Algoritmos de Clusterização utilizados:
- K-Means 
- GMM (Gaussian Mixture Model)
- HC (Hierarchical Clustering) 
- DBScan.

## Algorithms used to create the embedding spaces:
- PCA
- UMAP
- t-SNE
- Embedding with Random Forest.

# Machine Learning Model Performance

The performance of the models was measured through the metrics Within-Cluster Sum of Square (WSS) and SS (Silhouette Score).
Considering that SS is applicable to all clustering models tested, this was the metric chosen.
Algorithms get approximate results. So I chose GMM.

# Business Result

## How many customers will be part of the group?
1407

## What are the main characteristics of these customers?
- Cluster Insider
    - Number of customers: 1407 (24.7% of customers)
    - Average recency: 93 days
    - Average types of products purchased: 209 products
    - Frequency of Products purchased: 0.49 products/days
    - Average revenue: $4,324.13
## What percentage of revenue contribution comes from Insiders? 
60.21%

## What are the conditions for a person to be eligible for Insiders?
Behavior close to that of the Insiders group

## What are the conditions for a person to be removed from Insiders?
Stay below the numbers of Insiders groups

COLOCAR DASHBOARD METABASE

# Lessons Learned
- How to develop a Clustering project (Unsupervised)
- How to use AWS tools (S3, EC2 and RDS).
- How to use Metabase.
- The need to have a good understanding of the business to solve certain project problems.

# Next Steps to Improve
- Develop cleaner and more objective code and notebooks. 
- Create more features to improve model learning.
- Test other embedding spaces with more dimensions.
- Use Aiflow as a virtual management tool.

# How to access the prediction

## Pre-requirement



# Conclusion

Based on the business results, the marketing team can use strategies aimed at each group of customers, thus making better use of financial resources, as well as leveraging the company's revenue through new customers and greater engagement of current customers.

# Technologies

- Jupyter Notebook
- Python
- Git/Github
- Crontab and Papermill
- AWS Services: S3 (storage), EC2 (server) and RDS (database).

# Deploy into production


# Author

Eduardo Amorim

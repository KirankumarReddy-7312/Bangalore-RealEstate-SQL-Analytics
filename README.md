# Bangalore-RealEstate-SQL-Analytics
SQL-based real estate analytics project using 8 Bangalore datasets

# Bangalore Real Estate Analytics System

## Overview

This project analyzes real estate data from multiple Bangalore locations using SQL. The goal is to extract meaningful insights related to pricing trends, property demand, and location-based comparisons.

## Datasets

The project uses real datasets from the following locations:
* Bellandur
* Brookefield
* Electronic City
* KR Puram
* Kaggadasapura
* Varthur
* Whitefield
* Yelahanka

## Approach
* Imported multiple CSV datasets into MySQL as separate tables
* Combined all datasets into a single unified view using UNION ALL
* Performed SQL-based analysis on the consolidated data

## SQL Concepts Used
* Aggregations (AVG, COUNT, MAX)
* GROUP BY and ORDER BY
* Subqueries
* Window Functions (RANK, SUM OVER)
* Views

## Key Analysis
* Average property price by location
* Identification of top expensive locations
* Property type demand analysis
* Price per square foot comparison
* Bedroom-wise demand distribution
* Affordable and premium housing segmentation

## Project Structure
* datasets/ : contains all raw CSV files
* sql/ : contains SQL scripts for view creation and analysis queries

## How to Run
1. Import all CSV files into MySQL as separate tables
2. Execute create_view.sql to create a unified dataset
3. Execute analysis_queries.sql to perform data analysis

## Outcome
This project demonstrates the ability to work with real-world datasets, design SQL-based data models, and generate insights for business decision-making.

# Permian Basin Production Analytics Dashboard  
**A Power BI dashboard powered by PostgreSQL views to deliver daily BOE trends and downtime insights.**

## Overview  
This project ingests production and downtime data from the Permian Basin, transforms it via SQL views, and presents it in an interactive Power BI report. It enables operations managers to track daily BOE versus a 7-day rolling average and pinpoint top downtime causes by field.

## Architecture  
1. **PostgreSQL Views** (in `/sql/create_views.sql`)  
2. **Power BI Report** (in `/reports/permian_dashboard.pbix`)  
3. **Published Dashboard** (Power BI Service with scheduled refresh)

## Folder Structure  


## Setup  
1. Restore the `permian_analytics` database in PostgreSQL.  
2. Run `sql/create_views.sql`.  
3. Open `reports/permian_dashboard.pbix` in Power BI Desktop.  
4. Connect to `localhost:5432`, database `permian_analytics`, user `postgres`, no password.

## Usage  
- **Filters:** Date range, Field  
- **Visuals:**  
  - KPI cards: Total BOE, 7-day average  
  - Line chart: Daily BOE vs. rolling average  
  - Bar chart: BOE by Field  
  - Table: Downtime reasons and hours

## Contact  
Mike [Your Last Name] — mike@example.com — linkedin.com/in/yourprofile

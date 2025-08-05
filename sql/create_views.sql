-- create_views.sql
CREATE OR REPLACE VIEW vw_daily_boe AS
SELECT
  well_id,
  prod_date,
  COALESCE(oil_bbl,0) + COALESCE(gas_mcf,0)/6.0 AS boe,
  water_bbl
FROM production;

CREATE OR REPLACE VIEW vw_field_daily AS
SELECT
  w.field,
  d.prod_date,
  SUM(d.boe) AS total_boe
FROM vw_daily_boe d
JOIN wells w USING (well_id)
GROUP BY w.field, d.prod_date;

CREATE OR REPLACE VIEW vw_downtime_7d AS
SELECT well_id, reason, SUM(hours_down) AS hours_7d
FROM downtime
WHERE dt_date >= CURRENT_DATE - INTERVAL '7 days'
GROUP BY well_id, reason;

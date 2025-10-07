SELECT date,close,
LEAD(close) OVER(
ORDER BY date) AS next_month_close,
LAG(close) OVER(
ORDER BY date) AS prev_month_close,
close-LAG(close,3) OVER(
ORDER BY date) AS difference
FROM stock_prices
WHERE EXTRACT(YEAR FROM date)=2023 AND ticker='GOOG';

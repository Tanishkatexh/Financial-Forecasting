# DAX Measures

This document contains the DAX measures used in the Financial Forecasting Power BI dashboard.

The measures are organized by business function and support financial performance analysis, budget and variance analysis, revenue forecasting, profitability analysis, and cost scenario analysis.

---

## Core Financial Measures

### Total Revenue

```DAX
Total Revenue = SUM(financials[revenue])
```

### Total Cost

```DAX
Total Cost = SUM(financials[total_cost])
```

### Total Profit

```DAX
Total Profit = SUM(financials[profit])
```

### Profit Margin

```DAX
Profit Margin = DIVIDE([Total Profit], [Total Revenue])
```

## Budget & Variance Measures

### Budget Revenue

```DAX
Budget Revenue = SUM(budget[budget_revenue])
```

### Budget Cost

```DAX
Budget Cost = SUM(budget[budget_cost])
```

### Revenue Variance

```DAX
Revenue Variance = [Total Revenue] - [Budget Revenue]
```

### Cost Variance

```DAX
Cost Variance = [Total Cost] - [Budget Cost]
```

## Forecasting Measures

### Forecast Revenue

```DAX
Forecast Revenue = 
AVERAGEX(
	VALUES('Date Table'[Month]),
	[Total Revenue]
)
```

### Rolling 3 Month Revenue

```DAX
Rolling 3 Month Revenue = 
CALCULATE(
	[Total Revenue],
	DATESINPERIOD(
	'Date Table'[Date],
	MAX('Date Table'[Date]),
	-3,
	MONTH
    )
) / 3
```

### Next Month Forecast

```DAX
Next Month Forecast = 
CALCULATE(
	[Total Revenue],
	DATEADD('Date Table'[Date], 1, MONTH)

)
```

## Cost Scenario Analysis

### Adjusted Cost

```DAX
Adjusted Cost = 
[Total Cost] * (1 + SELECTEDVALUE('Cost Increase %'[Cost Increase %]))
```

### Adjusted Profit

```DAX
Adjusted Profit = 
[Total Revenue] - [Adjusted Cost]
```






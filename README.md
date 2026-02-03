# Financial net income prediction
This study examines how key financial statement variables influence corporate net income. Regression-based models are used to identify significant predictors and assess the ability of financial data to predict profitability.

## Research Question:
Which financial indicators most significantly influence companies’ net income, and how accurately can net income be predicted using financial statement variables?

## Data overview:
- **Ticker Symbol:** The stock market symbol of the company
- **Period Ending:** The end date of the financial reporting period
- **Accounts Payable:** Money the company owes to suppliers
- **Accounts Receivable:** Money customers owe to the company
- **Add'l income/expense items:** Unusual or non-regular income or expenses
- **After Tax ROE:** Return on equity after taxes
- **Capital Expenditures:** Money spent on long-term assets
- **Capital Surplus:** Extra paid-in capital beyond par value
- **Cash Ratio:** Ability to cover current liabilities using only cash
- **Cash and Cash Equivalents:** Cash and highly liquid assets
- **Changes in Inventories:** Increase or decrease in inventory levels
- **Common Stocks:** Value of issued common shares
- **Cost of Revenue:** Direct cost of producing goods or services
- **Current Ratio:** Current assets divided by current liabilities
- **Deferred Asset Charges:** Expenses paid now for future periods
- **Deferred Liability Charges:** Obligations deferred to future periods
- **Depreciation:** Allocation of asset cost over its useful life
- **Earnings Before Interest and Tax (EBIT):** Profit before interest and taxes
- **Earnings Before Tax (EBT):** Profit before income tax
- **Effect of Exchange Rate:** Impact of currency fluctuations on finances
- **Equity Earnings/Loss Unconsolidated Subsidiary:** Profit or loss from non-consolidated subsidiaries
- **Fixed Assets:** Long-term tangible assets
- **Goodwill:** Excess value paid during acquisitions
- **Gross Margin:** Gross profit as a percentage of revenue
- **Gross Profit:** Revenue minus cost of revenue
- **Income Tax:** Taxes paid on earnings
- **Intangible Assets:** Non-physical assets like patents or brands
- **Interest Expense:** Cost of borrowed money
- **Inventory:** Goods held for sale or production
- **Investments:** Funds invested in other entities or assets
- **Liabilities:** Total company obligations
- **Long-Term Debt:** Debt due after one year
- **Long-Term Investments:** Investments held for more than one year
- **Minority Interest:** Ownership held by non-controlling shareholders
- **Misc. Stocks:** Other stock-related holdings
- **Net Borrowings:** New debt minus debt repayments
- **Net Cash Flow:** Net change in cash position
- **Net Cash Flow-Operating:** Cash generated from core operations
- **Net Cash Flows-Financing:** Cash from debt and equity financing
- **Net Cash Flows-Investing:** Cash used for investments and asset purchases
- **Net Income:** Final profit after all expenses
- **Net Income Adjustments:** Non-cash or special adjustments to income
- **Net Income Applicable to Common Shareholders:** Income available to common shareholders
- **Net Income-Cont. Operations:** Income from ongoing business activities
- **Net Receivables:** Accounts receivable after allowances
- **Non-Recurring Items:** One-time gains or losses
- **Operating Income:** Profit from normal business operations
- **Operating Margin:** Operating income divided by revenue
- **Other Assets:** Assets not classified elsewhere
- **Other Current Assets:** Short-term assets not listed separately
- **Other Current Liabilities:** Short-term obligations not listed separately
- **Other Equity:** Equity components outside common categories
- **Other Financing Activities:** Financing activities not classified elsewhere
- **Other Investing Activities:** Investing activities not classified elsewhere
- **Other Liabilities:** Liabilities not separately identified
- **Other Operating Activities:** Operating activities outside core categories
- **Other Operating Items:** Miscellaneous operating items
- **Pre-Tax Margin:** Profit before tax as a share of revenue
- **Pre-Tax ROE:** Return on equity before taxes
- **Profit Margin:** Net income divided by revenue
- **Quick Ratio:** Ability to pay current liabilities without inventory
- **Research and Development:** Spending on innovation and product development
- **Retained Earnings:** Accumulated profits kept in the company
- **Sale and Purchase of Stock:** Transactions involving company shares
- **Sales, General and Admin. (SG&A):** Operating overhead costs
- **Short-Term Debt / Current Portion of Long-Term Debt:** Debt due within one year
- **Short-Term Investments:** Investments intended to be held briefly
- **Total Assets:** All company assets
- **Total Current Assets:** Assets expected to be used within one year
- **Total Current Liabilities:** Obligations due within one year
- **Total Equity:** Shareholders’ ownership value
- **Total Liabilities:** All company debts
- **Total Liabilities & Equity:** Assets financed by debt and equity
- **Total Revenue:** Total sales or income
- **Treasury Stock:** Company shares repurchased and held
- **For Year:** Fiscal year of the report
- **Earnings Per Share (EPS):** Profit allocated to each share
- **Estimated Shares Outstanding:** Approximate number of shares in circulation

## Data Preprocessing:
Step 1 – Remove Target-Derived Features:
Financial variables that directly represent or are derived from net income were removed to prevent data leakage and ensure a valid regression model.
Step 2 – Remove Low-Variability Features:
Out of 67 features (1,781 instances), columns with fewer than 200 unique values were removed to eliminate low-variability features, leaving only informative features for regression.
Step 3 – Remove Highly Correlated Features:  
Out of the remaining features after Step 2, 9 columns with correlation greater than 0.9 were removed to prevent redundancy and ensure model stability.
Step 4 _ Stepwise feature selection was applied, resulting in a set of independent and informative features for regression modeling.

## Work in Progress
The project is currently in progress.

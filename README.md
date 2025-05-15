# 📈 Data Analysis Project – Electric Production, Cost of Living, Crime & Green Energy

This project was completed as a term paper for the Data Analysis course at Yıldız Technical University. It includes exploratory data analysis, time series visualization, distribution analysis, and thematic comparisons using multiple real-world datasets.

## 📁 Datasets Used
- **Electric_Production.csv**: Monthly electricity production data from 1985 to 2018.
- **Cost of Living Index 2020**: Country-wise living cost indices from Numbeo (cross-sectional).
- **veriseticountry.csv**: Crime rate data from 2013 to 2023 across 5 countries.
- **yesilenerji.csv**: Percentage of renewable energy production by country over time.

## 🔍 Key Analyses

### 📊 1. Cost of Living (Cross Sectional Analysis)
- Measures: Mean, Median, Std. Dev., Variance, CV, Skewness, Kurtosis
- Visuals: Histogram, Polygon, Dot plot, Box plot, Line graph, Density plot, P-P Plot, CDF
- Interpretation: Slight positive skewness, moderate kurtosis, CV ~ 37%

### 📈 2. Electric Production (Time Series)
- Monthly series from 1985–2018
- Graphs: Histogram, Polygon, Line chart, Density curve, Box plot
- Generated synthetic normal data for distribution comparison
- Identified stability, normality, and central tendencies

### 🗺️ 3. Crime Rate Trends (2013–2023)
- Countries: US, UK, Germany, Spain, Italy
- Barplots by year and comparison via `ggplot` line graphs
- Found that US shows increasing crime trend, while Germany shows decline

### 🌱 4. Renewable Energy Visualization
- Tracked and compared % of renewable energy production across 5 countries
- Created line plots for time-based trends and barplots per country

### ⭐️ 5. Special Graphs & Explorations
- Triangle and star-shaped plots with toy data
- Mosaic chart for categorical breakdown by gender and age
- Parallel coordinate plots using GGobi

## 🛠️ Tools & Libraries
`R`, `ggplot2`, `moments`, `dplyr`, `lubridate`, `xts`, `imputeTS`, `GGally`

## 📌 Outcomes
- Gained hands-on experience with data visualization, distribution fitting, and time series exploration.
- Practiced interpreting skewness, kurtosis, and CV in real-world data.
- Learned cross-country comparison techniques and advanced plotting.

---

> **Prepared by**: Metin Mirza VATANSEVER  
> **Lecturer**: Prof. Dr. Ali Hakan BÜYÜKLÜ  
> **Course**: Data Analysis (IST2252)

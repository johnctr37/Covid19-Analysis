# COVID-19 Data Analysis Project

This project involves analyzing COVID-19 data from two primary tables: CovidDeaths and CovidVaccinations. The project aims to explore various aspects of the pandemic, such as infection rates, death rates, vaccination progress, and their relationships across different locations.

## SQL Queries and Analysis

### 1. *Basic Data Exploration*
   - Querying CovidDeaths to fetch records where the continent is specified.
   - Sorting the data by location and date.

### 2. *India-Specific Analysis*
   - *Death Probability in India:* Calculates the likelihood of dying if one contracts COVID-19 in India.
   - *Infection Rate in India:* Calculates the percentage of the Indian population infected with COVID-19.

### 3. *Global Insights*
   - *Highest Infection Rate:* Identifies the country with the highest infection rate compared to its population.
   - *Highest Death Count:* Lists countries and continents with the highest death tolls.

### 4. *Global Daily and Total Statistics*
   - Analyzes the global daily and total cases, deaths, and death percentages.

### 5. *Vaccination Analysis*
   - *Vaccination Progress:* Joins CovidDeaths and CovidVaccinations tables to calculate the rolling number of vaccinated individuals by location and date.
   - *Population vs. Vaccination:* Computes the percentage of the population vaccinated.

### 6. *View Creation for Visualization*
   - *PercentPopulationVaccinated View:* Creates a view to store data on the percentage of the population vaccinated, useful for visualization purposes.
     
### 7. *Dashboard and Visualization*
An HTML file has been added to showcase a Tableau dashboard that visualizes the results of the COVID-19 data analysis.
## Usage

- The SQL scripts can be executed on a database containing CovidDeaths and CovidVaccinations tables under the PortfolioProject schema.
- The data fetched and calculated through these queries can be visualized using tools like Tableau, Power BI, or any other visualization software.

## Key Insights

- This project provides insights into the spread and impact of COVID-19 across different regions.
- It helps in understanding the effectiveness of vaccination campaigns by comparing infection and death rates before and after vaccination drives.


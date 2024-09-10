select * from PortfolioProject..CovidDeaths 
where continent is not null
order by 3,4


--select * from PortfolioProject..CovidVaccinations order by 3,4

select location, date, population, total_cases, new_cases, total_deaths  
from PortfolioProject..CovidDeaths 
where continent is not null 
order by 1,2

-- Looking at the total cases and the total deaths
-- Likelihood of dying if one contracts covid in India
select location, date, NULLIF(total_cases,0) as total_cases, total_deaths, (total_deaths/NULLIF(total_cases,0))*100 as DeathPercentage  
from PortfolioProject..CovidDeaths 
where location like '%india%' 
and continent is not null
order by 1,2

-- Looking at the total cases and the Population
-- Percentage of people infected by covid in India
select location, date, total_cases, population, (total_cases/population)*100 as PercentageofInfected  
from PortfolioProject..CovidDeaths 
where location like '%india%' 
order by 1,2

--Checking the country with the highest infection rate compared to population
select location, max(total_cases) as HighestnoCases, population, max((total_cases/population)*100) as PercentageofInfected  
from PortfolioProject..CovidDeaths 

group by location, population
order by PercentageofInfected desc

--Countries with highes Death Count 
select location, max(total_deaths) as HighestnoDeaths
from PortfolioProject..CovidDeaths 
where continent is not null and total_deaths is not null and total_deaths>0
group by location
order by HighestnoDeaths desc

--Continents with highest Death Count 
select continent, max(total_deaths) as HighestnoDeaths
from PortfolioProject..CovidDeaths 
where continent is not null and total_deaths is not null and total_deaths>0
group by continent
order by HighestnoDeaths desc

-- Global Numbers

--day to day basis
select date, MAX(total_cases) as TotalCases, Max(total_deaths)as TotalDeaths, Max(total_deaths)/max(total_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths 
--where location like '%india%' 
where continent is not null
group by date
order by 1,2

--Total
select MAX(total_cases) as TotalCases, Max(total_deaths)as TotalDeaths, Max(total_deaths)/max(total_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths 
--where location like '%india%' 
where continent is not null
order by 1,2


order by 1,2,3

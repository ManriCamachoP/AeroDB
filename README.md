# Florida Flights Database

This repository contains the implementation of a MySQL database designed for managing information about flights in Florida, USA. The data is obtained through web scraping Wikipedia and connecting to the OpenSky API using Python.

## About the Project

The research focuses on efficient management and analysis of flight information in Florida. The data includes details about airports, airlines, and flight routes.

## Data Collection and Cleaning

### Web Scraping
To collect data about airports and airlines in Florida, web scraping has been employed using Python. The code for this task can be found in the [web_scraping](src/web_scraping) directory. This script extracts information from relevant Wikipedia pages and stores it in CSV files.

### API Integration
Flight information has been obtained from the OpenSky API. The notebook for connecting to the API and processing the data can be found in the [api_integration](src/api_integration) directory.

## Database Creation

The resulting database is located in the [database](database) directory, where you will find a file named `AeroDB.sql` containing the schema and structure. Data from web scraping and API integration has been inserted into the MySQL database.

## Data Analysis

SQL queries in [mysql_queries.sql](queries/mysql_queries.sql) have been used to analyze the Florida flights data. The objectives include finding the airport with the most flights, the airline with the most flights, and the most frequented flight route in Florida.

## Repository Contents

- **src/**
  - *web_scraping/*
    - [Web_Scraping_for_Collecting_Airline_Data.ipynb](src/web_scraping/Web_Scraping_for_Collecting_Airline_Data.ipynb)
    - [Collecting_Airport_Data_in_Florida.ipynb](src/web_scraping/Collecting_Airport_Data_in_Florida.ipynb)
  - *api/*
    - [Connecting_to_API_for_Collecting_Flights_Data_in_Florida_USA.ipynb](src/api/Connecting_to_API_for_Collecting_Flights_Data_in_Florida_USA.ipynb)
  - *data_processing/*
    - [Cleaning_the_Data.ipynb](src/data_processing/Cleaning_the_Data.ipynb)

- **data/**
  - *raw_data/*
    - [airports_raw.csv](data/raw_data/airports_raw.csv)
    - [airlines_raw.csv](data/raw_data/airlines_raw.csv)
    - [open_sky_flight_data.csv](data/raw_data/open_sky_flight_data.csv)
  - *processed_data/*
    - [airports.csv](data/processed_data/airports.csv)
    - [airlines.csv](data/processed_data/airlines.csv)

- **database/**
  - [DB_Creation.sql](database/DB_Creation.sql)
  - [DB_insertion.sql](database/DB_insertion.sql)

- **queries/**
  - [airport_analysis.sql](queries/airport_analysis.sql)
  - *results/*
    - [Most_used_route_florida.csv](database/results/Most_used_route_florida.csv)
    - [Flights_Airlines_in_Florida.csv](database/results/Flights_Airlines_in_Florida.csv)
    - [Most_flights_Airports_Florida.csv](database/results/Most_flights_Airports_Florida.csv)




## Analysis Objectives

1. **Airport Analysis:**
   - Determine the airport in Florida with the most flights.

2. **Airline Analysis:**
   - Identify the airline with the most flights in Florida.

3. **Route Analysis:**
   - Analyze the most frequented flight route in Florida.

## Author

- [Manrique Camacho](https://www.linkedin.com/in/manriquecamachop/)

## Usage Instructions

1. Explore the files in the `src` folder to review the code used for web scraping and API integration.
2. The MySQL database schema is available in the `database` folder.
3. Utilize the SQL queries in `mysql_queries.sql` for interacting with the MySQL database.


## Data Sources

The data used in this project has been obtained through web scraping from the following sources:

1. [Wikipedia](https://en.wikipedia.org/wiki/List_of_airports_in_Florida): Information about airport name, location, IATA code and more...
2. [Wikipedia](https://en.wikipedia.org/wiki/List_of_airline_codes): Information about airlines name, ICAO code and more...
3.  [OpenSky-API](https://opensky-network.org/): API, information of the flights.

Please note that it is important to review and adhere to the terms of use or licensing agreements specified by the websites you scrape data from. Respect their policies and regulations to ensure ethical and legal data usage.

## License

This project is under [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT). Refer to the LICENSE file for more details.

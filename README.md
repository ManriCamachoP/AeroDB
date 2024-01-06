# Airport Management DataBase in Central America using Python and SQL

This repository contains the implementation of a MySQL database designed for managing information about airports in Central America.

## About the Project

The research focuses on the efficient management of airports in the Central American region. To achieve this, a MySQL database has been created that covers relevant information about airports, such as geographical location, schedules, associated airlines, and more.

## Web Scraping and Database Creation

To collect data about airports in Central America, web scraping has been employed using Python. The code for this task can be found in the [web_scraping.py](web_scraping.py) file. This script extracts information from relevant websites and stores it in a CSV file.

The resulting database is located in the [database](database) directory, where you will find a file named `airports_central_america.csv` containing the collected information.

## Database Insertion via Python with Libraries

Data insertion into the MySQL database is facilitated through Python. The [web_scraping.py](web_scraping.py) script not only collects data but also inserts it into the database. This is achieved using the [MySQL Connector Python](https://dev.mysql.com/doc/connector-python/en/) library.

This library is employed for efficient handling of large datasets during the insertion process.

## Repository Contents

### [web_scraping/](web_scraping)
- This directory contains .ipynb files used for web scraping to gather data from various websites.

### [database/](database)
- **airports_central_america.csv**: Database in CSV format.

### [mysql_queries.sql](mysql_queries.sql)
- SQL queries for interacting with the MySQL database.

## Author

- [Manrique Camacho](https://www.linkedin.com/in/manriquecamachop/)

## Usage Instructions

1. Explore the files in the `web_scraping` folder to review the code used for web scraping.
2. The CSV format database is available in the `database` folder.
3. Use the SQL queries in `mysql_queries.sql` to interact with the MySQL database.

## Data Sources

The data used in this project has been obtained through web scraping from the following sources:

1. [Wikipedia]("https://en.wikipedia.org/wiki/List_of_the_busiest_airports_in_Central_America"): Information about airport name, location, IATA code and more...
2. [Airport Info](https://airportinfo.live): Details on flights of central america airports
3. [Example Source 3](https://www.examplesource3.com): Data on associated airlines.

Please note that it is important to review and adhere to the terms of use or licensing agreements specified by the websites you scrape data from. Respect their policies and regulations to ensure ethical and legal data usage.

## License

This project is under [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT). Refer to the LICENSE file for more details.

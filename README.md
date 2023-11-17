# Neo4j Database for Airport Management in Central America

This repository contains the implementation of a Neo4j database designed for managing information about airports in Central America. The database has been built using Python for web scraping and Neo4j for storing and querying information.

## About the Project

The research focuses on the efficient management of airports in the Central American region. To achieve this, a database has been created that covers relevant information about airports, such as geographical location, schedules, associated airlines, and more.

## Web Scraping and Database Creation

To collect data about airports in Central America, web scraping has been employed using Python. The code for this task can be found in the [web_scraping.py](web_scraping.py) file. This script extracts information from relevant websites and stores it in a CSV file.

The resulting database is located in the [database](database) directory, where you can find a file named `airports_central_america.csv` containing the collected information.

## Using Neo4j

Neo4j has been used as a graph database management system to store the gathered information. Interaction with the database is done through queries in the Neo4j Query Language (Cypher). Here is a simple example query:

```cypher
MATCH (a:Airport)
WHERE a.country = 'Costa Rica'
RETURN a.name, a.location
```

This type of query allows obtaining specific information about airports in a particular country.

## Repository Contents

### [web_scraping/](web_scraping)
- This directory contains .ipynb files used for web scraping to gather data from various websites.

### [database/](database)
- **airports_centroamerica.csv**: Database in CSV format.

### [neo4j_queries.cypher](neo4j_queries.cypher)
- Cypher queries for interacting with the Neo4j database.

## Author

- [Manrique Camacho](https://www.linkedin.com/in/manriquecamachop/)

## Usage Instructions

1. Explore the files in the `web_scraping` folder to review the code used for web scraping.
2. The CSV format database is available in the `database` folder.
3. Use the Cypher queries in `neo4j_queries.cypher` to interact with Neo4j.

## License

This project is under [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT). Refer to the LICENSE file for more details.
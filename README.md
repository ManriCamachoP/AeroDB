# Base de Datos Neo4j para Gestión de Aeropuertos en Centroamérica

Este repositorio contiene la implementación de una base de datos en Neo4j destinada a gestionar información sobre aeropuertos en Centroamérica. La base de datos se ha construido utilizando Python para realizar web scraping y Neo4j para almacenar y consultar la información.

## Sobre el Proyecto

La investigación se enfoca en la gestión eficiente de aeropuertos en la región de Centroamérica. Para lograr esto, se ha creado una base de datos que abarca información relevante sobre aeropuertos, como ubicación geográfica, horarios, aerolíneas asociadas, y más.

## Web Scraping y Creación de la Base de Datos

Para recolectar datos de aeropuertos en Centroamérica, se ha utilizado web scraping mediante Python. El código para esta tarea se encuentra en el archivo [web_scraping.py](web_scraping.py). Este script extrae información de sitios web pertinentes y la almacena en un archivo CSV.

La base de datos resultante se encuentra en el directorio [database](database), donde podrás encontrar un archivo `aeropuertos_centroamerica.csv` que contiene la información recolectada.

## Uso de Neo4j

Neo4j se ha empleado como sistema de gestión de bases de datos de grafos para almacenar la información recopilada. La interacción con la base de datos se realiza mediante consultas en el lenguaje de consulta de Neo4j (Cypher). A continuación, se presenta un ejemplo simple de consulta:

```cypher
MATCH (a:Aeropuerto)
WHERE a.pais = 'Costa Rica'
RETURN a.nombre, a.ubicacion
```

Este tipo de consulta permite obtener información específica sobre aeropuertos en un país determinado.

## Contenido del Repositorio

- **web_scraping/**
  - Aquí se encuentran los archivos .ipynb utilizados para realizar el web scraping y obtener datos de diversas 
  páginas web.

- **database/**
  - **aeropuertos_centroamerica.csv**: Base de datos en formato CSV.

- **neo4j_queries.cypher**: Consultas Cypher para interactuar con la base de datos Neo4j.

## Autor

- [Manrique Camacho](https://www.linkedin.com/in/manriquecamachop/)

## Instrucciones de Uso
1. Explorar los archivos en la carpeta `web_scraping` para revisar el código utilizado en el web scraping.
2. La base de datos en formato CSV está disponible en la carpeta `database`.
3. Utilizar las consultas Cypher en `neo4j_queries.cypher` para interactuar con Neo4j.

## Licencia

Este proyecto se encuentra bajo [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT). Consulté el archivo LICENSE para más detalles.
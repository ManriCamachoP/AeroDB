CREATE DATABASE AeroDB;

USE AeroDB;

CREATE TABLE Airline (
	IATA VARCHAR(10),
    ICAO VARCHAR(15),
    AirlineName VARCHAR(255),
    CallSign VARCHAR(255),
    Country VARCHAR(255),
    PRIMARY KEY (ICAO)
);

CREATE TABLE Airports (
    Region VARCHAR(255),
    Location VARCHAR(255),
    FAA_Code VARCHAR(3),
    ICAO_Code VARCHAR(4),
    AirportName VARCHAR(255),
    PRIMARY KEY (ICAO_Code)
);

CREATE TABLE Flights (
	ICAO_Code varchar(7),
	FirstSeenTime varchar(15),
    LastSeenTime varchar(15),
    ArrivalAirport varchar(4),
    DestinationAirport varchar(4),
    FlightNumber varchar(20),
    IACO_Airline varchar(10),
    PRIMARY KEY (ICAO_Code),
    FOREIGN KEY (ArrivalAirport) REFERENCES Airports(ICAO_Code),
    FOREIGN KEY (DestinationAirport) REFERENCES Airports(ICAO_Code),
    FOREIGN KEY (IACO_Airline) REFERENCES Airline(ICAO)
);
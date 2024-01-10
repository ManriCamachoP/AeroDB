-- FIRST PART: See which airport has the most arrivals and departures on Florida
SELECT
    a.AirportName,
    COUNT(f.ICAO_Code) AS FlightCount
FROM
    Airports AS a 
LEFT JOIN
    Flights AS f ON a.ICAO_Code = f.ArrivalAirport
            OR a.ICAO_Code = f.DestinationAirport
WHERE
    a.AirportName != 'nan' AND 
    f.ArrivalAirport IS NOT NULL AND 
    f.DestinationAirport IS NOT NULL
GROUP BY
    a.AirportName
ORDER BY
    FlightCount DESC;
    
-- Response: As we can see the Fort Lauderdale-Hollywood International Airport has the most flights.

-- SECOND PART: See which airline has the most flights in Florida 

SELECT
    a.AirlineName,
    COUNT(f.IACO_Airline) AS FlightCount
FROM
    Airline AS a 
LEFT JOIN
    Flights AS f ON a.ICAO = f.IACO_Airline
WHERE
	a.AirlineName != 'nan' 
GROUP BY
    a.AirlineName
ORDER BY
    FlightCount DESC;

-- RESULT: As we can se the Southwest Airlines has the most flights in Florida, we counting departures and arrivals;
-- The second airline with more flights is Delta Airlines, followed by American Airlines.

-- Last Part: Analyzing the most popular routes in Florida

SELECT
    a1.AirportName AS DepartureAirport,
    a2.AirportName AS DestinationAirport,
    COUNT(*) AS FlightCount
FROM
    Flights AS f
JOIN
    Airports AS a1 ON f.ArrivalAirport = a1.ICAO_Code
JOIN
    Airports AS a2 ON f.DestinationAirport = a2.ICAO_Code
WHERE 
    a1.AirportName != 'nan' AND
    a2.AirportName != 'nan' AND
    a1.AirportName != a2.AirportName
GROUP BY
    DepartureAirport, DestinationAirport
ORDER BY
    FlightCount DESC;
    
-- RESULT: The results show the count of flights between various airports in Florida, providing insights into the popularity of air routes within the state; as we can see the most famous route was Tampa International Airport to Miami International Airport with 16 flights. 



SELECT COUNT(*) AS total FROM flights

SELECT Origin, AVG(ArrDelay), AVG(DepDelay) FROM flights GROUP BY Origin

SELECT Origin, colYear, colMonth, ArrDelay AS prom_arribades FROM flights ORDER BY Origin, colYear, colMonth

SELECT usairPorts.City, flights.colYear, flights.colMonth, flights.ArrDelay AS prom_arribades FROM flights INNER JOIN usairports ON flights.Origin = usairports.IATA ORDER BY Origin, colYear, colMonth

SELECT UniqueCarrier, colYear, colMonth, sum(Cancelled) AS total_cancelled FROM flights WHERE Cancelled != 0 GROUP BY UniqueCarrier, colYear ORDER BY total_cancelled DESC

SELECT TailNum, SUM(Distance) AS totalDistance FROM flights WHERE TailNum LIKE 'N%' GROUP BY TailNum  
ORDER BY totalDistance DESC LIMIT 10

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10  ORDER BY avgDelay DESC

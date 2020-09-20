SELECT COUNT(*) FROM flights
SELECT Origin, AVG(ArrDelay), AVG(DepDelay) FROM flights GROUP BY Origin

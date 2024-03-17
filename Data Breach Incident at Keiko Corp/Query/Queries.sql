--Keiko employees and their family travel for free with the Movr platform and since Keiko is located in the heart of Downtown New York,they may have used the platform to get around.

--Let's try to figure out what vehicles were at the location of Keiko Corp
SELECT * FROM public.vehicle_location_histories AS vlh
WHERE 
    city = 'new york' AND
    long BETWEEN 40.5 AND 40.6 AND
    lat BETWEEN -74.997 AND -74.9968 AND
    vlh.timestamp::date = '20-06-23'::date
ORDER BY long;

--lets create a view with the previous query results and find the vehicle and owner info linked to those Vehicles
CREATE VIEW suspected_rides AS
SELECT * FROM public.vehicle_location_histories AS vlh
WHERE 
    city = 'new york' AND
    long BETWEEN 40.5 AND 40.6 AND
    lat BETWEEN -74.997 AND -74.9968 AND
    vlh.timestamp::date = '20-06-23'::date
ORDER BY long;

-- Querying the view to get distinct vehicle id
 SELECT DISTINCT r.vehicle_id 
 FROM suspected_rides AS sr
 JOIN rides AS r ON r.id = sr.ride_id;
 
 -- lets find the vehicle owner info  
 SELECT DISTINCT r.vehicle_id, u.name AS "owner name", 
 u.address, v.status, v.current_location
 FROM suspected_rides AS sr
 JOIN rides AS r ON r.id = sr.ride_id
 JOIN vehicles AS v ON v.id = r.vehicle_id
 JOIN users AS u ON u.id = v.owner_id;
 
  -- after interogation we found out its not the drivers but the riders so lets find the riders info
 SELECT DISTINCT r.vehicle_id, u.name AS "rider name", 
 u.address 
 FROM suspected_rides AS sr
 JOIN rides AS r ON r.id = sr.ride_id
 JOIN users AS u ON u.id = r.rider_id;
 
  -- after interogation we found out its not riders too its was an inside job  
-- lets create a view that solely contains the first and last name separated of the suspected riders,
CREATE VIEW suspect_rider_names AS
    SELECT DISTINCT
        split_part(u.name, ' ', 1) AS "first_name",
        split_part(u.name, ' ', 2) AS "last_name"
    FROM suspected_rides AS vlh
    JOIN rides AS r ON r.id = vlh.ride_id
    JOIN users AS u ON u.id = r.rider_id;



--lets write a query that connects to the Employee database with dblink and cross-reference the first and last names of the riders against the names of the Employees
SELECT DISTINCT
    CONCAT(t1.first_name, ' ', t1.last_name) AS "employee",
    CONCAT(u.first_name, ' ', u.last_name) AS "rider"

FROM dblink('host=localhost user=postgres password=postgres dbname=Employees', 'select first_name, last_name from employees;') 
AS t1(first_name NAME,  last_name NAME)

JOIN suspect_rider_names AS u ON t1.last_name = u.last_name 
ORDER BY "rider";

 -- the culprit was park moris

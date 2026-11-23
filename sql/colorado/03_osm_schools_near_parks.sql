#This query identifies all the schools within 500 meters of a park
#It does this by selecting the names of the schools near the parks and listing them in alphabetical order

SELECT DISTINCT p.name AS schools_near_parks FROM pois AS p JOIN landuse_a AS l ON ST_DWithin(p.geom::geography, l.geom::geography, 500) WHERE p.fclass = 'school' AND l.fclass = 'park' ORDER BY p.name
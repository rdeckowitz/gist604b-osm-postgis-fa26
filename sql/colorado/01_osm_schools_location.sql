## This query asks "What are the names and geographic locations of all the schools in the study area?"
## It answers this by selecting all of the features of class 'school' and reporting their id, name, and geom (location) columns

SELECT osm_id, name, fclass, geom FROM pois WHERE fclass = 'school'


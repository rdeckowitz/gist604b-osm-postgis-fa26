## This query asks "How many food establishments (of type restaurant, cafe, and fast-food) are located within the study area?"
## It answers this by selecting the area and business category, then grouping the businesses by type

SELECT fclass, COUNT(*) AS feature_count FROM pois WHERE fclass IN ('restaurant', 'cafe', 'fast_food') GROUP BY fclass ORDER BY feature_count DESC

SELECT fclass, COUNT(*) AS feature_count, ST_GeomFromText('POINT(0 0)', 4326) AS geom FROM pois WHERE fclass IN ('restaurant', 'cafe', 'fast_food') GROUP BY fclass ORDER BY feature_count DESC

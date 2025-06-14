SELECT ip, COUNT(*) AS invalid_count
FROM logs
WHERE 
    LENGTH(ip) - LENGTH(REPLACE(ip, '.', '')) != 3 
    OR REGEXP_LIKE(ip, '\\.0[0-9]+')  
    OR REGEXP_LIKE(ip, '\\.\\.')  
    OR EXISTS (
        SELECT 1
        FROM (
            SELECT REGEXP_SUBSTR(ip, '[^.]+', 1, 1) AS octet1,
                   REGEXP_SUBSTR(ip, '[^.]+', 1, 2) AS octet2,
                   REGEXP_SUBSTR(ip, '[^.]+', 1, 3) AS octet3,
                   REGEXP_SUBSTR(ip, '[^.]+', 1, 4) AS octet4
        ) AS parsed
        WHERE octet1 > 255 
           OR octet2 > 255 
           OR octet3 > 255 
           OR octet4 > 255
    )
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;

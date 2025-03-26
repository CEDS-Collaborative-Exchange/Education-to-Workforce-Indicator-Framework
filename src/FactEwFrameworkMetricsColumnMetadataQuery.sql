
SELECT TableName, ColumnName, MetadataType, Metadata
FROM (
    SELECT o.name AS TableName, c.name AS ColumnName, ep.name AS MetadataType, ep.value AS Metadata, c.column_id
    FROM sys.objects o
    JOIN sys.columns c
        ON o.object_id = c.object_id
    JOIN sys.extended_properties ep
        ON c.object_id = ep.major_id
        AND c.column_id = ep.minor_id
    WHERE o.Name = 'FactEwFrameworkMetrics'
        AND o.type = 'U'
) AS subquery
ORDER BY column_id, ColumnName, MetadataType;
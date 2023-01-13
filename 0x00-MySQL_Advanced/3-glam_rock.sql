-- lists all bands with glam rock as main style
-- rnaked by longevity

SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan FROM metal_bands WHERE FIND_IN_SET('Glam rock', style) ORDER BY lifespan DESC;

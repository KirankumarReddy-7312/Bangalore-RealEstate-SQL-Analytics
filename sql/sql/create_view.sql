CREATE VIEW all_properties AS
SELECT *, 'Bellandur' AS location FROM bellandur
UNION ALL
SELECT *, 'Brookefield' FROM brookefield
UNION ALL
SELECT *, 'Electronic City' FROM electronic_city
UNION ALL
SELECT *, 'KR Puram' FROM kr_puram
UNION ALL
SELECT *, 'Kaggadasapura' FROM kaggadasapura
UNION ALL
SELECT *, 'Varthur' FROM varthur
UNION ALL
SELECT *, 'Whitefield' FROM whitefield
UNION ALL
SELECT *, 'Yelahanka' FROM yelahanka;

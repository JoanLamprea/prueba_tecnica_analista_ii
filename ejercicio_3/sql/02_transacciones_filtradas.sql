CREATE TABLE IF NOT EXISTS transacciones_filtradas AS
with a as (SELECT cod_trn, SUM(mnt_trn) AS total_monto
        FROM transacciones
        GROUP BY cod_trn
        ORDER BY total_monto DESC)           
SELECT cod_trn
FROM a WHERE total_monto <= (SELECT 0.8 * SUM(mnt_trn) FROM transacciones);

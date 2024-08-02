CREATE TABLE IF NOT EXISTS resultado_agrupado AS
SELECT trans.f_aplicacion_trn, c.num_doc, SUM(trans.mnt_trn) AS total_monto
FROM transacciones AS trans
JOIN clientes_sin_duplicados AS c ON trans.cod_apli_prod = c.cod_apli_prod AND trans.num_cta = c.num_cta
JOIN transacciones_filtradas AS tf ON trans.cod_trn = tf.cod_trn
GROUP BY trans.f_aplicacion_trn, c.num_doc
HAVING total_monto > 100000
ORDER BY trans.f_aplicacion_trn ASC, total_monto DESC
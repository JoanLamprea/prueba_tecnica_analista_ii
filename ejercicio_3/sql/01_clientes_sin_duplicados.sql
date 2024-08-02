CREATE TABLE IF NOT EXISTS clientes_sin_duplicados AS
SELECT 
    tipo_doc, 
    num_doc, 
    cod_apli_prod, 
    num_cta, 
    MAX(f_vinc) AS f_vinc
FROM clientes
GROUP BY tipo_doc, num_doc, cod_apli_prod, num_cta;

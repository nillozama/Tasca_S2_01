select * from facturas where clientes_id_clientes=4 and DATE(fecha) BETWEEN '2018-02-20' AND '2022-04-20';

select * from gafas inner join gafas_has_facturas on  gafas_id_gafas=id_gafas inner join facturas on id_facturas=facturas_id_facturas where vendedor_id_vendedor=1 and DATE(fecha) BETWEEN '2018-02-20' AND '2022-03-20';

select distinct proveedor.nombre from proveedor inner join marca on id_proveedor= proveedor_id_proveedor inner join gafas on id_marca=marca_id_marca inner join gafas_has_facturas on  gafas_id_gafas=id_gafas inner join facturas on id_facturas=facturas_id_facturas;
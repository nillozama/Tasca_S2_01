select count(Productos_idProductos) from productos_has_pedido inner join pedido on  Pedido_idPedido=idPedido inner join tienda on idTienda=Tienda_idTienda inner join direccion  on Direccion_idDireccion=idDireccion where Localidad_idLocalidad=1;

select count(idPedido) from pedido p inner join tienda on idtienda=p.Tienda_idTidticketienda inner join empleado e on e.Tienda_idTienda=idTienda where idEmpleado=9;

select * from product;
insert into shop (name) value ("antonio");
insert into shop (name) value ("pepa");
delete from shop where idshop>2;
select * from shop;
insert into type (name) value ("decoracio");
select * from type;
select * from shop;
select * from product where shop_idshop=1;
insert into product (name, type_idtype, price, characteristic, shop_idshop) values ("pino",1, 34, "2,78m", 1);
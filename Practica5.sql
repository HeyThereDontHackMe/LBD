use Practica4
go

-- Tabla 01
select *from Cargo
-- 1
insert into Cargo values (
NEWID(), 'Cajero', getdate())
-- 2
insert into Cargo values (
NEWID(), 'Gerente',getdate())
-- 3
insert into Cargo values (
NEWID(), 'Limpieza',getdate())
-- 4
insert into Cargo values (
NEWID(), 'Almacenista', getdate())

-- 5
insert into Cargo values (
NEWID(), 'Supervisor',getdate())

-- 6 
insert into Cargo values (
NEWID(), 'Proveedor',getdate())

-- 7
insert into Cargo values (
NEWID(), 'Encargado', getdate())

-- 8
insert into Cargo values (
NEWID(), 'Ayudante Almacen',getdate())
 
-- 9
insert into Cargo values (
NEWID(), 'Carnicero', getdate())

-- 10
insert into Cargo values (
NEWID(), 'Paquetero',getdate())

-- 11
insert into Cargo values (
NEWID(), 'Recursos Humanos',getdate())

-- Delete
DELETE FROM Cargo
WHERE idCargo = '7E5C2D94-3885-4BC2-9BCE-2FCB47547E3C';

-- Update
Update Cargo
set Descripcion = 'Repartidor'
where idCargo = '1B762E55-D894-419C-8944-C44C936D0450'



-- Tabla 02
select *from Empleado

-- 1
insert into Empleado values (
NEWID(), '9DFE3AE5-832F-41BF-A1DF-6605EC587728', 'Luis', 'Gonzalez Marroquin', '19700621', '20120420', 'Cromo #40 Col. Nuevo Pueblo', '66612', 'Apodaca', '52 + 8114872640') 
-- 2
insert into Empleado values (
NEWID(), 'DAE217E5-888D-4238-B9F0-66FBE0183B42', 'Roberto', 'Esquivel Valdez', '19940201', '20161022', 'Telas #1205 Col. Las Palmas', '66522', 'Monterrey', '81 + 22317985 ') 
-- 3
insert into Empleado values (
NEWID(), 'C56C198F-F0C4-4E9D-BDE3-6B65F6725293', 'Nestor', 'Perez Lopez', '19900228', '20181222', 'Ambar #105 Col. Las Naranjos', '48522', 'San Nicolas de los Garza', '81 + 78924561 ') 
-- 4
insert into Empleado values (
NEWID(), 'E68937B6-EA36-423C-97FA-7A285A6DD763', 'Erika', 'Alamillo Cantu', '19990809', '20190222', 'Rubidio #403 Col. Las Cristales', '66022', 'Guadalupe', '81 + 13616692 ') 
-- 5
insert into Empleado values (
NEWID(), '417B8920-B555-4CEA-8DC4-98BEA272E28A', 'Daniela', 'Carrillo Cantu', '19970109', '20190222', 'Zinc #4203 Col. Telas Poncho', '56052', 'Apodaca', '81 + 89784515 ') 
-- 6
insert into Empleado values (
NEWID(), '9BF9A201-25CC-4C01-ADDD-9B9EE2F01087', 'Jesus Hector', 'Gonzalez Perez', '19940509', '20180623', 'Cobre #203 Col. Ebanos', '66052', 'Apodaca', '52 + 8113584064 ')
-- 7
insert into Empleado values (
NEWID(), '09BCEC2D-4F40-4DCD-9C42-A50BDD1CCB8B', 'Santiago Rafael', 'Maynes Serafin', '19940802', '20170902', 'Petroño #924 Col. Nueva Democracia', '95423', 'Apodaca', '52 + 8124760156 ')
-- 8
insert into Empleado values (
NEWID(), 'A8C69A35-D364-4906-A456-AA25C75B4F90', 'Karen Marlen', 'Gonzalez Esquivel', '19941022', '20151111', 'Los Encinos #348 Col. Los Encinos', '66623', 'Apodaca', '52 + 8174621585 ')
-- 9
insert into Empleado values (
NEWID(), '1B762E55-D694-419C-8944-C44C936D045F', 'Diana Janeth', 'Gonzalez Esquivel', '19920329', '20151111', 'Los Encinos #348 Col. Los Encinos', '66623', 'Apodaca', '52 + 8113854644 ')
-- 10
insert into Empleado values (
NEWID(), '7E35FF42-0B2A-4E6F-A794-FF287B4EF622', 'Carmen', 'Villarreal Gutierrez', '19601226', '20141201', 'Pontia #415 Col. Moderna', '55523', 'Apodaca', '52 + 8756214777 ')
-- 11
insert into Empleado values (
NEWID(), '7E35FF42-0B2A-4E6F-A794-FF287B4EF621', 'Maria', 'Villarreal ', '19601226', '20141201', 'Pontia #415 Col. Moderna', '55523', 'Apodaca', '52 + 8756214777 ')
-- Delete
DELETE FROM Empleado
WHERE idEmpleado = 'F306AA59-1CBC-4979-A16B-F43836120194';
-- Update
Update Empleado
set Telefono = '52 + 8113858051'
where idEmpleado = 'CA9448A9-B6AB-4CC0-8E00-199C7FC698F3'



select *from Proveedor

insert into Proveedor values (
NEWID(), 'Pepsico', 'Miguel Hidalgo', 'Ciudad de México', '5653122','+52 55 2582-3000')

insert into Proveedor values (
NEWID(), 'Barcel', 'Santo Domingo', 'Lerma', '66482','+52 55 15879648')

insert into Proveedor values (
NEWID(), 'Grupo Bimbo', 'Miguel de la Madrid', 'Ciudad de México', '5123025','+52 800 910 2030')

insert into Proveedor values (
NEWID(), 'Gamesa', 'Eugenio Garza Sada', 'San Pedro Garza Garcia', '6655482','+52 55 64978513')

insert into Proveedor values (
NEWID(), 'Coca-Cola', 'Plutarco Elias', 'Monterrey', '66274','+52 55 55478931')

insert into Proveedor values (
NEWID(), 'Grupo Lala', 'Gomez Palacio', 'Monterrey', '52682','+52 55 6785648')

insert into Proveedor values (
NEWID(), 'Maseca', 'Gomez Morin', 'Santa Catarina', '354789','+52 55 69742748')

insert into Proveedor values (
NEWID(), 'Pringles', 'Diego Diaz', 'San Nicolas de los Garza', '47895','+52 55 22317369')

insert into Proveedor values (
NEWID(), 'Ricolino', 'Gonzalitos', 'Monterrey', '752682','+52 55 4564648')

insert into Proveedor values (
NEWID(), 'Tia Rosa', 'Madero', 'Monterrey', '81762','+52 55 83148624')

insert into Proveedor values (
NEWID(), 'Dolores', 'Gomez Palacio', 'Monterrey', '52682','+52 55 6785648')

DELETE FROM Proveedor
WHERE idProvedor = 'CD6F0997-8AEF-4AE1-ABFD-4D454350FFF4';

Update Proveedor
set	CodigoPostal = '66485'
where idProvedor = '59237E52-CA68-47E0-98A4-C8A64B8BC977'


select *from Categoria

insert into Categoria values(
NEWID(), 'Botana', 'Aperitvo')

insert into Categoria values(
NEWID(), 'Bebida', 'líquido que se ingiere')

insert into Categoria values(
NEWID(), 'Pan', 'Alimento que se ingiere')

insert into Categoria values(
NEWID(), 'Galletas', 'Alimento que se ingiere')

insert into Categoria values(
NEWID(), 'Lacteos', 'alimentos como la leche y sus derivados procesados')

insert into Categoria values(
NEWID(), 'Tortillas', 'alimento hecho con maíz nixtamalizado')

insert into Categoria values(
NEWID(), 'Dulces', 'alimento preparado generalmente a base de azúcar')

insert into Categoria values(
NEWID(), 'Papel Higienico', 'papel que se usa para la limpieza anal y genital')

insert into Categoria values(
NEWID(), 'Abarrotes', 'De todo un poco')

insert into Categoria values(
NEWID(), 'Fruta', 'fruto comestible ')

insert into Categoria values(
NEWID(), 'Frutasssss', 'fruto comestible ')

DELETE FROM Categoria
WHERE idCategoria = '9E13DD3E-92AE-4F8C-9CA8-72957AFD2DF2';

Update Categoria
set	Descripcion = 'De todo un poco de Abarrotes'
where idCategoria = 'D37183B7-ED00-4553-A576-AD096F56558F'


select *from Producto

insert into Producto values(
NEWID(), 'Takis', '117FF877-58AC-4B93-8974-04127B108859', 1, 20,10,'59237E52-CA68-47E0-98A4-C8A64B8BC977')

insert into Producto values(
NEWID(), 'Coca', 'B8CF87CE-07E4-4231-B52F-B350BB53B966', 1, 10,15,'86B2FDEE-F430-42C5-903C-FD72EFEFE583')

insert into Producto values(
NEWID(), 'Emperador', '5302216B-346A-49B5-9B47-2FDF7A618451', 1, 10,12,'951BBAD9-3148-4DE2-B963-513E4ED4E20A')

insert into Producto values(
NEWID(), 'Donas', '98902274-7DB3-47DB-8D72-BDAC7D02838E', 1, 5,16,'EFC991AF-8128-4AFF-8953-5312828D0BF6')

insert into Producto values(
NEWID(), 'Leche', 'FA9D7ACF-74F6-462F-BB96-79D9A9C316E7', 1, 30,20,'FA6E6678-B53E-40DA-803D-05E075F60B5E')

insert into Producto values(
NEWID(), 'Tortillas', 'FF8F16C5-C0CB-48AF-BBB1-221CBC474FFF', 1, 15,16,'A7D9EB2C-7885-4160-A412-70452826A475')

insert into Producto values(
NEWID(), 'Pepsi', 'B8CF87CE-07E4-4231-B52F-B350BB53B966', 0, 0,20,'34F03FD6-D3C0-4F7E-A522-4D5667FD669E')

insert into Producto values(
NEWID(), 'Pringles', '117FF877-58AC-4B93-8974-04127B108859', 1, 6,25,'F8B4F701-00D4-4B74-9619-FFB818AF3178')

insert into Producto values(
NEWID(), 'Panditas', '7D3DB23B-B000-4DCE-85C3-DE0488332A91', 1, 3,10,'52D5FDC7-91D7-46A3-A580-ADBEB444D9F0')

insert into Producto values(
NEWID(), 'Bigotes', '98902274-7DB3-47DB-8D72-BDAC7D02838E', 1, 7,11,'1FC06E3A-73F2-4514-B403-6F25BE73C8E5')

insert into Producto values(
NEWID(), 'Bigotessss', '98902274-7DB3-47DB-8D72-BDAC7D02838E', 1, 7,15,'1FC06E3A-73F2-4514-B403-6F25BE73C8E5')

DELETE FROM Producto
WHERE NombreProd = 'Bigotessss';

Update Producto
set	Precio = 20
where idCategoria = 'FF8F16C5-C0CB-48AF-BBB1-221CBC474FFF'


select *from cliente

insert into Cliente values (
NEWID(), ' ', 'Alberto Ruiz', 'Tulipan #528 Col. Ebanos', '66124', '8113824568')

insert into Cliente values (
NEWID(), 'Tacos Don Paco', 'Erik Perez', 'Rosa #123 Col. Metroplex', '541224', '8113475569')

insert into Cliente values (
NEWID(), 'Abarrotes Poncha', 'Francisca Madera', 'Galaxia #718 Col. Los Encinos', '66324', '8124789631')

insert into Cliente values (
NEWID(), ' ', 'Cristina Montemayor', 'Mela #818 Col. Santa Cecilia', '6161616', '8184695525')

insert into Cliente values (
NEWID(), ' ', 'Juan Orto', 'Peñasco #1024 Col. Robles', '66612', '83147895')

insert into Cliente values (
NEWID(), 'Ferreteria LOS ANDES', 'Aaron Ruiz', 'Buganbilia #512 Col. Insurgentes', '646852', '22318596')

insert into Cliente values (
NEWID(), ' ', 'Esmeralda Chong', 'Chinga #836 Col. TuCulum', '285634', '8117856211')

insert into Cliente values (
NEWID(), 'Dulceria de la Esquina', 'Rosa Alamilloz', 'Poderosa #4789 Col. Nuevo Repueblo', '66625', '8113898885')

insert into Cliente values (
NEWID(), '', 'Juan Mecobo', 'Concordia #123 Col. Cieneguita', '32584', '83145566')

insert into Cliente values (
NEWID(), '', 'Ruth Mia', 'Cromo #419 Col. Nuevo Las Puentes', '66612', '8117956134')

insert into Cliente values (
NEWID(), 'Tacos Don Paco', 'Erik Perez', 'Rosa #123 Col. Metroplex', '541224', '81134755699')

DELETE FROM Cliente
WHERE Telefono = '81134755699';

Update Cliente
set	CodigoPostal = '61616'
where idCliente = '21A81F88-3D33-4A0D-B868-9C5565ED60F0'


select *from Orden

insert into Orden values(
NEWID(), 'A16DEF55-4E54-4DA5-B7C2-88DD72E7D3B5' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190105')

insert into Orden values(
NEWID(), '21A81F88-3D33-4A0D-B868-9C5565ED60F0' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190110')

insert into Orden values(
NEWID(), '65A5A592-EE02-4E17-AC94-6130CA22C554' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190112')

insert into Orden values(
NEWID(), '160DD832-463D-4C73-B7B9-E2D2422B6843' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190115')

insert into Orden values(
NEWID(), '97E29E7E-F155-4035-8973-8A9767E04E0A' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190120')

insert into Orden values(
NEWID(), 'E8AEDACC-9D00-46A1-879F-BF965C39B413' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190122')

insert into Orden values(
NEWID(), '956EAE2D-51E7-44FA-B395-4773703BE9B8' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190125')

insert into Orden values(
NEWID(), '1CA8E511-7015-4C47-9776-13D544A61E0C' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190129')

insert into Orden values(
NEWID(), '87E4B3E5-B126-41DA-8541-C61A4E9E499A' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190205')

insert into Orden values(
NEWID(), '6FBEE85F-6955-46BD-AEFA-3A8F3BE82AF5' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190207')

insert into Orden values(
NEWID(), '6FBEE85F-6955-46BD-AEFA-3A8F3BE82AF5' ,'89588CB8-C66F-409D-9566-32B81E3A5788', '20190209')

DELETE FROM Orden
WHERE idOrden = '538A53DE-E69C-44FD-880D-4CECE819C3DA';

Update Orden
set	OrdenFecha = '20190113'
where idOrden = '693A2DCA-0058-4BC6-AE21-139FE2846C08'


select *from DetallesOrden

insert into DetallesOrden values(
'693A2DCA-0058-4BC6-AE21-139FE2846C08', '9EDE1CB2-4BA1-4199-812B-E08F8F06087D', 11, 10)

insert into DetallesOrden values(
'9FE252D2-3F8D-48B7-95AD-4FF6064ABFA6', '6ECD16CB-339B-48C2-84A6-D5B7E9855D34', 15, 5)

insert into DetallesOrden values(
'4A00A24D-A69D-44D2-926C-50C5EEC3C748', 'E52A3C12-9618-4900-99A2-FA4D454F0264', 16, 3)

insert into DetallesOrden values(
'9B321BC6-B324-4D22-B1A3-561A4C06595E', '26CE76C6-9A6C-456C-8C9E-8F0967DFEE25', 12, 6)

insert into DetallesOrden values(
'5A1C3107-3A0A-436D-8D13-698FEB688883', '9F4B61D2-8083-4AAA-9775-041441005A00', 20, 15)

insert into DetallesOrden values(
'26EC1DDB-4D86-42A3-80EB-6FC886F6F5B6', 'C82B4109-6A1B-44F9-85EC-12D08CEA915B', 10, 2)

insert into DetallesOrden values(
'E4F1F9CB-EF1E-40EA-8CF9-7AC5D8511911', '9F4B61D2-8083-4AAA-9775-041441005A00', 20, 5)

insert into DetallesOrden values(
'4B6741F7-CB68-477C-8391-E0663824AFDF', 'D313A52A-1BED-4C11-87EF-CB64D4411011', 25, 3)

insert into DetallesOrden values(
'D00B45BF-37C5-4E30-B8A3-E4228CB14989', 'E485950F-3B5E-48D5-B95E-36137A4F769B', 10, 13)

insert into DetallesOrden values(
'9ADF41EA-AAC7-4C27-A89F-FACEE1F0DEC0', '96A9DF87-E27C-4873-840D-4E0E13F115FF', 20, 2)

insert into DetallesOrden values(
'9ADF41EA-AAC7-4C27-A89F-FACEE1F0DEC0', '15574539-C243-4EA2-8029-990996773922', 20, 1)

DELETE FROM DetallesOrden
WHERE idProducto = '15574539-C243-4EA2-8029-990996773922';

Update DetallesOrden
set	Cantidad = 7
where idOrden = '693A2DCA-0058-4BC6-AE21-139FE2846C08'


select *from Ticket

insert into Ticket values (
NEWID(), '693A2DCA-0058-4BC6-AE21-139FE2846C08', '20190113 16:00', 1)

insert into Ticket values (
NEWID(), '9FE252D2-3F8D-48B7-95AD-4FF6064ABFA6', '20190115 9:00', 1)

insert into Ticket values (
NEWID(), '4A00A24D-A69D-44D2-926C-50C5EEC3C748', '20190120 17:00', 1)

insert into Ticket values (
NEWID(), '9B321BC6-B324-4D22-B1A3-561A4C06595E', '20190105 15:22', 1)

insert into Ticket values (
NEWID(), '5A1C3107-3A0A-436D-8D13-698FEB688883', '20190122 16:01', 1)

insert into Ticket values (
NEWID(), '26EC1DDB-4D86-42A3-80EB-6FC886F6F5B6', '20190205 10:22', 1)

insert into Ticket values (
NEWID(), 'E4F1F9CB-EF1E-40EA-8CF9-7AC5D8511911', '20190129 11:16', 1)

insert into Ticket values (
NEWID(), '4B6741F7-CB68-477C-8391-E0663824AFDF', '20190207 13:58', 1)

insert into Ticket values (
NEWID(), 'D00B45BF-37C5-4E30-B8A3-E4228CB14989', '20190110 17:22', 1)

insert into Ticket values (
NEWID(), '9ADF41EA-AAC7-4C27-A89F-FACEE1F0DEC0', '20190125 18:00', 1)

DELETE FROM Ticket
WHERE idOrden = '693A2DCA-0058-4BC6-AE21-139FE2846C08';

Update Ticket
set	Fecha = '20190115 11:00'
where idTicket = '0BB614C3-4146-43FE-91F2-A5D78F8BE495'


select *from Factura

insert into Factura values (
NEWID(), '693A2DCA-0058-4BC6-AE21-139FE2846C08','65A5A592-EE02-4E17-AC94-6130CA22C554',	'89588CB8-C66F-409D-9566-32B81E3A5788', '20190113')

insert into Factura values (
NEWID(), '9FE252D2-3F8D-48B7-95AD-4FF6064ABFA6','160DD832-463D-4C73-B7B9-E2D2422B6843','89588CB8-C66F-409D-9566-32B81E3A5788','2019-01-15')

insert into Factura values (
NEWID(), '4A00A24D-A69D-44D2-926C-50C5EEC3C748','97E29E7E-F155-4035-8973-8A9767E04E0A',	'89588CB8-C66F-409D-9566-32B81E3A5788',	'20190120')

insert into Factura values (
NEWID(), '9B321BC6-B324-4D22-B1A3-561A4C06595E','A16DEF55-4E54-4DA5-B7C2-88DD72E7D3B5','89588CB8-C66F-409D-9566-32B81E3A5788','20190105')

insert into Factura values (
NEWID(), '5A1C3107-3A0A-436D-8D13-698FEB688883','E8AEDACC-9D00-46A1-879F-BF965C39B413',	'89588CB8-C66F-409D-9566-32B81E3A5788',	'20190122')

insert into Factura values (
NEWID(), '26EC1DDB-4D86-42A3-80EB-6FC886F6F5B6'	,'87E4B3E5-B126-41DA-8541-C61A4E9E499A','89588CB8-C66F-409D-9566-32B81E3A5788','20190205')

insert into Factura values (
NEWID(), 'E4F1F9CB-EF1E-40EA-8CF9-7AC5D8511911','1CA8E511-7015-4C47-9776-13D544A61E0C',	'89588CB8-C66F-409D-9566-32B81E3A5788',	'20190129')

insert into Factura values (
NEWID(), '4B6741F7-CB68-477C-8391-E0663824AFDF'	,'6FBEE85F-6955-46BD-AEFA-3A8F3BE82AF5','89588CB8-C66F-409D-9566-32B81E3A5788'	,'20190207')

insert into Factura values (
NEWID(), 'D00B45BF-37C5-4E30-B8A3-E4228CB14989','21A81F88-3D33-4A0D-B868-9C5565ED60F0',	'89588CB8-C66F-409D-9566-32B81E3A5788',	'20190110')

insert into Factura values (
NEWID(),'9ADF41EA-AAC7-4C27-A89F-FACEE1F0DEC0','956EAE2D-51E7-44FA-B395-4773703BE9B8','89588CB8-C66F-409D-9566-32B81E3A5788','20190125')

insert into Factura values (
NEWID(), '9ADF41EA-AAC7-4C27-A89F-FACEE1F0DEC0','956EAE2D-51E7-44FA-B395-4773703BE9B8',	'89588CB8-C66F-409D-9566-32B81E3A5788',	'20190525')

DELETE FROM Factura
WHERE NoFactura = '7D9C1BC8-8E76-464A-8DCB-026327C812F8';

Update Factura
set	FacturaFecha = '20190105'
where NoFactura= '7CEC84A8-4A80-44AB-AA78-0AF0EC9B2B24'

select *from Cargo
select *from Categoria
select *from Cliente
select *from DetallesOrden
select *from Empleado
select *from Factura
select *from Orden
select *from Producto
select *from Proveedor
select *from Ticket


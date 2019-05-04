
-- Jugadores con puntaje suficiente para calificar a eliminatorias 

create procedure JugadoresAptos 
@jugador_id int , 
@nombre varchar , 
@puntaje int 
as
select jugador_id , nombre , avg(puntaje) as 'Puntaje apto' from jugadores
group by jugador_id , Nombre , puntaje
having puntaje > 15000 

-- Jugadores que tienen puntaje insuficiente para calificar a eliminatorias 

create procedure JugadoresNoAptos
@jugador_id int ,
@nombre varchar ,
@puntaje int
as
select jugador_id , nombre , avg(puntaje) as 'Puntaje no apto' from jugadores 
group by jugador_id , Nombre , puntaje
having puntaje < 15000


-- Equipos con puntaje suficiente para eliminatorias 


create procedure Equipos 
@Equipo_id int , 
@Nombre varchar ,
@Puntaje int 
as
select Equipo_id , Nombre , avg(Puntaje) as 'Puntaje obtenido' from Equipo
group by Equipo_id , Nombre , Puntaje
having Puntaje > 25000



-- Integrantes de Equipo

Create procedure IntegrantesEquipo
@Equipo varchar ,
@Nombre varchar 
as
select  jugadores.Nombre , equipo.Nombre  as 'Equipo' 
from jugadores
inner join equipo
on jugadores.Equipo_id = equipo.Equipo_id 


-- Top de Jugadores 

Create procedure JugadoresTop
@JugadoresTOP int not null
as
select  count(Jugador_id) as 'Jugador TOP' from jugadores 
where puntaje > 50000



-- Precio del jugador mas caro

create procedure JugadorMVP
@JugadorMvp point 
as
Select    max (Puntaje) as JugadorMVP from jugadores

-- Precio del jugador mas barato

Create procedure MalPerdedor
@MalPerdedor point
as
Select    min(Puntaje) as MalPerdedor from jugadores


-- Suma Total de los precios de cada jugador del equipo Tigres

Create procedure PrecioTigres
@SumaTotalJugadores Money
as
select SUM(Precio) as SumaTotalJugadores from jugadores 
where Equipo_id = 9

-- Equipos veteranos 
Create procedure EquiposV
@Nombre varchar(50),
@EquiposVeteranos varchar(50)
as
select Equipo.Nombre , Equipo.Nombre as 'Equipos Veteranos'
from Equipos
Inner join puntaje
on Equipo.Equipo_id = Equipo.Equipo_id


-- Equipos novatos 
Create procedure Equipos_Novatos
as
select  Equipo.Nombre , Equipos.Nombre  as 'Novatos'
from Equipos
inner join Equipos
on Equipo.Equipo_id = Equipo.Equipo_id 


Create Function ObtenerImpuesto 
(
@Costo money
)
returns money as begin
declare @Impuesto money 
set @Impuesto = (@Costo * .16 + @Costo)
return @Impuesto
end 

select dbo.ObtenerImpuesto (100.0)

create trigger Jugador_nw
on jugadores for insert 
as 
insert into jugador values(newid() , 'noobmaster69' , 15000 , 'MaximuxTEAM')

create trigger Equipo_new
on Equipos for insert 
as
insert into Equipos values (170000, 'MaximusTEAM2' )



Declare @Query nvarchar(500)
Declare @Tabla nvarchar(200)

set @Tabla = 'Puntaje'
set @Query = 'SELECT * FROM '+ @Tabla

Exec(@Query)
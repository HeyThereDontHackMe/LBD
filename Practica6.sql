-- Participantes con PUNTAJE aprobatorio  
select participante_id , participante , avg(puntaje) as 'Puntaje aprobatorio' from participantes where Carrera = 'Concurso'
group by partcipante_id , participante , puntaje
having puntaje > 15000 

-- Participantes que no tienen PUNTAJE aprobatorio
select participante_id , participante , avg(puntaje) as 'Puntaje no aprobatorio' from participante 
group by participante_id , participante , puntaje
having puntaje < 15000 

-- Participantes que han ganado 
select participante_id , participante , avg(MaxPuntaje) as 'Record' from Ganadores
group by participante_id , participante , Maxpuntaje
having MaxPuntaje > 25000



-- Equipos y sus integrantes
select  Participantes.Nombre , equipoJuego.Nombre  as 'Equipo participante' 
from participante 
inner join EquipoConcursante 
on Participantes.Equipo_id = equipoJuego.Equipo_id 

-- Ganadores
select  count(participante_id) as 'Record' from Ganadores
where MaxPuntaje > 30000 



-- Jugador Top1
Select    max (Maxpuntaje) as participante_id from Ganadores

-- El jugador mas bajo
Select    min(Puntaje) as participante_id from participantes

-- Total de jugadores 
select SUM(participantes) as SumaTotalJugadores from participantes 
where Equipo_id = 5


-- Jornadas de juego 
select Jornadas.Juego , Equipo.participantes as 'Informacion del equipo'
from Equipos 
Inner join Participantes
on Jornada.Jornada_id = Equipou.equipo_id


-- Tipo de juegos
select  Juego.Nombre_Juego , Juegos.Nombre  as 'Juegos para competir'
from Juego 
inner join Juegos 
on Juego.Juego_id = Juegos.Juegos_id 



-- Restaurantes
select Comida.NombreComida , Restaurante.nombre as 'Restaurante'
from Comida
inner join Restaurante
on Comida.Comida_id = Restaurante.Restaurante_id


-- Videojeugos
select Videojuego.Nombre , Tipo.Tipo_Videojuegos as 'Tipo de Videojuegos'
from estudiantes 
inner join Carrera
on Videojuego.Videojuego_id = Tipo.Tipo_id

-- Respaldo de Participantes
select * into Respaldo_Participantes 
from participantes

-- Eliminacion del respaldo de la tabla Participantes
drop table Respaldo_Participantes

-- Insertacion de los datos de la tabla maestro en la tabla Participantes
insert into participantes (participante_id , participante , puntaje , equipo )
select newid() , participante , puntaje , equipo from participantes


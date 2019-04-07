-- Participantes con PUNTAJE aprobatorio 
create view JugadoresCalificados  
as 
select participante_id , participante , avg(puntaje) as 'Puntaje aprobatorio' from participantes where Carrera = 'Concurso'
group by partcipante_id , participante , puntaje
having puntaje > 15000 


-- Participantes que no tienen PUNTAJE aprobatorio
create view JugadoresNoCalificados
as
select participante_id , participante , avg(puntaje) as 'Puntaje no aprobatorio' from participante 
group by participante_id , participante , puntaje
having puntaje < 15000 


-- Participantes que han ganado
create view Ganadores
as 
select participante_id , participante , avg(MaxPuntaje) as 'Record' from Ganadores
group by participante_id , participante , Maxpuntaje
having MaxPuntaje > 25000


-- Equipos y sus integrantes
create view Equipos
as
select  Participantes.Nombre , equipoJuego.Nombre  as 'Equipo participante' 
from participante 
inner join EquipoConcursante 
on Participantes.Equipo_id = equipoJuego.Equipo_id 


-- Ganadores
create view TopPlayer
as
select  count(participante_id) as 'Record' from Ganadores
where MaxPuntaje > 30000 


-- Jugador Top1
create view TopWiners
as
Select    max (Maxpuntaje) as participante_id from Ganadores

-- El jugador mas bajo
create view LowPlayer
as
Select    min(Puntaje) as participante_id from participantes

-- Total de jugadores 
create view TotalPlayers
as
select SUM(participantes) as SumaTotalJugadores from participantes 
where Equipo_id = 5


-- Jornadas de juego 
create view Matches
as
select Jornadas.Juego , Equipo.participantes as 'Informacion del equipo'
from Equipos 
Inner join Participantes
on Jornada.Jornada_id = Equipou.equipo_id


-- Tipo de juegos
create view GamesR
as
select  Juego.Nombre_Juego , Juegos.Nombre  as 'Juegos para competir'
from Juego 
inner join Juegos 
on Juego.Juego_id = Juegos.Juegos_id 


-- Restaurantes
create view Restaurantes
as
select Comida.NombreComida , Restaurante.nombre as 'Restaurante'
from Comida
inner join Restaurante
on Comida.Comida_id = Restaurante.Restaurante_id


-- Videojuegos
create view VideoGames
as
select Videojuego.Nombre , Tipo.Tipo_Videojuegos as 'Tipo de Videojuegos'
from estudiantes 
inner join Carrera
on Videojuego.Videojuego_id = Tipo.Tipo_id



--Subconsulta
Select Equipos , Avaible from Teams where EqParticipante > (select avg(EqParticipante) from Teams)

-- Subconsulta with
with Equipos as
select Equipos * from
(select Teams.*, Avaible, EqParticipante AS EqPo)
from (select * from Teams)
left join Participantes p ON EquipoConcursante = e.P

select * from Equipos


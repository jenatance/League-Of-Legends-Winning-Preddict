select count(*) from lol_ranked_10min where bluewins = 1; -- 4930 gana azul
select count(*) from lol_ranked_10min where bluewins = 0; -- 4949 gana rojo

-- 50.1% gana rojo
-- 49.9% gana azul

select avg(bluewardsplaced), avg(redwardsplaced) from lol_ranked_10min where bluewins = 1; -- 22.29 wards azul gana y 21.93 rojo pierde
select avg(bluewardsplaced), avg(redwardsplaced) from lol_ranked_10min where bluewins = 0; -- 22.29 wards azul pierde y 22.80 rojo gana

-- wards, valor despreciable

select count(*) from lol_ranked_10min where blueFirstBlood = 1 and bluewins = 1; -- 2987 first bloods azul y gana
select count(*) from lol_ranked_10min where blueFirstBlood = 0 and bluewins = 1; -- 1943 no first bloods azul y gana

-- 60.59% azul first blood y gana

select count(*) from lol_ranked_10min where blueFirstBlood = 0 and bluewins = 0; -- 2949 first bloods rojo y gana
select count(*) from lol_ranked_10min where blueFirstBlood = 1 and bluewins = 0; -- 2000 no first bloods rojo y gana

-- 59.59% rojo first blood y gana

-- 60.09% de las first blood dan la victoria

-- siempre hay first blood en 10 min

select avg(blueKDA) from datawithkda where blueWins = 1; -- 3.96 kda azul gana
select avg(blueKDA) from datawithkda where blueWins = 0; -- 1.83 kda azul pierde 

select avg(redKDA) from datawithkda where blueWins = 0; -- 3.98 kda rojo gana
select avg(redKDA) from datawithkda where blueWins = 1; -- 1.83 kda rojo pierde 

select blueKDA, redKDA, (blueKDA - redKDA) from datawithKDA where blueWins = 1; -- 4930 resultados
select (blueKDA - redKDA) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) >= 0; -- 3503 resultados positivos
select (blueKDA - redKDA) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) < 0; -- 1427 resultados negativos

-- 70.05% de las partidas que gana azul, en el minuto 10 tiene mayor KDA

select blueKDA, redKDA, (redKDA - blueKDA) from datawithKDA where blueWins = 0; -- 4949 resultados
select (redKDA - blueKDA) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) >= 0; -- 3485 resultados positivos
select (redKDA - blueKDA) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) < 0; -- 1464 resultados negativos

-- 70.42% de las partidas que gana rojo, en el minuto 10 tiene mayor KDA

select avg(blueKDA - redKDA) from datawithKDA where blueWins = 1; -- 2.13 puntos de diferencia de kda azul gana
select avg(blueKDA - redKDA) from datawithKDA where blueWins = 0; -- 2.15 puntos de diferencia de kda azul gana


select count(*) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) >= 2; -- 2122 azul gana con dos puntos de kda
select count(*) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) >= 2; -- 2118 rojo gana con dos puntos de kda 

select count(*) from datawithKDA where (blueKDA - redKDA) >= 2; -- 2666 con más de 2 puntos de kda de diferencia para azul
select count(*) from datawithKDA where (redKDA - blueKDA) >= 2; -- 2658 con más de 2 puntos de kda de diferencia para rojo
-- 42.92% de las partidas con diferencia de 2 puntos de kda se ganan del total de partidas
-- 79.64% de las partidas, cuando se tiene 2 puntos de diferencia de kda se ganan mirando solo las que tienen más de dos puntos de diferencia


select count(*) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) >= 5; -- 841 azul gana con cinco puntos de kda
select count(*) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) >= 5; -- 867 rojo gana con cinco puntos de kda 

select count(*) from datawithKDA where (blueKDA - redKDA) >= 5; -- 972 con más de 5 puntos de kda de diferencia para azul
select count(*) from datawithKDA where (redKDA - blueKDA) >= 5; -- 992 con más de 5 puntos de kda de diferencia para rojo
-- 17.29% de las partidas con diferencia de 5 puntos de kda se ganan del total de partidas
-- 86.97% de las partidas, cuando se tiene 5 puntos de diferencia de kda se ganan mirando solo las que tienen más de dos puntos de diferencia


select count(*) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) >= 10; -- 271 azul gana con diez puntos de kda
select count(*) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) >= 10; -- 282 rojo gana con diez puntos de kda 

select count(*) from datawithKDA where (blueKDA - redKDA) >= 10; -- 291 con más de 10 puntos de kda de diferencia para azul
select count(*) from datawithKDA where (redKDA - blueKDA) >= 10; -- 309 con más de 10 puntos de kda de diferencia para rojo
-- 5.60% de las partidas con diferencia de 10 puntos de kda se ganan del total de partidas
-- 92.17% de las partidas, cuando se tiene 10 puntos de diferencia de kda se ganan mirando solo las que tienen más de dos puntos de diferencia


select count(*) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) >= 15; -- 122 azul gana con quince puntos de kda
select count(*) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) >= 15; -- 117 rojo gana con quince puntos de kda 

select count(*) from datawithKDA where (blueKDA - redKDA) >= 15; -- 125 con más de 15 puntos de kda de diferencia para azul
select count(*) from datawithKDA where (redKDA - blueKDA) >= 15; -- 127 con más de 15 puntos de kda de diferencia para rojo
-- 2.52% de las partidas con diferencia de 15 puntos de kda se ganan del total de partidas
-- 94.84% de las partidas, cuando se tiene 15 puntos de diferencia de kda se ganan mirando solo las que tienen más de dos puntos de diferencia


select count(*) from datawithKDA where blueWins = 1 and (blueKDA - redKDA) >= 20; -- 46 azul gana con veinte puntos de kda
select count(*) from datawithKDA where blueWins = 0 and (redKDA - blueKDA) >= 20; -- 47 rojo gana con veinte puntos de kda 

select count(*) from datawithKDA where (blueKDA - redKDA) >= 20; -- 46 con más de 20 puntos de kda de diferencia para azul
select count(*) from datawithKDA where (redKDA - blueKDA) >= 20; -- 48 con más de 20 puntos de kda de diferencia para rojo

-- 0.94% de las partidas con diferencia de 20 puntos de kda se ganan del total de partidas
-- 98.94% de las partidas, cuando se tiene 20 puntos de diferencia de kda se ganan mirando solo las que tienen más de dos puntos de diferencia


select count(*) from datawithkda; -- 9879 partidas registradas


select * from datawithkda where blueKDA >= 10 and bluewins = 1; -- 338 partidas con más de 10 de kda y 311 de ellas se ganan (92.01%)
select * from datawithkda where redKDA >= 10 and bluewins = 0; -- 356 partidas con más de 10 de kda y 323 de ellas se ganan (90.73%)

-- 91.37% de los equipos con más de 10 de kda al minuto 10, ganan
-- 7.03% del total de las partidas


/* MONSTRUOS ÉPICOS */

select avg(blueelitemonsters) from datawithkda; -- 0.55 media de monstruos equipo azul
select avg(blueelitemonsters) from datawithkda where bluewins = 1; -- 0.68 media de monstruos equipo azul y gana
select avg(blueelitemonsters) from datawithkda where bluewins = 0; -- 0.41 media de monstruos equipo azul y pierde

select avg(redelitemonsters) from datawithkda; -- 0.57 media de monstruos equipo rojo
select avg(redelitemonsters) from datawithkda where bluewins = 0; -- 0.71 media de monstruos equipo rojo y gana
select avg(redelitemonsters) from datawithkda where bluewins = 1; -- 0.43 media de monstruos equipo rojo y pierde


select count(*) from datawithkda where blueelitemonsters >= 2; -- 710 partidas con dos monstruos azul
select count(*) from datawithkda where blueelitemonsters >= 2 and bluewins = 1; -- 522 de estas se ganan azul
select count(*) from datawithkda where redelitemonsters >= 2; -- 730 partidas con dos monstruos rojo
select count(*) from datawithkda where redelitemonsters >= 2 and bluewins = 0; -- 521 de estas se ganan rojo

-- si haces los dos monstruos ganar está en el 72.43%

select count(*) from datawithkda where blueelitemonsters >= 1; -- 4723 partidas con un monstruo azul
select count(*) from datawithkda where blueelitemonsters >= 1 and bluewins = 1; -- 2875 de estas se ganan azul
select count(*) from datawithkda where redelitemonsters >= 1; -- 4932 partidas con un monstruo rojo
select count(*) from datawithkda where redelitemonsters >= 1 and bluewins = 0; -- 3001 de estas se ganan rojo

-- si haces un monstruo ganar está en el 60.86%


/* HERALDOS DE LA GRIETA */

select avg(blueheralds) from datawithkda; -- 0.19 media de heraldos equipo azul
select avg(blueheralds) from datawithkda where bluewins = 1; -- 0.22 media de heraldos equipo azul y gana
select avg(blueheralds) from datawithkda where bluewins = 0; -- 0.15 media de heraldos equipo azul y pierde

select avg(redheralds) from datawithkda; -- 0.16 media de heraldos equipo rojo
select avg(redheralds) from datawithkda where bluewins = 0; -- 0.20 media de heraldos equipo rojo y gana
select avg(redheralds) from datawithkda where bluewins = 1; -- 0.12 media de heraldos equipo rojo y pierde


select count(*) from datawithkda where blueheralds >= 1; -- 1857 partidas con heraldo azul
select count(*) from datawithkda where blueheralds >= 1 and bluewins = 1; -- 1105 de estas se ganan azul
select count(*) from datawithkda where redheralds >= 1; -- 1581 partidas con heraldo rojo
select count(*) from datawithkda where redheralds >= 1 and bluewins = 0; -- 968 de estas se ganan rojo

-- si haces el heraldo ganar está en el 60.30%


/* DRAGONES */

select avg(bluedragons) from datawithkda; -- 0.36 media de dragones equipo azul
select avg(bluedragons) from datawithkda where bluewins = 1; -- 0.46 media de dragones equipo azul y gana
select avg(bluedragons) from datawithkda where bluewins = 0; -- 0.26 media de dragones equipo azul y pierde

select avg(reddragons) from datawithkda; -- 0.41 media de dragones equipo rojo
select avg(reddragons) from datawithkda where bluewins = 0; -- 0.51 media de dragones equipo rojo y gana
select avg(reddragons) from datawithkda where bluewins = 1; -- 0.31 media de dragones equipo rojo y pierde

select count(*) from datawithkda where bluedragons >= 1; -- 3576 partidas con dragón azul
select count(*) from datawithkda where bluedragons >= 1 and bluewins = 1; -- 2292 de estas se ganan azul
select count(*) from datawithkda where reddragons >= 1; -- 4081 partidas con dragón rojo
select count(*) from datawithkda where reddragons >= 1 and bluewins = 0; -- 2554 de estas se ganan rojo

-- si haces el dragón ganar está en el 63.28%

/* TORRETAS */

select avg(blueTowersDestroyed) from datawithkda; -- 0.05
select avg(blueTowersDestroyed) from datawithkda where bluewins = 1; -- 0.08
select avg(blueTowersDestroyed) from datawithkda where bluewins = 0; -- 0.02

select avg(redTowersDestroyed) from datawithkda; -- 0.04
select avg(redTowersDestroyed) from datawithkda where bluewins = 0; -- 0.07
select avg(redTowersDestroyed) from datawithkda where bluewins = 1; -- 0.02

select count(*) from datawithkda where blueTowersDestroyed >= 4; -- 1
select count(*) from datawithkda where blueTowersDestroyed >= 4 and bluewins = 1; -- 1
-- si tiras 4 torretas tienes un 100% de winrate

select count(*) from datawithkda where blueTowersDestroyed = 3; -- 7
select count(*) from datawithkda where blueTowersDestroyed = 3 and bluewins = 1; -- 7
-- si tiras 3 torretas tienes un 100% de winrate

select count(*) from datawithkda where blueTowersDestroyed = 2; -- 27
select count(*) from datawithkda where blueTowersDestroyed = 2 and bluewins = 1; -- 26
select count(*) from datawithkda where redTowersDestroyed = 2; -- 29
select count(*) from datawithkda where redTowersDestroyed = 2 and bluewins = 0; -- 22
-- si tiras 2 torretas tienes un 85.71% de winrate

select count(*) from datawithkda where blueTowersDestroyed = 1; -- 429
select count(*) from datawithkda where blueTowersDestroyed = 1 and bluewins = 1; -- 316
select count(*) from datawithkda where redTowersDestroyed = 1; -- 367
select count(*) from datawithkda where redTowersDestroyed = 1 and bluewins = 0; -- 280
-- si tiras 1 torreta tienes un 74.87% de winrate

select count(*) from datawithkda where bluewins = 1 and blueGoldDiff >=0; -- 3577
select count(*) from datawithkda where bluewins = 0 and blueGoldDiff >=0; -- 1385

select count(*) from datawithkda where bluewins = 0 and blueGoldDiff <=0; -- 3565
select count(*) from datawithkda where bluewins = 1 and blueGoldDiff <=0; -- 1354

-- 72.39% gana la partida si tiene más oro que el contrincante

select avg(blueTotalMinionsKilled) from datawithkda where bluewins = 1; -- 221.62
select avg(blueTotalMinionsKilled) from datawithkda where bluewins = 0; -- 211.79

-- no hay diferencia de minions notable

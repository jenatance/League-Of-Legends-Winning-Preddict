# League Of Legends Diamond Winrate

League of Legends is a MOBA (multiplayer online battle arena) where 2 teams (blue and red) face off. There are 3 lanes, a jungle, and 5 roles. The goal is to take down the enemy Nexus to win the game.

![Danger!! there are noobs over here](https://map.riftkit.net/img/rift/normal.jpg)

El League of Legends tiene un sistema de partidas clasificatorias en las que te posicionan según tu ELO. El dataset con el que vamos a trabajar, son datos de la liga de Diamante.

![ELO LOL](https://support-leagueoflegends.riotgames.com/hc/article_attachments/4462543080723/ranked-infographic-league-of-legends-season-1__1_-LATAM.jpg)

## 🛠️ Objetivos

Una partida de League Of Legends se subdivide en dos momentos: la fase de líneas y los team-fights. Con este análisis queremos averiguar si con los datos de una partida después de la fase de línea, se puede calcular objetivamente la probabilidad que tiene un equipo de ganar. La fase de líneas suele durar de 10 a 15 minutos (depende de las condiciones de la partida); en este caso, vamos a centrarnos en el tiempo mínimo para saber si ya se puede establecer porcentajes esclarecedores.


## 📚 Qué hemos analizado

Hemos buscado un dataset con los datos de partidas de diamante del LOL en `Kaggle`, hemos recortado los datos a 10 minutos. Los hemos limpiado en `jupyter` , hemos generado columnas nuevas con datos calculados que nos interesaban, como el KDA y también hemos cambiado algunos datos como las 'deaths', donde los ceros nos iban a dar problemas y los hemos cambiado por unos.

Finalmente, este `DataFrame` lo hemos exportado a `.csv`; y, luego, este .csv lo hemos importado a `MySQL` donde hemos lanzados distintas `queries`para ver los datos que tenemos y como se comportan. (En este repositorio puedes encontrar un documentos con las consultas en la carpeta `src`).

Una vez analizado qué es lo que nos interesa y qué es lo que no; hemos cargado nuestro .csv a `tableau desktop` para poder visualizar nuestros datos.


## Resultados

![Insight1](/img/insights1.png)

Como podemos observar, los desarrolladores de este juego, intentar siempre mantener el 50% de winrate para cada lado del mapa; con nuestro datos tenemos un 49.9% para el lado azul.

Por otro lado, vemos que el equipo que se lleva la 'first blood' (el primer asesinato de la partida), el 60% de las veces, gana la partida.

También vemos, que al minuto 10 de partida la media del KDA de los equipos que ganan y la media del KDA de los equipos que pierden ya son muy diferentes. Mientras que cuando ganan tienen un KDA entorno al 3.9, cuando pierden este baja hasta 1.8.

** KDA = (kills + assists) / deaths

![Insight2](/img/insights2.png)


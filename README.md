
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

  

Una vez analizado qué es lo que nos interesa y qué es lo que no; hemos cargado nuestro .csv a `tableau desktop` para poder visualizar nuestros datos. Para ver el story completo: https://public.tableau.com/app/profile/jenad/viz/insights_lol/Insights?publish=yes

  
  

## Resultados

  

![Insight1](/img/insights1.png)

  

Como podemos observar, los desarrolladores de este juego, intentar siempre mantener el 50% de winrate para cada lado del mapa; con nuestro datos tenemos un 49.9% para el lado azul.

  

Por otro lado, vemos que el equipo que se lleva la 'first blood' (el primer asesinato de la partida), el 60% de las veces, gana la partida.

  

También vemos, que al minuto 10 de partida la media del KDA de los equipos que ganan y la media del KDA de los equipos que pierden ya son muy diferentes. Mientras que cuando ganan tienen un KDA entorno al 3.9, cuando pierden este baja hasta 1.8.

  

** KDA = (kills + assists) / deaths

  

![Insight2](/img/insights2.png)

En esta otra captura de pantalla, tenemos un análisis más detallado de la importancia del KDA en las partidas. 

- En las partidas en las que al minuto 10, hay una diferencia de 2 puntos de KDA entre los equipos; el equipo con mayor KDA gana el 79.64% de las veces.
- Con una diferencia de 5 puntos, gana el 86.97% de las veces.
- Con una diferencia de 10 puntos, sube hasta el 92.17%.

Cuanto mayor es la diferencia de KDA mayor es el porcentaje de partidas que se ganan.

También hemos calculado que el 91.37% ganan la partida cuando su KDA es mayor o igual a 10 en el minuto 10 de partida.

![Insight3](/img/insights3.png)

En esta última captura vemos otros detalles importantes a la hora de saber si un equipo va a ganar o no.

- El 58.63% de los equipos que matan a uno de los objetivos de la jungla ganan, sube al 73.52% si matan a dos de los objetivos. Los equipos que únicamente hacen el heraldo de la grieta, ganan el 60.30% de las veces; y los que hacen el dragón ganan el 63.28% de las veces. (Estos detalles más en profundidad, están recogidos en el documento de queries de MySQL).
- Los equipos que tiran una torreta, ganan el 74.87% de las veces, los que tiran dos, el 85.71% de las veces. Los datos recogidos en los que tiran más de dos torretas nos indican un 100% de victorias, pero es una muestra muy pequeña (8 partidas de 9879).
- La diferencia de oro también parece ser un indicar de winrate, pues el 72.39% de las victorias, tenían mayor oro al minuto 10 que sus contrincantes.
- Valores como los wards (puntos de visión) y minions, no tiran valores significativos ya que estos siempre son los mismos se pierda o se gane.


Como conclusión, creo que sí hay datos suficientes para dar un porcentaje bastante alto de winrate al terminar la fase de líneas, ya que la mayoría de las datos nos arrojan porcentajes en torno al 70% de victorias.
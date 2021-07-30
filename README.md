# Scrapping_Jkanime1
 
Se realizó un trabajo de Scrapping, donde se tuvo que utilizar las funciones FOR, IF, ELSE, entre otros, para poder interactuar entre las paginas y de esta forma obtener los datos. Se hará Scrapping a la pagina Jkanime, puesto que se quiere analizar la cantidad de genero, anime, tipo y top, que tiene la página, además se espera hacer una comparación entre las otras paginas escogidas, las cuales son: tioanime y animefenix.com. Esta comparación tiene por finalidad saber cual pagina seria más interesante para el usuario y sus razones.

Para poder empezar a utilizar las funciones, primero se debió instalar ciertas librerías, las cuales fueron rvest, tidyverse y dplyr, puesto que si no se instalan, las formulas no funcionarán. Una vez hecho esto, se empezó con abriendo la página, la cual todavía no esta limpia, por lo que los datos saldrán desordenados.

En primer lugar se quiere extraer la información de cuántos géneros tiene esta página, para esto se fue limpiando de a poco, probando con los códigos y observando cuál era la que dejara más limpia la información. Se selecciono el elemento “.genre-list”, pero los datos salían desordenados, por lo cual se tuvo que escoger la variable “li”, al hacerlo nos dejo ordenada los datos que se querían adquirir, pero había un dato que no era el que se quería, por lo cual se tuvo que agrupar los datos, después se hizo una data.frame, en el cual se tuvo que agregar una variable numero, para poder quitar el dato que no se quería. 

numeros         agrupar1
        2           Accion
        3       Artes Marciales
        4            Autos
        5         Aventura
        6         Colegial
        7          Comedia
        8       Cosas de la vida
        9         Dementia
      10         Demonios
      11         Deportes
      12            Drama
      13            Ecchi
      14         Fantasia
      15            Harem
      16        Historico
      17            Josei
      18           Juegos
      19            Magia
      20            Mecha
      21          Militar
      22         Misterio
      23           Musica
      24            Niños
      25          Parodia
      26         Policial
      27      Psicologico
      28          Romance
      29          Samurai
      30           Sci-fi
      31           Seinen
      32           Shoujo
      33        Shoujo ai
      34          Shounen
      35       Shounen ai
      36     Sobrenatural
      37            Space
      38    Super poderes
      39           Terror
      40         Thriller
      41         Vampiros
      42             Yaoi
      43             Yuri


Al tener solo los datos que se querían se contabilizo, los cuales son 42 géneros, por lo que se puede deducir que esta pagina es variada.

Una vez obtenido lo anterior, se va a navegar por las paginas de cada genero, para poder sacar cuántos anime hay por genero. Para poder realizarlo se utilizo la FOR, puesto que esta función nos permite navegar por varias paginas, después se escogió los elementos y variable, los cuales fueron “.anime__item” , ”.anime__item__text”  y “h5”, estos se repitieron en todos los géneros, así que solo se tenía que cambiar el numero de las paginas, el link y el nombre de las variables que se pusieron en el r. 

Pero al correrlo solo nos entregaban los nombres de los animes, el cual no era lo que realmente buscábamos, ya que se quería saber la cantidad de anime por genero, para poder obtener estos datos, se tuvo que hacer una data.frame, pero no la formula tuvo problemas, por lo que se hizo de otra manera, más manual, aunque algunos datos si se pudieron sacar directamente en r.

Los resultados fue que el genero que tiene mayor anime es el de la comedia, seguida por acción y en tercer puesto esta lo psicológico. 


También se busca sacar la información de cuantos animes por tipo tiene la página, para realizarlo se escogió el elemento “.type-list” y la variable “ul”, los datos arrogados son que solo hay 2 animes por tipo, los cuales son: Ovas y Películas, lo cual es muy poco para ser una pagina que tiene varios géneros, ya que no cuentan con “series”, “especiales”, etc. 

Una vez tenido los datos anteriores, se puede sacar la información de la cantidad de anime que hay por categoría, para esto se uso la misma formula que se tuvo que ocupar para contabilizar los géneros. Al hacerlo nos da como resultado que la pagina tiene más Ovas que Películas.

JKanime tiene una sección de los animes más votados de primavera 2021, para saber cuantos animes y cuales están en el top, se tuvo que escoger el elemento “.list” y la variable “h2”, pero aun así quedaban datos que se tenían que limpiar, una vez hecho esto se saco el numero de me gusta que tenía cada anime.

Ahora se hace una data.frame para poder juntar los datos y para que se pueda observar de mejor manera los datos. Pero debido a que los Nombres Anime Top, no se podían limpiar del todo, a pesar de que se uso gsub y substr no se puedo borrar los números que venían con los nombres, por lo que se decidió hacer un gráfico con los datos que ya se tenían pero en excel.

Para concluir se puede apreciar que a pesar que la pagina tiene varios géneros, la pagina se centra principalmente en ciertos géneros, los cuales son comedia, acción y psicológico, por lo que esta pagina sería ideal para consumidores que les guste estos géneros, en cambio si les gusta el yaoi, yuri u otro, tendrán que acudir a otra pagina por que en esta no encontraran lo que buscan.

La pagina debería agregar más contenido de los géneros que tienen pocos animes, ademas de agregar más tipo de anime, es decir, especiales, tv, ect, para que el consumidor pueda encontrar más fácil lo que desea, puesto que como solo tiene Ova y película, los consumidores tendrán que ir al directorio y buscar por genero u orden de alfabeto el anime que desean ver.

Esta pagina tiene varios puntos buenos como su Top de anime por temporada al igual que su “variado” genero, pero en algunos aspectos debería mejor para atraer más consumidores de los que ya tiene. 


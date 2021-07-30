###Instalando paquete rvest
install.packages("rvest")
library(rvest)
library(dplyr)
#### Abrir pagina web index.html
Jkanime<-read_html("https://jkanime.net")
Jkanime
###Viendo todo el texto que esta contenido en la variable Jkanime###
print(html_text(Jkanime))
####seleccionando un elemento en particular
genero<-html_nodes(Jkanime, css=".genre-list")
###revisando la variable genero
print(html_text(genero))
###Ordenando la varible genero
OrdenarGeneros<-html_nodes(genero, css="li")
###viendo el contenido de OrdenarGeneros
print(html_text(OrdenarGeneros))
###Agrupar la variable OrdenarGeneros
agrupar1<-print(html_text(OrdenarGeneros))
agrupar1
###Agrupar solo generos con una data
numeros<-c(1:43)
data1<-data.frame(numeros,agrupar1)
data1
Generos2<-filter(data1, numeros>=2)
Generos2
###Contabilizar los generos
count(Generos2)
####Tipo de Anime
print(html_text(Jkanime))
Tipo<-html_nodes(Jkanime, css=".type-list")
print(html_text(Tipo))
TipoAnime<-html_nodes(Tipo, css="ul")
print(html_text(TipoAnime))
####Ovas
for(nroPagina in 1:31){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJova<-paste("https://jkanime.net/tipo/ova/",nroPagina, sep="")
  jkaova<-read_html(urlJova)
  itemanimeova<-html_nodes(jkaova,css=".anime__item")
  item1ova<-html_nodes(itemanimeova,css=".anime__item__text")
  AnimeOva<-html_nodes(item1ova,css="h5")
  print(html_text(AnimeOva))
}
######

###Peliculas
for(nroPagina in 1:18){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJpeli<-paste("https://jkanime.net/tipo/pelicula/",nroPagina, sep="")
  jkapeli<-read_html(urlJpeli)
  itemanimepeli<-html_nodes(jkapeli,css=".anime__item")
  item1peli<-html_nodes(itemanimepeli,css=".anime__item__text")
  AnimePelicula<-html_nodes(item1peli,css="h5")
  print(html_text(AnimePelicula))
}
######Contabilizar Ovas y Peliculas

######Grafico
ggplot()

####Navegar en las paginas de animes de Acción
for(nroPagina in 1:42){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkanime<-paste("https://jkanime.net/genero/accion/",nroPagina, sep="")
  jka<-read_html(urlJkanime)
  itemanime<-html_nodes(jka,css=".anime__item")
  item1<-html_nodes(itemanime,css=".anime__item__text")
  AnimeAccion<-html_nodes(item1,css="h5")
  print(html_text(AnimeAccion))
}

###Contabilizando anime de Accion de todas las paginas
Accion<-as.data.frame()

ftd<-data.frame()


###Navegando por Anime de Artes Marciales
for(nroPagina in 1:4){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaam<-paste("https://jkanime.net/genero/artes-marciales/",nroPagina, sep="")
  jkam<-read_html(urlJkaam)
  itemam<-html_nodes(jkam,css=".anime__item")
  itemam1<-html_nodes(itemam,css=".anime__item__text")
  AnimeArtesMarciales<-html_nodes(itemam1,css="h5")
  print(html_text(AnimeArtesMarciales))
}
###Contabilizando anime de Accion de todas las paginas


###Navegando por Anime de Autos
jkaau<-read_html("https://jkanime.net/genero/autos/")
itemau<-html_nodes(jkaau,css=".anime__item")
AnimeAutos<-html_nodes(jkaau,css="h5")
print(html_text(AnimeAutos))
###Contabilizando Anime de Autos
Autos<-print(html_text(AnimeAutos))
print(length(Autos))

####Navegar en las paginas de animes de Aventura
for(nroPagina in 1:19){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaav<-paste("https://jkanime.net/genero/aventura/",nroPagina, sep="")
  jkaav<-read_html(urlJkaav)
  itemanimeav<-html_nodes(jkaav,css=".anime__item")
  itemav<-html_nodes(itemanimeav,css=".anime__item__text")
  AnimeAventura<-html_nodes(itemav,css="h5")
  print(html_text(AnimeAventura))
}
###Contabilizando anime de Aventura


####Navegar en las paginas de animes de Colegial
for(nroPagina in 1:29){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkac<-paste("https://jkanime.net/genero/colegial/",nroPagina, sep="")
  jkac<-read_html(urlJkac)
  itemanimec<-html_nodes(jkac,css=".anime__item")
  itemac<-html_nodes(itemanimec,css=".anime__item__text")
  AnimeColegial<-html_nodes(itemac,css="h5")
  print(html_text(AnimeColegial))
}
###Contabilizando anime de Colegial

####Navegar en las paginas de animes de Comedia
for(nroPagina in 1:38){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkacom<-paste("https://jkanime.net/genero/comedia/",nroPagina, sep="")
  jkacom<-read_html(urlJkacom)
  itemanimecom<-html_nodes(jkacom,css=".anime__item")
  itemacom<-html_nodes(itemanimecom,css=".anime__item__text")
  AnimeComedia<-html_nodes(itemacom,css="h5")
  print(html_text(AnimeComedia))
}
###Contabilizando anime de Comedia

####Navegar en las paginas de animes de Cosas de la Vida
for(nroPagina in 1:19){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkacov<-paste("https://jkanime.net/genero/cosas-de-la-vida/",nroPagina, sep="")
  jkacov<-read_html(urlJkacov)
  itemanimecov<-html_nodes(jkacov,css=".anime__item")
  itemacov<-html_nodes(itemanimecov,css=".anime__item__text")
  AnimeCosasdelaVida<-html_nodes(itemacov,css="h5")
  print(html_text(AnimeCosasdelaVida))
}
###Contabilizando anime de Cosas de la Vida

####Navegar en las paginas de animes de Dementia
jkade<-read_html("https://jkanime.net/genero/dementia/")
itemade<-html_nodes(jkade,css=".anime__item")
AnimeDementia<-html_nodes(jkade,css="h5")
print(html_text(AnimeDementia))
###Contabilizando anime de Dementia
Dementia<-print(html_text(AnimeDementia))
print(length(Dementia))

####Navegar en las paginas de animes de Demonios
for(nroPagina in 1:4){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkad<-paste("https://jkanime.net/genero/demonios/",nroPagina, sep="")
  jkad<-read_html(urlJkad)
  itemanimed<-html_nodes(jkad,css=".anime__item")
  itemad<-html_nodes(itemanimed,css=".anime__item__text")
  AnimeDemonios<-html_nodes(itemad,css="h5")
  print(html_text(AnimeDemonios))
}
###Contabilizando anime de Demonios

####Navegar en las paginas de animes de Drama
for(nroPagina in 1:22){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkadra<-paste("https://jkanime.net/genero/drama/",nroPagina, sep="")
  jkadra<-read_html(urlJkadra)
  itemanimedra<-html_nodes(jkadra,css=".anime__item")
  itemadra<-html_nodes(itemanimedra,css=".anime__item__text")
  AnimeDrama<-html_nodes(itemadra,css="h5")
  print(html_text(AnimeDrama))
}
###Contabilizando anime de Drama

####Navegar en las paginas de animes de Ecchi
for(nroPagina in 1:13){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaecc<-paste("https://jkanime.net/genero/ecchi/",nroPagina, sep="")
  jkaecc<-read_html(urlJkaecc)
  itemanimecc<-html_nodes(jkaecc,css=".anime__item")
  itemaecc<-html_nodes(itemanimecc,css=".anime__item__text")
  AnimeEcchi<-html_nodes(itemaecc,css="h5")
  print(html_text(AnimeEcchi))
}
###Contabilizando anime de Ecchi

####Navegar en las paginas de animes de Fantasia
for(nroPagina in 1:28){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkafan<-paste("https://jkanime.net/genero/fantasa/",nroPagina, sep="")
  jkafan<-read_html(urlJkafan)
  itemanimefan<-html_nodes(jkafan,css=".anime__item")
  itemafan<-html_nodes(itemanimefan,css=".anime__item__text")
  AnimeFantasia<-html_nodes(itemafan,css="h5")
  print(html_text(AnimeFantasia))
}
###Contabilizando anime de Fantasia

###Navegando por Anime de Harem
for(nroPagina in 1:7){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaharem<-paste("https://jkanime.net/genero/harem/",nroPagina, sep="")
  jkaharem<-read_html(urlJkaharem)
  itemharem<-html_nodes(jkaharem,css=".anime__item")
  itemharem2<-html_nodes(itemharem,css=".anime__item__text")
  AnimeHarem<-html_nodes(itemharem2,css="h5")
  print(html_text(AnimeHarem))
}
###Contabilizando Anime de Harem

###Navegando por Anime de Historico
for(nroPagina in 1:5){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkahis<-paste("https://jkanime.net/genero/historico/",nroPagina, sep="")
  jkahis<-read_html(urlJkahis)
  itemhis<-html_nodes(jkahis,css=".anime__item")
  itemhis2<-html_nodes(itemhis,css=".anime__item__text")
  AnimeHistorico<-html_nodes(itemhis2,css="h5")
  print(html_text(AnimeHistorico))
}
###Contabilizando Anime de Historico

###Navegando por Anime de Josei
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkajo<-paste("https://jkanime.net/genero/josei/",nroPagina, sep="")
  jkajo<-read_html(urlJkajo)
  itemjo<-html_nodes(jkajo,css=".anime__item")
  itemjo2<-html_nodes(itemjo,css=".anime__item__text")
  AnimeJosei<-html_nodes(itemjo2,css="h5")
  print(html_text(AnimeJosei))
}
###Contabilizando Anime de Josei

###Navegando por Anime de Juegos
for(nroPagina in 1:3){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkajue<-paste("https://jkanime.net/genero/juegos/",nroPagina, sep="")
  jkajue<-read_html(urlJkajue)
  itemjue<-html_nodes(jkajue,css=".anime__item")
  itemjue2<-html_nodes(itemjue,css=".anime__item__text")
  AnimeJuegos<-html_nodes(itemjue2,css="h5")
  print(html_text(AnimeJuegos))
}
###Contabilizando Anime de Juegos

###Navegando por Anime de Magia
for(nroPagina in 1:11){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkamag<-paste("https://jkanime.net/genero/magia/",nroPagina, sep="")
  jkamag<-read_html(urlJkamag)
  itemmag<-html_nodes(jkamag,css=".anime__item")
  itemmag2<-html_nodes(itemmag,css=".anime__item__text")
  AnimeMagia<-html_nodes(itemmag2,css="h5")
  print(html_text(AnimeMagia))
}
###Contabilizando Anime de Juegos

###Navegando por Anime de Mecha
for(nroPagina in 1:6){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkamecha<-paste("https://jkanime.net/genero/mecha/",nroPagina, sep="")
  jkamecha<-read_html(urlJkamecha)
  itemmecha<-html_nodes(jkamecha,css=".anime__item")
  itemmecha2<-html_nodes(itemmecha,css=".anime__item__text")
  AnimeMecha<-html_nodes(itemmecha2,css="h5")
  print(html_text(AnimeMecha))
}
###Contabilizando Anime de Mecha

###Navegando por Anime de Militar
for(nroPagina in 1:6){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkamilitar<-paste("https://jkanime.net/genero/militar/",nroPagina, sep="")
  jkamilitar<-read_html(urlJkamilitar)
  itemmilitar<-html_nodes(jkamilitar,css=".anime__item")
  itemmilitar2<-html_nodes(itemmilitar,css=".anime__item__text")
  AnimeMilitar<-html_nodes(itemmilitar2,css="h5")
  print(html_text(AnimeMilitar))
}
###Contabilizando Anime de Mecha

###Navegando por Anime de Misterio
for(nroPagina in 1:9){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkamisterio<-paste("https://jkanime.net/genero/misterio/",nroPagina, sep="")
  jkamisterio<-read_html(urlJkamisterio)
  itemmisterio<-html_nodes(jkamisterio,css=".anime__item")
  itemmisterio2<-html_nodes(itemmisterio,css=".anime__item__text")
  AnimeMisterio<-html_nodes(itemmisterio2,css="h5")
  print(html_text(AnimeMisterio))
}
###Contabilizando Anime de Misterio

###Navegando por Anime de Musica
for(nroPagina in 1:9){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkamu<-paste("https://jkanime.net/genero/musica/",nroPagina, sep="")
  jkamu<-read_html(urlJkamu)
  itemu<-html_nodes(jkamu,css=".anime__item")
  itemu2<-html_nodes(itemu,css=".anime__item__text")
  AnimeMusica<-html_nodes(itemu2,css="h5")
  print(html_text(AnimeMusica))
}
###Contabilizando Anime de Musica

###Navegando por Anime de Niños
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkanino<-paste("https://jkanime.net/genero/nios/",nroPagina, sep="")
  jkanino<-read_html(urlJkanino)
  itemnino<-html_nodes(jkanino,css=".anime__item")
  itemnino2<-html_nodes(itemnino,css=".anime__item__text")
  AnimeNino<-html_nodes(itemnino2,css="h5")
  print(html_text(AnimeNino))
}
###Contabilizando Anime de Niños

###Navegando por Anime de Parodia
for(nroPagina in 1:4){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaparo<-paste("https://jkanime.net/genero/parodia/",nroPagina, sep="")
  jkaparo<-read_html(urlJkaparo)
  itemparo<-html_nodes(jkaparo,css=".anime__item")
  itemparo2<-html_nodes(itemparo,css=".anime__item__text")
  AnimeParodia<-html_nodes(itemparo2,css="h5")
  print(html_text(AnimeParodia))
}
###Contabilizando Anime de Parodia

###Navegando por Anime de Policial
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkapoli<-paste("https://jkanime.net/genero/policial/",nroPagina, sep="")
  jkapoli<-read_html(urlJkapoli)
  itempoli<-html_nodes(jkapoli,css=".anime__item")
  itempoli2<-html_nodes(itempoli,css=".anime__item__text")
  AnimePolicial<-html_nodes(itempoli2,css="h5")
  print(html_text(AnimePolicial))
}
###Contabilizando Anime de Policial

###Navegando por Anime de Psicologico
for(nroPagina in 1:5){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkapsico<-paste("https://jkanime.net/genero/psicologico/",nroPagina, sep="")
  jkapsico<-read_html(urlJkapsico)
  itempsico<-html_nodes(jkapsico,css=".anime__item")
  itempsico2<-html_nodes(itempsico,css=".anime__item__text")
  AnimePsicologico<-html_nodes(itempsico2,css="h5")
  print(html_text(AnimePsicologico))
}
###Contabilizando Anime de Psicologico

###Navegando por Anime de Romance
for(nroPagina in 1:28){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkarom<-paste("https://jkanime.net/genero/romance/",nroPagina, sep="")
  jkarom<-read_html(urlJkarom)
  itemrom<-html_nodes(jkarom,css=".anime__item")
  itemrom2<-html_nodes(itemrom,css=".anime__item__text")
  AnimeRomance<-html_nodes(itemrom2,css="h5")
  print(html_text(AnimeRomance))
}
###Contabilizando Anime de Romance

###Navegando por Anime de Samurai
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkasa<-paste("https://jkanime.net/genero/samurai/",nroPagina, sep="")
  jkasam<-read_html(urlJkasa)
  itemsam<-html_nodes(jkasam,css=".anime__item")
  itemsam2<-html_nodes(itemsam,css=".anime__item__text")
  AnimeSamurai<-html_nodes(itemsam2,css="h5")
  print(html_text(AnimeSamurai))
}
###Contabilizando Anime de Samurai

###Navegando por Anime de Sci-fi
for(nroPagina in 1:18){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkasci<-paste("https://jkanime.net/genero/sci-fi/",nroPagina, sep="")
  jkasci<-read_html(urlJkasci)
  itemsci<-html_nodes(jkasci,css=".anime__item")
  itemsci2<-html_nodes(itemsci,css=".anime__item__text")
  AnimeSciFi<-html_nodes(itemsci2,css="h5")
  print(html_text(AnimeSciFi))
}
###Contabilizando Anime de SCI-FI

###Navegando por Anime de Seinen
for(nroPagina in 1:11){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaseinen<-paste("https://jkanime.net/genero/seinen/",nroPagina, sep="")
  jkaseinen<-read_html(urlJkaseinen)
  itemseinen<-html_nodes(jkaseinen,css=".anime__item")
  itemseinen2<-html_nodes(itemseinen,css=".anime__item__text")
  AnimeSeinen<-html_nodes(itemseinen2,css="h5")
  print(html_text(AnimeSeinen))
}
###Contabilizando Anime de Seinen

###Navegando por Anime de Shoujo
for(nroPagina in 1:7){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkasho<-paste("https://jkanime.net/genero/shoujo/",nroPagina, sep="")
  jkasho<-read_html(urlJkasho)
  itemsho<-html_nodes(jkasho,css=".anime__item")
  itemsho2<-html_nodes(itemsho,css=".anime__item__text")
  AnimeShoujo<-html_nodes(itemsho2,css="h5")
  print(html_text(AnimeShoujo))
}
###Contabilizando Anime de Shoujo

###Navegando por Anime de Shoujo Ai
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkashoai<-paste("https://jkanime.net/genero/shoujo-ai/",nroPagina, sep="")
  jkashoai<-read_html(urlJkashoai)
  itemshoai<-html_nodes(jkashoai,css=".anime__item")
  itemshoai2<-html_nodes(itemshoai,css=".anime__item__text")
  AnimeShoujoAi<-html_nodes(itemshoai2,css="h5")
  print(html_text(AnimeShoujoAi))
}
###Contabilizando Anime de Shoujo Ai

###Navegando por Anime de Shounen
for(nroPagina in 1:28){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkashou<-paste("https://jkanime.net/genero/shounen/",nroPagina, sep="")
  jkashou<-read_html(urlJkashou)
  itemshou<-html_nodes(jkashou,css=".anime__item")
  itemshou2<-html_nodes(itemshou,css=".anime__item__text")
  AnimeShounen<-html_nodes(itemshou2,css="h5")
  print(html_text(AnimeShounen))
}
###Contabilizando Anime de Shounen

###Navegando por Anime de Shounen Ai
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkashouai<-paste("https://jkanime.net/genero/shounen-ai/",nroPagina, sep="")
  jkashouai<-read_html(urlJkashouai)
  itemshouai<-html_nodes(jkashouai,css=".anime__item")
  itemshouai2<-html_nodes(itemshouai,css=".anime__item__text")
  AnimeShounenAi<-html_nodes(itemshouai2,css="h5")
  print(html_text(AnimeShounenAi))
}
###Contabilizando Anime de Shounen Ai

###Navegando por Anime de Sobrenatural
for(nroPagina in 1:22){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkasobre<-paste("https://jkanime.net/genero/sobrenatural/",nroPagina, sep="")
  jkasobre<-read_html(urlJkasobre)
  itemsobre<-html_nodes(jkasobre,css=".anime__item")
  itemsobre2<-html_nodes(itemsobre,css=".anime__item__text")
  AnimeSobrenatural<-html_nodes(itemsobre2,css="h5")
  print(html_text(AnimeSobrenatural))
}
###Contabilizando Anime de Sobrenatural

###Navegando por Anime de Space
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaspace<-paste("https://jkanime.net/genero/space/",nroPagina, sep="")
  jkaspace<-read_html(urlJkaspace)
  itemspace<-html_nodes(jkaspace,css=".anime__item")
  itemspace2<-html_nodes(itemspace,css=".anime__item__text")
  AnimeSpace<-html_nodes(itemspace2,css="h5")
  print(html_text(AnimeSpace))
}
###Contabilizando Anime de Space

###Navegando por Anime de Super Poderes
for(nroPagina in 1:9){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkasuper<-paste("https://jkanime.net/genero/super-poderes/",nroPagina, sep="")
  jkasuper<-read_html(urlJkasuper)
  itemsuper<-html_nodes(jkasuper,css=".anime__item")
  itemsuper2<-html_nodes(itemsuper,css=".anime__item__text")
  AnimeSuperPoderes<-html_nodes(itemsuper2,css="h5")
  print(html_text(AnimeSuperPoderes))
}
###Contabilizando Anime de Super Poderes

###Navegando por Anime de Terror
for(nroPagina in 1:5){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkaterror<-paste("https://jkanime.net/genero/terror/",nroPagina, sep="")
  jkaterror<-read_html(urlJkaterror)
  itemterror<-html_nodes(jkaterror,css=".anime__item")
  itemterror2<-html_nodes(itemterror,css=".anime__item__text")
  AnimeTerror<-html_nodes(itemterror2,css="h5")
  print(html_text(AnimeTerror))
}
###Contabilizando Anime de Terror

###Navegando por Anime de Thriller
for(nroPagina in 1:2){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkathr<-paste("https://jkanime.net/genero/thriller/",nroPagina, sep="")
  jkathr<-read_html(urlJkathr)
  itemthr<-html_nodes(jkathr,css=".anime__item")
  itemthr2<-html_nodes(itemthr,css=".anime__item__text")
  AnimeThriller<-html_nodes(itemthr2,css="h5")
  print(html_text(AnimeThriller))
}
###Contabilizando Anime de Thriller

###Navegando por Anime de Vampiros
for(nroPagina in 1:3){
  print(paste("Navegando por el nro de pagina:", nroPagina))
  urlJkavamp<-paste("https://jkanime.net/genero/vampiros/",nroPagina, sep="")
  jkavamp<-read_html(urlJkavamp)
  itemvamp<-html_nodes(jkavamp,css=".anime__item")
  itemvamp2<-html_nodes(itemvamp,css=".anime__item__text")
  AnimeVampiros<-html_nodes(itemvamp2,css="h5")
  print(html_text(AnimeVampiros))
}
###Contabilizando Anime de Thriller

####Navegar en las paginas de animes de Yaoi
jkayaoi<-read_html("https://jkanime.net/genero/yaoi/")
itemayaoi<-html_nodes(jkayaoi,css=".anime__item")
AnimeYaoi<-html_nodes(jkayaoi,css="h5")
print(html_text(AnimeYaoi))
###Contabilizando anime de Yaoi
Yaoi<-print(html_text(AnimeYaoi))
print(length(Yaoi))

####Navegar en las paginas de animes de Yuri
jkayuri<-read_html("https://jkanime.net/genero/yuri/")
itemayuri<-html_nodes(jkayuri,css=".anime__item")
AnimeYuri<-html_nodes(jkayuri,css="h5")
print(html_text(AnimeYuri))
###Contabilizando anime de Yuri
Yuri<-print(html_text(AnimeYuri))
print(length(Yuri))


###Top Anime primeravera 2021
Top<-read_html("https://jkanime.net/top/?temporada=Primavera_2021")
Top
###Viendo todo el texto que esta contenido en la variable Top###
print(html_text(Top))
####seleccionando un elemento en particular
Top1<-html_nodes(Top, css=".animinfo")
###revisando la variable Top1
print(html_text(Top1))
###Ordenando la varible Top
Nombres<-html_nodes(Top1, css="h2")
print(html_text(Nombres))
html_attr
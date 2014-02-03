#!/bin/bash
# Nombre: Diego Avendaño Peces
#
# Script que avisa mediante las notificaciones de Ubuntu cuando un producto baja de un precio
#
# Parámetros: Precio umbral (en céntimos) y la url del producto
#

#refresco=1800 # comprueba cada media hora

umbral=901
url="http://www.amazon.es/Transcend-TS8GSDHC10E-Tarjeta-SDHC-clase/dp/B003VNKNEG/"

#while [ true ]
#do
	wget -q $url
	price=`grep priceLarge index.html | sed 's/[a-Z \<\>\"\=\/]//g'`
	rm index.html
	if [ `echo $price | sed 's/\,//'` -lt $umbral ]
	then
		notify-send "¡HA BAJADO DE PRECIO A $price!"
	fi
#sleep $refresco
#done

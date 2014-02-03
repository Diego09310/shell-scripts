#!/bin/bash
#refresco=1800 # comprueba cada media hora
umbral=901
#while [ true ]
#do
	wget -q http://www.amazon.es/Transcend-TS8GSDHC10E-Tarjeta-SDHC-clase/dp/B003VNKNEG/
	price=`grep priceLarge index.html | sed 's/[a-Z \<\>\"\=\/]//g'`
	rm index.html
	if [ `echo $price | sed 's/\,//'` -lt $umbral ]
	then
		notify-send "¡¡¡HA BAJADO DE PRECIOOOO A $price!!!!!"
#	else
#		notify-send "Nada"
	fi
#sleep $refresco
#done

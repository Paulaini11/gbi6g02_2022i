#! /bin/bash
cp C:/Users/Usuario/Documents/gbi6g02_2022i/data/multi/*1.txt C:/Users/Usuario/Documents/gbi6g02_2022i/data/multi_copia

cd C:/Users/Usuario/Documents/gbi6g02_2022i/data/multi_copia/
touch for_if.txt
for archivo in *1.txt;
do
	numero_columna=`head -n 1 $archivo | tr -d " " | tr -d "\n" | wc -c`
	let residuo=numero_columna%2
	if [ $residuo -eq 0 ];
	then
		echo "PAR: el número de columnas de $archivo es $numero_columna" >> for_if.txt
	else
		echo "IMPAR: el número de columnas de $archivo es $numero_columna" >> for_if.txt
	fi
done



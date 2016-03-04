#!/bin/bash
#params[1] = extensão do arquivo
#params[2] = nome para concatenar com a extensão e a contagem
#params[3] = número de onde a contagem iniciará

if [ -z $3 ]
then
	i=0
else
	i=$3
	count=0
fi

cd $PWD

for file in *.$1
do
	if [ -z $2 ]
	then
		mv $file $i"."$1
	else
		mv $file $2$i"."$1
	fi

	i=$(($i+1))
	if [ -n $3 ]
	then
		count=$(($count+1))
	fi
done

if [ -z $3 ]
then
	echo "\n\n"$i" arquivos renomeados"
else
	echo "\n\n"$count" arquivos renomeados"
fi
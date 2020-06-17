#!user/bin/env bash
#primer intento
#Proyecto Lis Adrian Unix Workbench
#Information input function
function getvalue {
	echo "INTRODUSCA EL NUMERO DE ARCHIVOS QUE CREE QUE TIENE EL DIRECTORIO"
        read files
}
#numero de archivos en el directorio
answer=$(ls -l |grep "^-"|wc -l)
#Variable de Salida
salida=0
while [[ $salida -eq 0 ]]
do
	getvalue
	if [[ $files -eq answer ]]
	then
		salida=1
		echo "tu respuesta es correcta"
	elif [[ $files -lt answer ]]
	then
		echo "intentalo de nuevo, tu numero es menor"
	else
		echo "intentalo de nuevo, tu numero es muy grande"
	fi
done

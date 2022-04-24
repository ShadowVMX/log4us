#!/bin/bash

if [[ $EUID != 0 ]] ; then
	echo " "
	echo "$(tput setaf 1)[!] NO ROOT ABORTING [!]"
	echo " "
	exit
fi

chmod +x log4me
#apt update
#apt upgrade

#Reiniciamos ssh por si queremos regenerar el auth.
#service ssh restart

#Trataremos de generar el auth.log en caso de que el Admin no lo sepa.
service rsyslog restart

#Instalamos en los binarios del sistema.
cp log4me /usr/bin/

echo "" 
echo "[+]Se han llevado a cabo las modificaciones necesarias e instalaciones.[+]"
echo " "
echo "[+]Si quiere gestionar algo más verifique el código setup.sh.[+]"
echo " "

#!/bin/bash
#(C) Denilson Bonatti
#Digitado por Sidnei Lopes Ribeiro em:
#Domingo, 31 de juho de 2022

echo "##########################################################################"
echo "Atualizando o servidor Linux Apache..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "##########################################################################"
echo "Baixando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

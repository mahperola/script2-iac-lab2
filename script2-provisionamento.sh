#!/bin/bash

#Atualizar servidor
apt-get update 
apt-get upgrade -y

#Instalar o apache
apt-get install apache2 -y

#Instalação do unzip
apt-get install unzip -y

#abrir a pasta tmp do diretório
cd /tmp

#baixar o projeto na pasta /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#descompactar o arquivo man.zip
unzip main.zip

#abrindo o diretório descompactado
cd linux-site-dio-main

#copiar os arquivos para a pasta apache
cp -R */var/www/html/

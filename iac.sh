#!/bin/bash

echo "Script para instalar aplicação iniciado..."

echo "Atualizando o sistema operacional"

apt-get update
apt-get upgrade -y

echo "..."
echo " "

echo "Sistema atualizado"

echo "..."
echo " "

echo "Instalando o servidor Apache"
apt-get install apache2 -y

echo "..."
echo " "

echo "Apache instalado"

echo "..."
echo " "

echo "Instalando o unzip"	
apt-get install unzip -y

echo "..."
echo " "

echo "Unzip instalado"


echo "..."
echo " "

echo "Realizando o download da aplicação: "
echo "..."
echo " "

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "..."
echo " "

echo "Download realizado!"


echo "Descompactando o arquivo"

unzip main.zip

echo "Copiando o arquivo para o diretorio do apache"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Arquivo do site copiado para o diretorio padrão do Apache!"

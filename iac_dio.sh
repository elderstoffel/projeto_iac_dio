#!/bin/bash

echo "=> #### Infraestrtura Como Código # Curso de Linux # DIO ### <="

echo "=> Iniciando Script <="

echo "=> Criando diretórios <="

mkdir /adm
mkdir /publico
mkdir /ven
mkdir /sec

echo "=> Criando Grupos de Usuários <="

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "=> Criando Usuários <="

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "=> Especificando Permissões aos Diretórios Criados <="

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 777 /publico
chmod 770 /ven
chmod 770 /sec

echo "=> Encerrando Script <="

echo "=> #### Infraestrtura Como Código # Curso de Linux # DIO ### <="

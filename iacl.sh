#!/bin/bash

echo "========================================"
echo "Script para administração de usuários"
echo "========================================"

echo ""

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários e inserindo no grupo definido"

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Definindo o root como proprietário dos diretórios criados"

chown root  /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo a permissão dos usuários em seus respectivos diretórios"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "============================================"
echo ""


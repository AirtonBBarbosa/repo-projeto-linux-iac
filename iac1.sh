#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários com senha padrão e adicionando aos respectivos grupos ..."

useradd carlos -m -s /bin/bash -c "Carlos da Silva" -p $(openssl passwd -1 12345) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria da Silva" -p $(openssl passwd -1 12345) -G GRP_ADM
useradd joao -m -s /bin/bash -c "João da Silva" -p $(openssl passwd -1 12345) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Débora da Silva" -p $(openssl passwd -1 12345) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -c "Sebastião da Silva" -p $(openssl passwd -1 12345) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto da Silva" -p $(openssl passwd -1 12345) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina da Silva" -p $(openssl passwd -1 12345) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda da Silva" -p $(openssl passwd -1 12345) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogério da Silva" -p $(openssl passwd -1 12345) -G GRP_SEC

echo "Especificando permissões de cada diretório..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..."

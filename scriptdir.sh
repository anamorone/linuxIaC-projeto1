#!/bin/bash

echo "Criando os diretórios: "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos: "

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando usuários: "

useradd carlos -m -c "Carlos" -s /bin/bash
useradd maria -m -c "Maria" -s /bin/bash
useradd joao -m -c "João" -s /bin/bash
useradd debora -m -c "Débora" -s /bin/bash
useradd sebastiana -m -c "Sebastiana" -s /bin/bash
useradd roberto -m -c "Roberto" -s /bin/bash
useradd josefina -m -c "Josefina" -s /bin/bash
useradd amanda -m -c "Amanda" -s /bin/bash
useradd rogerio -m -c "Rogerio" -s /bin/bash

echo "Colocando os usuários em grupos: "

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Especificando permissões dos diretórios: "


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "Especificando permissões dos usuários: "

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM!!"











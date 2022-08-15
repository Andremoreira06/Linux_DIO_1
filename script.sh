#!/bin/bash
echo "Criando diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"
useradd -m -s carlos /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd -m -s maria /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd -m -s joao /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd -m -s debora /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd -m -s sebastiana /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd -m -s roberto /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd -m -s josefina /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd -m -s amanda /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd -m -s rogerio /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC

echo "Especificando permissoes dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


























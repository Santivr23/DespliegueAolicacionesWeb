#Instalar sistema base
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

#Instalar servidor DNS
apt-get -y install bind9 bind9utils

# Copiar archivos de configuración del servidor
cp -v /vagrant/files/venus/named.conf.{options,local} /etc/bind

# Reiniciar el servidor.
systemctl restart bind9
#Instalar sistema base
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

#Instalar servidor DNS
apt-get -y install bind9 bind9utils

# Copiar archivos de configuración del servidor
cp -v /vagrant/files/tierra/named /etc/default/named
cp -v /vagrant/files/tierra/named.conf.{options,local} /etc/bind
cp -v /vagrant/files/tierra/sistema.sol.dns /var/lib/bind
cp -v /vagrant/files/tierra/sol.192.168.57 /var/lib/bind
cp -v /vagrant/files/tierra/named /etc/default/
cp -v /vagrant/files/tierra/named.conf /etc/bind/
cp -v /vagrant/files/tierra/resolv.conf /etc/ 

# Reiniciar el servidor.
systemctl restart bind9
#!/bin/bash

apt-get update -y
apt-get upgrade -y

apt-get -y install joe git openjdk-7-jdk openjdk-7-jre-headless
cd /usr/local
wget http://apache.rediris.es/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz
tar -xzvf apache-tomcat-8.5.23.tar.gz
ln -s apache-tomcat-8.5.23

cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat deaults
service tomact8 start

#!/usr/bin/env bash

#Install git
sudo apt-get update
sudo apt-get install -y git

sudo add-apt-repository -y ppa:cwchien/gradle
sudo apt-get update
sudo apt-get install -y gradle


# Install jdk8
sudo apt-get -y install python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer

# Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
sudo service jenkins restart


# Install postgres
sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib

sudo -u postgres psql --command "CREATE USER dojo_ci WITH SUPERUSER PASSWORD 'dojo_ci';"
sudo -u postgres psql --command "CREATE DATABASE dojo_ci_web WITH OWNER dojo_ci;"

sudo chmod o+w /etc/postgresql/9.3/main/pg_hba.conf
sudo chmod o+w /etc/postgresql/9.3/main/postgresql.conf

sudo echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf
sudo echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf

sudo chmod o-w /etc/postgresql/9.3/main/pg_hba.conf
sudo chmod o-w /etc/postgresql/9.3/main/postgresql.conf

sudo /etc/init.d/postgresql restart



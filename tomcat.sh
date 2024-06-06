##Get TomCat
yum install -y java-1.8.0* -y
cd /tmp
wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.tar.gz
mkdir -p /opt/tomcat
tar -xvzf apache-tomcat-9.0.54.tar.gz -C /opt/tomcat --strip-components=1
chmod +x /opt/tomcat/bin/*.sh
touch /etc/systemd/system/tomcat.service
groupadd tomcat
useradd -r -s /bin/false -g tomcat -d /opt/tomcat tomcat
chown -R tomcat:tomcat /opt/tomcat



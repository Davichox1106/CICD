FROM tomcat:8.0-alpine

# Copia tu aplicación
ADD target/JsfDemoApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Agrega usuarios Tomcat para manager-gui y admin-gui
COPY tomcat-users.xml /usr/local/tomcat/conf/

# Expone el puerto
EXPOSE 8080

# Comando por defecto
CMD ["catalina.sh", "run"]

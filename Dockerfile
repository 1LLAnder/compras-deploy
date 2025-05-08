FROM payara/server-full:5.2022.5

# Establecer el directorio de trabajo
WORKDIR $DEPLOY_DIR

# Copiar el archivo WAR al directorio de despliegue
COPY ./ModuloCompras.war $DEPLOY_DIR

# Asegurarse de que el archivo tenga los permisos correctos
RUN chmod +x $DEPLOY_DIR/ModuloCompras.war

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 8080

# Comando para iniciar Payara Server
CMD ["asadmin", "deploy", "ModuloCompras.war"]

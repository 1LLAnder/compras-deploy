FROM payara/server-full:5.2022.5

# Copiamos el WAR al directorio de despliegue de Payara
COPY ./ModuloCompras.war $DEPLOY_DIR

# Exponemos los puertos 8080 (para la app) y 4848 (para el admin)
EXPOSE 8080 4848

# Comando para desplegar el WAR y luego iniciar el dominio
CMD ["sh", "-c", "asadmin deploy --name ModuloCompras --contextroot / $DEPLOY_DIR/ModuloCompras.war && asadmin start-domain --verbose"]

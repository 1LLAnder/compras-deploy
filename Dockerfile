FROM payara/server-full:5.2022.5

# Copiamos el WAR al directorio de despliegue de Payara
COPY ./ModuloCompras.war $DEPLOY_DIR

# Exponemos los puertos 8080 (para la app) y 4848 (para el admin)
EXPOSE 8080 4848

# Deploy del WAR en Payara
CMD ["asadmin", "deploy", "--name", "ModuloCompras", "--contextroot", "/", "$DEPLOY_DIR/ModuloCompras.war"]

# Levantamos el servidor en modo verbose para ver logs
CMD ["asadmin", "start-domain", "--verbose"]

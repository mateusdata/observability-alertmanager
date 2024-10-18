# Use uma imagem base oficial do Alertmanager
FROM prom/alertmanager:latest

# Copie o arquivo de configuração alertmanager.yml para o container
COPY alertmanager.yml /etc/alertmanager/alertmanager.yml

# Exponha a porta 9093 que o Alertmanager usa por padrão
EXPOSE 9093

# Comando para iniciar o Alertmanager com o arquivo de configuração especificado
CMD ["--config.file=/etc/alertmanager/alertmanager.yml"]

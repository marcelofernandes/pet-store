FROM docker.elastic.co/kibana/kibana:7.6.2
# ENV ELASTICSEARCH_URL=https:elasticsearch-pcs.herokuapp.com:443
# ENV SERVER_PORT=5605
# ENV SERVER_NAME=teste
# ENV SERVER_PORT=5609
# ENV SERVER_PORT=5614
# ENV SERVER_HOST=0.0.0.0
# ENV ELASTICSEARCH_HOSTS='["https:elasticsearch-pcs.herokuapp.com:443"]'
# COPY kibana.yml /usr/share/kibana/config/kibana.yml
# COPY entrypoint.sh /entrypoint.sh
# CMD /entrypoint.sh
CMD kibana serve -p ${PORT} -e "https://elasticsearch-pcs.herokuapp.com"
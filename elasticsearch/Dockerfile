FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.2
CMD ES_JAVA_OPTS="-Xms200m -Xmx200m" elasticsearch -Ehttp.port=${PORT} -Enetwork.host=0.0.0.0 -Ediscovery.type=single-node
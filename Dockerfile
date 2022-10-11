FROM gradle:7.5.1-jdk17 AS builder
COPY . /movies-battle
WORKDIR /movies-battle
RUN gradle build -x test 
FROM openjdk:17.0.2-jdk-slim
COPY --from=builder /movies-battle/build/libs/movies-battle-0.0.1-SNAPSHOT.jar /usr/local/lib/movies-battle/movies-battle-0.0.1-SNAPSHOT.jar
RUN sh -c "touch /usr/local/lib/movies-battle/movies-battle-0.0.1-SNAPSHOT.jar"
RUN apt-get update && apt install -y curl
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-amd64.deb && \
    dpkg -i filebeat-7.13.0-amd64.deb
COPY --from=builder /movies-battle/filebeat.yml /etc/filebeat/filebeat.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod go-w /etc/filebeat/filebeat.yml

# EXPOSE 8080
CMD /entrypoint.sh && java -jar /usr/local/lib/movies-battle/movies-battle-0.0.1-SNAPSHOT.jar
# CMD java -jar -Dserver.port=${PORT} /usr/local/lib/movies-battle/movies-battle-0.0.1-SNAPSHOT.jar
# CMD java -jar /usr/local/lib/movies-battle/movies-battle-0.0.1-SNAPSHOT.jar
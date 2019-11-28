FROM openjdk:8
ENV JAVA_OPTIONS -server -Xms300m -Xmx512m
COPY javaMicroserviceGke-*.jar /javaMicroserviceGke-*.jar
EXPOSE 8080/tcp
ENTRYPOINT exec java $JAVA_OPTIONS -jar /javaMicroserviceGke-*.jar

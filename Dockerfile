FROM eclipse-temurin:17-jdk
WORKDIR /app
RUN apt-get update && apt-get install -y curl
RUN curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar
COPY application.yml .
EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

COPY . .
RUN ./gradlew build

EXPOSE 80

CMD ["./gradlew", "bootRun"]

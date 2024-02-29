FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

COPY . .
RUN chmod +x ./gradlew
RUN ./gradlew build

EXPOSE 80

CMD ["./gradlew", "bootRun"]

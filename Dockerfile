FROM adoptopenjdk:11.0.6_10-jdk-hotspot as build
WORKDIR /project
COPY gradlew ./
RUN chmod +x ./gradlew
COPY ./gradle ./gradle
RUN ./gradlew --no-daemon --version --quiet # Download gradle binaries
COPY build.gradle settings.gradle app.flavour* ./
COPY ./.flavour ./.flavour
COPY ./src ./src
RUN ./gradlew --no-daemon --quiet build

FROM adoptopenjdk:11.0.6_10-jre-hotspot
WORKDIR /app
RUN echo "#!/bin/sh" > /usr/local/bin/start && chmod +x /usr/local/bin/start
COPY migrate.sh /app/migrate.sh
COPY --from=build /project/build/libs/app.jar .
COPY ./scripts ./scripts
RUN chmod +x ./scripts/run_prod.sh
EXPOSE 8080
CMD [ "/app/scripts/run_prod.sh" ]

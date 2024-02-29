# Getting Started with Spring Boot

[![Deploy to Divio](https://img.shields.io/badge/DEPLOY-TO%20DIVIO-DFFF67?logo=docker&logoColor=white&labelColor=333333)](https://control.divio.com/app/new/?template_url=https://github.com/divio/getting-started-with-java-spring-boot/archive/refs/heads/main.zip)

Welcome to our QuickStart template – your portal to swift application development and seamless local testing. Whether you're delving into Java for the first time or optimizing your workflow, our template, based on Spring Boot' [Spring Initializer](https://start.spring.io/#!type=gradle-project&language=java&platformVersion=3.2.3&packaging=jar&jvmVersion=21&dependencies=web) guide, has got you covered.

## Cloud Setup

Create a [Divio Account](https://control.divio.com/) and choose **Java Spring Boot** from the template selection when creating a new application. Alternatively, click the `Deploy to Divio` button above and follow the app creation wizard. Finally, deploy your app to the `test` or `live` environment.

Beware that the **admin** user is not created automatically.
You can do so by connecting via SSH and manually run `python manage.py createsuperuser`.

For in-depth details about Divio Cloud, refer to the [Divio documentation](https://docs.divio.com/introduction/).

## Local Setup

Install the [Divio CLI](https://github.com/divio/divio-cli) to set up your app locally.

Alternatively, build this app locally using Docker:

1. Ensure [Docker](https://docs.docker.com/get-docker/) is installed and running.
2. Clone this repository locally.
3. Build the app with `docker compose build`.
6. Run the app using `docker compose up`.
7. Open [http://localhost:8000]() to view your app.

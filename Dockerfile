FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app

# Copy the normalized jar created by the Jenkins Prepare Docker Context stage
COPY target/app.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]

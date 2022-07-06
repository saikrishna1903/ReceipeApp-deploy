FROM tomcat:8.5.47-jdk8-openjdk
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/app.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh","run"]
FROM tomcat:7
ADD target/SampleWebApplication.war /usr/local/tomcat/webapps
EXPOSE 9090
CMD ["catalina.sh", "run"]
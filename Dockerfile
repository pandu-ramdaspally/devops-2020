FROM tomcat:8
RUN curl –u admin:admin123 http://35.163.66.9:8082/artifactory/gol/gameoflife.war
RUN cp gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD [“catalina.sh”, “run”]
FROM tomcat

RUN rm -rf $CATALINA_HOME/webapps/*
COPY deployments/ROOT.war $CATALINA_HOME/webapps/ROOT.war

VOLUME /home/jboss/piggydb

EXPOSE 8080
CMD ["catalina.sh", "run"]

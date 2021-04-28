FROM tomcat

RUN rm -rf $CATALINA_HOME/webapps/*
COPY deployments/ROOT.war $CATALINA_HOME/webapps/ROOT 

VOLUME ~/piggydb

CMD ["/srv/tomcat7/bin/catalina.sh", "run"]

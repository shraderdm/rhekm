FROM tomcat

RUN rm -rf $CATALINA_HOME/webapps/*
COPY deployments/ROOT.war $CATALINA_HOME/webapps/ROOT 

RUN sed -i 's/~\/piggydb/\/srv\/piggydb/' $CATALINA_HOME/webapps/ROOT/WEB-INF/config/application.properties

VOLUME /srv/piggydb

CMD ["/srv/tomcat7/bin/catalina.sh", "run"]

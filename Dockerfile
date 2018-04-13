FROM tomcat:7-jre7

COPY run.sh /usr/local/tomcat/bin
RUN chmod a+x /usr/local/tomcat/bin/run.sh

RUN rm -rf /usr/local/tomcat/webapps/*

COPY dubbo-admin-2.0.0.war /tmp
RUN unzip /tmp/dubbo-admin-2.0.0.war -d /usr/local/tomcat/webapps/ROOT \
    && rm -rf /tmp/*.war

ENV ZK_HOST=zookeeper://127.0.0.1:2181
ENV DUBBO_ROOT_PWD=root
ENV DUBBO_GUEST_PWD=guest

EXPOSE 8080

CMD ["run.sh"]

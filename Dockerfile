FROM n3ziniuka5/ubuntu-oracle-jdk:14.04-JDK7

ENV DRILL_HOME=/opt/drill \
    DRILL_LOG_DIR=$DRILL_HOME/logs

WORKDIR $DRILL_HOME

# get & extract drill
RUN wget http://mirror.vorboss.net/apache/drill/drill-1.8.0/apache-drill-1.8.0.tar.gz >/dev/null 2>&1 && \
  tar -xzf apache-drill*.tar.gz --strip=1 && \
  mkdir $DRILL_LOG_DIR && touch $DRILL_LOG_DIR/drillbit.log

ONBUILD COPY ./drill-override.conf $DRILL_HOME/conf/drill-override.conf

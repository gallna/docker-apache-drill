FROM gallna/apache-drill:latest

COPY ./drill-override.conf $DRILL_HOME/conf/drill-override.conf
EXPOSE 8047

# ENTRYPOINT and CMD below can be replaced with ENTRYPOINT ["bin/drill-embedded"]
ENTRYPOINT ["bin/sqlline"]
CMD ["-u", "jdbc:drill:zk=local;schema=dfs", "--color=true", "--verbose=true"]

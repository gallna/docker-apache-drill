FROM gallna/apache-drill:latest

COPY ./drill-override.conf $DRILL_HOME/conf/drill-override.conf
EXPOSE 31010 31011 31012

COPY ./drillbit.sh $DRILL_HOME/drillbit.sh
ENTRYPOINT ["./drillbit.sh"]
CMD "tail" "-f" "$DRILL_LOG_DIR/drillbit.log"

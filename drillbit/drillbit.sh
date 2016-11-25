#!/bin/bash

echo "starting drillbit service..."
eval './bin/drillbit.sh start'

exec "$@"

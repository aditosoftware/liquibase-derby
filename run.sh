#!/bin/bash

#check vars
if [ -z "$LIQUIBASE_CHANGELOGFILE" ]
then
  echo "\$LIQUIBASE_CHANGELOGFILE is empty.Exit"
  exit 1
fi

if [ -z "$DERBY_HOST" ]
then
  echo "\$DERBY_HOST is empty.Exit"
  exit 1
fi

if [ -z "$DERBY_DB" ]
then
  echo "\$DERBY_DB is empty.Exit"
  exit 1
fi

if [ -z "$DERBY_PORT" ]
then
  echo "\$DERBY_PORT is empty.Exit"
  exit 1
fi

 /usr/local/bin/liquibase --defaultSchemaName=${LIQUIBASE_DEFAULTSCHEMA} --classpath=${LIQUIBASE_CLASSPATH} --changeLogFile=${LIQUIBASE_CHANGELOGFILE} --url="jdbc:derby://${DERBY_HOST}:${DERBY_PORT}/${DERBY_DB}" $@
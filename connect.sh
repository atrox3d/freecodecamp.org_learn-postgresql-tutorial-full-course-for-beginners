#!/usr/bin/env bash

# this uses ~/.pgpass file to infer db and password
# host is postgres
# user is postgres
# script passes any additional arguments to psql
# script can read stdin: e.g. ./connect.sh < script.sql
psql -h postgres -U postgres ${@}

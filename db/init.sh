#!/bin/bash
psql -c "CREATE TABLE songs ( songid serial PRIMARY KEY, name TEXT, singer TEXT, genre TEXT);"

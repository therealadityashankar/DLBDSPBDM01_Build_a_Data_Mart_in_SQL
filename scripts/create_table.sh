#!/bin/bash
[ $# -eq 0 ] && echo "Usage: ./project create_table <table_name>" && exit 1
[ ! -f "sql/create/$1.sql" ] && echo "Table not found" && exit 1
sqlite3 data_mart.db < "sql/create/$1.sql" && echo "✓ $1"

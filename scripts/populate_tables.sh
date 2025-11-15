#!/bin/bash

DATABASE_FILE="data_mart.db"
SQL_DIR="sql/populate"

if [ $# -eq 0 ]; then
    echo "Usage: ./project populate_tables <number>"
    echo "Example: ./project populate_tables 20"
    echo "This will run populate scripts from 1_ to <number>_"
    exit 1
fi

NUM_SCRIPTS="$1"

# Validate that the argument is a number
if ! [[ "$NUM_SCRIPTS" =~ ^[0-9]+$ ]]; then
    echo "Error: Argument must be a number"
    exit 1
fi

echo "Populating tables in $DATABASE_FILE (scripts 1 to $NUM_SCRIPTS)..."

for i in $(seq 1 $NUM_SCRIPTS); do
    # Find the SQL file matching the pattern
    SQL_FILE=$(find "$SQL_DIR" -name "${i}_*.sql" | head -n 1)
    
    if [ -z "$SQL_FILE" ]; then
        echo "✗ Warning: No script found for number $i (${i}_*.sql)"
        continue
    fi
    
    TABLE_NAME=$(basename "$SQL_FILE" | sed "s/^${i}_//" | sed 's/.sql$//')
    
    echo "[$i/$NUM_SCRIPTS] Populating: $TABLE_NAME"
    echo "Executing SQL from $SQL_FILE:"
    echo "---"
    cat "$SQL_FILE"
    echo "---"
    sqlite3 "$DATABASE_FILE" < "$SQL_FILE"
    
    if [ $? -eq 0 ]; then
        echo "Data inserted into $TABLE_NAME"
        echo "Contents of $TABLE_NAME:"
        sqlite3 "$DATABASE_FILE" "SELECT * FROM $TABLE_NAME;"
        echo ""
    else
        echo "Error inserting data into $TABLE_NAME"
        exit 1
    fi
done

echo "Successfully populated $NUM_SCRIPTS tables!"

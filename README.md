# DLBDSPBDM01_Build_a_Data_Mart_in_SQL
University sql project

## Project Script Runner

This project includes a simple script runner that executes shell scripts from the `scripts/` directory.
This project has an accompanying colab file (linked in pebblepad) which describes the setup steps and goes through the setup for this utility, that it is highly recommended to use with this project

### Installation

- This code should work as is, by cloning this repository with `git clone https://github.com/therealadityashankar/DLBDSPBDM01_Build_a_Data_Mart_in_SQL.git`
- sqlite3 needs to be installed globally, as shown here https://sqlite.org/download.html prior to using this code, sqlite3 must be installed globally for this code to work
- (optionally) the linked Colab utility in pebblepad goes through this procedure by itself for the ease of a reader

### Usage

```bash
./project <script_name>
```

### Database Setup

### Complete Setup Example

```bash
# Create empty database
./project create_db

# Create one table
./project create_table user

# Create all tables
./project create_all_tables

# Populate all tables with sample data
./project populate_tables 21
```

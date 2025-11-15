# DLBDSPBDM01_Build_a_Data_Mart_in_SQL
University sql project

## Project Script Runner

This project includes a simple script runner that executes shell scripts from the `scripts/` directory.

### Usage

```bash
./project <script_name>
```

This will execute the shell script located at `scripts/<script_name>.sh`.

### Example

```bash
./project abc
```

Runs the code defined in `scripts/abc.sh`.

### Adding New Scripts

1. Create a new shell script in the `scripts/` directory
2. Name it with a `.sh` extension
3. Make it executable: `chmod +x scripts/your_script.sh`
4. Run it with: `./project your_script`

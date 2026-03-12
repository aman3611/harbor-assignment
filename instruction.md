# JSON Transform Harbor Task

## Overview
This task processes JSON records from an input file, transforms the data, and writes the processed results to an output file.

## Objective
The agent should:

1. Read JSON records from `input.txt`
2. Transform each record using the following rules:
   - Convert the `name` field to uppercase
   - Add a new field `age_group` based on the age value:
     - age < 18 → "minor"
     - 18–60 → "adult"
     - age > 60 → "senior"
3. Write the processed records to `output.json`

## Example

### Input

{"name": "Aman", "age": 23}


### Output


{
"name": "AMAN",
"age": 23,
"age_group": "adult"
}


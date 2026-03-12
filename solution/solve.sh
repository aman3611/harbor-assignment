#!/bin/bash

python3 - <<EOF
import json

input_file = "/app/environment/input.txt"
output_file = "/app/output.json"

def age_group(age):
    if age < 18:
        return "minor"
    elif age <= 60:
        return "adult"
    else:
        return "senior"

results = []

with open(input_file) as f:
    for line in f:
        data = json.loads(line)
        data["name"] = data["name"].upper()
        data["age_group"] = age_group(data["age"])
        results.append(data)

with open(output_file,"w") as f:
    json.dump(results,f,indent=2)

print("done")
EOF

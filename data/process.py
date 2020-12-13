"""
pretvaranje iz CSV-a u JSON
"""

import csv
import json

output = {}

with open(f"bolesti_prema_organima.csv") as f:
    reader = csv.reader(f)
    key = ''
    for line in reader:
        # pocni appendat u novi organ ako naletis na novi organ
        if line[0] != '':
            key = line[0]
            output[key] = {
                line[1]: line[2]
            }
        else:
            output[key][line[1]] = line[2]

with open("output.json", "w") as f:
    f.write(json.dumps(output, indent=2, ensure_ascii=False))

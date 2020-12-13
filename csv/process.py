import csv
import json

output = {}

for i in range(1, 7):
    with open(f"{i}.csv") as f:
        reader = csv.reader(f)
        key = ''
        for line in reader:
            if line[0] != '':
                key = line[0]
                output[key] = {
                    line[1]: line[2]
                }
            else:
                output[key][line[1]] = line[2]

with open("output.json", "w") as f:
    f.write(json.dumps(output, indent=2, ensure_ascii=False))

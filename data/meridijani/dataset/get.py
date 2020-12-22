# script which fetches the dataset from trainingset account and saves them

from trainingsetai import TrainingsetClient
from os import environ
from pprint import pprint
import json

client = TrainingsetClient(environ["TS_API_KEY"])

tasks = client.get_tasks({
    "type": "annotation-box",
    "status": "completed"
})

accumulator = []

for task in tasks["data"]:
    result = {
        "points": [item["label"] for item in task["objects_to_annotate"]],
        "annotations": task["result"]["annotations"],
        "imgw": task["image_data"]["width"],
        "imgh": task["image_data"]["height"],
        "img_name": task["instructions"]
    }

    accumulator.append(result)

with open("./dataset.json", "w") as f:
    f.write(json.dumps(accumulator, indent=2))

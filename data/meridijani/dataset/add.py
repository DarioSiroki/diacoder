# adds tasks to trainingset account for annotation

from trainingsetai import TrainingsetClient
from os import environ

client = TrainingsetClient(environ["TS_API_KEY"])

bubrezi_2 = {
    "objects_to_annotate": [f"R {x}" for x in range(1, 11)],
    "attachment_url": "https://i.imgur.com/u9B7ZPu.jpg",
    "instructions": "bubrezi_2"
}

bubrezi = {
    "objects_to_annotate": [f"R {x}" for x in range(11, 28)],
    "attachment_url": "https://i.imgur.com/a59aeGX.jpg",
    "instructions": "bubrezi"
}

debelo_crijevo = {
    "objects_to_annotate": [f"IC {x}" for x in range(1, 21)],
    "attachment_url": "https://i.imgur.com/dpE0YyH.jpg",
    "instructions": "debelo_crijevo"
}

jetra = {
    "objects_to_annotate": [f"H {x}" for x in range(1, 12)],
    "attachment_url": "https://i.imgur.com/z6W946s.jpg",
    "instructions": "jetra"
}

mokracni_mjehur_2 = {
    "objects_to_annotate": [f"VU {x}" for x in range(36, 41)] + [f"VU {x}" for x in range(56, 68)],
    "attachment_url": "https://i.imgur.com/0zXgc8H.jpg",
    "instructions": "mokracni_mjehur_2"
}

mokracni_mjehur = {
    "objects_to_annotate": [f"VU {x}" for x in range(1, 55)],
    "attachment_url": "https://i.imgur.com/rv5dk5j.jpg",
    "instructions": "mokracni_mjehur"
}

osrcje = {
    "objects_to_annotate": [f"Pc {x}" for x in range(1, 10)] + ["C7"],
    "attachment_url": "https://i.imgur.com/MHxJZcs.jpg",
    "instructions": "osrcje"
}

pluca = {
    "objects_to_annotate": [f"P {x}" for x in range(1, 12)],
    "attachment_url": "https://i.imgur.com/VJtS97V.jpg",
    "instructions": "pluca"
}

slezena_i_gusteraca = {
    "objects_to_annotate": [f"LP {x}" for x in range(12, 21)],
    "attachment_url": "https://i.imgur.com/ycIbYC5.jpg",
    "instructions": "slezena_i_gusteraca"
}

srce = {
    "objects_to_annotate": [f"C {x}" for x in range(1, 10)],
    "attachment_url": "https://i.imgur.com/t7W6hf0.jpg",
    "instructions": "srce"
}

tanko_crijevo = {
    "objects_to_annotate": [f"IT {x}" for x in range(1, 20)],
    "attachment_url": "https://i.imgur.com/tKKezjK.jpg",
    "instructions": "tanko_crijevo"
}

trodijelni_grijac = {
    "objects_to_annotate": [f"TR {x}" for x in range(1, 24)],
    "attachment_url": "https://i.imgur.com/Kxvw690.jpg",
    "instructions": "trodijelni_grijac"
}

yang = {
    "objects_to_annotate": [f"DM {x}" for x in range(1, 29)],
    "attachment_url": "https://i.imgur.com/jaKPnbP.jpg",
    "instructions": "yang"
}

yin = {
    "objects_to_annotate": [f"RM {x}" for x in range(1, 25)],
    "attachment_url": "https://i.imgur.com/1aKi8Qi.jpg",
    "instructions": "yin"
}

zeludac_2 = {
    "objects_to_annotate": [f"G {x}" for x in range(31, 46)],
    "attachment_url": "https://i.imgur.com/moO1oOu.jpg",
    "instructions": "zeludac_2"
}

zeludac = {
    "objects_to_annotate": [f"G {x}" for x in range(1, 31)],
    "attachment_url": "https://i.imgur.com/YqyCmZR.jpg",
    "instructions": "zeludac"
}

zucni_mjehur_2 = {
    "objects_to_annotate": [f"VF {x}" for x in range(1, 31)],
    "attachment_url": "https://i.imgur.com/IglrZzX.jpg",
    "instructions": "zucni_mjehur_2"
}

zucni_mjehur = {
    "objects_to_annotate": [f"VF {x}" for x in range(30, 45)],
    "attachment_url": "https://i.imgur.com/qGmcng5.jpg",
    "instructions": "zucni_mjehur"
}

tasks = [bubrezi_2,
         bubrezi,
         debelo_crijevo,
         jetra,
         mokracni_mjehur_2,
         mokracni_mjehur,
         osrcje,
         pluca,
         slezena_i_gusteraca,
         srce,
         tanko_crijevo,
         trodijelni_grijac,
         yang,
         yin,
         zeludac_2,
         zeludac,
         zucni_mjerhur_2,
         zucni_mjerhur]

for task in tasks:
    task["with_labels"] = True
    task["objects_to_annotate"] = [{"label": x}
                                   for x in task["objects_to_annotate"]]
    print(client.create_box_annotation_task(task))

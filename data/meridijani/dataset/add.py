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
    "instructions": "bubrezi_1"
}

debelo_crijevo = {
    "objects_to_annotate": [f"IC {x}" for x in range(1, 21)],
    "attachment_url": "https://i.imgur.com/dpE0YyH.jpg",
    "instructions": "debelo_crijevo_1"
}

jetra = {
    "objects_to_annotate": [f"H {x}" for x in range(1, 12)],
    "attachment_url": "https://i.imgur.com/z6W946s.jpg",
    "instructions": "jetra_1"
}

mokracni_mjehur_2 = {
    "objects_to_annotate": [f"VU {x}" for x in range(36, 41)] + [f"VU {x}" for x in range(56, 68)],
    "attachment_url": "https://i.imgur.com/0zXgc8H.jpg",
    "instructions": "mokracni_mjehur_2"
}

mokracni_mjehur = {
    "objects_to_annotate": [f"VU {x}" for x in range(1, 55)],
    "attachment_url": "https://i.imgur.com/rv5dk5j.jpg",
    "instructions": "mokracni_mjehur_1"
}

osrcje = {
    "objects_to_annotate": [f"Pc {x}" for x in range(1, 10)] + ["C7"],
    "attachment_url": "https://i.imgur.com/MHxJZcs.jpg",
    "instructions": "osrcje_1"
}

pluca = {
    "objects_to_annotate": [f"P {x}" for x in range(1, 12)],
    "attachment_url": "https://i.imgur.com/VJtS97V.jpg",
    "instructions": "pluca_1"
}


slezena_i_gusteraca = {
    "objects_to_annotate": [f"LP {x}" for x in range(1, 12)],
    "attachment_url": "https://i.imgur.com/dCBuoOY.png",
    "instructions": "slezena_i_gusteraca_1"
}

slezena_i_gusteraca_2 = {
    "objects_to_annotate": [f"LP {x}" for x in range(12, 21)],
    "attachment_url": "https://i.imgur.com/ycIbYC5.jpg",
    "instructions": "slezena_i_gusteraca_2"
}

srce = {
    "objects_to_annotate": [f"C {x}" for x in range(1, 10)],
    "attachment_url": "https://i.imgur.com/t7W6hf0.jpg",
    "instructions": "srce_1"
}

tanko_crijevo = {
    "objects_to_annotate": [f"IT {x}" for x in range(1, 20)],
    "attachment_url": "https://i.imgur.com/tKKezjK.jpg",
    "instructions": "tanko_crijevo_1"
}

trodijelni_grijac = {
    "objects_to_annotate": [f"TR {x}" for x in range(1, 24)],
    "attachment_url": "https://i.imgur.com/Kxvw690.jpg",
    "instructions": "trodijelni_grijac_1"
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
    "instructions": "zeludac_1"
}

zucni_mjehur_2 = {
    "objects_to_annotate": [f"VF {x}" for x in range(1, 31)],
    "attachment_url": "https://i.imgur.com/IglrZzX.jpg",
    "instructions": "zucni_mjehur_2"
}

zucni_mjehur = {
    "objects_to_annotate": [f"VF {x}" for x in range(30, 45)],
    "attachment_url": "https://i.imgur.com/qGmcng5.jpg",
    "instructions": "zucni_mjehur_1"
}

bubrezi_3 = {
    "objects_to_annotate": ["R 3", "R 5", "R 6", "R 7"],
    "attachment_url": "https://i.imgur.com/sEBATO1.png",
    "instructions": "bubrezi_3"
}
bubrezi_4 = {
    "objects_to_annotate": [f"R {x}" for x in range(1, 7)],
    "attachment_url": "https://i.imgur.com/jPvms2U.png",
    "instructions": "bubrezi_4"
}
debelo_crijevo_2 = {
    "objects_to_annotate": ["IC 1", "IC 4"],
    "attachment_url": "https://i.imgur.com/jkN6Xg4.png",
    "instructions": "debelo_crijevo_2"
}
jetra_2 = {
    "objects_to_annotate": ["LP 9", "H 6", "R 9", "H 5"],
    "attachment_url": "https://i.imgur.com/dZz71B6.png",
    "instructions": "jetra_2"
}
jetra_3 = {
    "objects_to_annotate": [f"H {x}" for x in range(1, 5)],
    "attachment_url": "https://i.imgur.com/MUo6cQi.png",
    "instructions": "jetra_3"
}
jetra_4 = {
    "objects_to_annotate": ["H 8"],
    "attachment_url": "https://i.imgur.com/AIsecQs.png",
    "instructions": "jetra_4"
}
mokracni_mjehur_3 = {
    "objects_to_annotate": [f"VU {x}" for x in range(57, 68)] + ["VU 39", "VU 40"],
    "attachment_url": "https://i.imgur.com/4RmsMZf.png",
    "instructions": "mokracni_mjehur_3"
}
pluca_2 = {
    "objects_to_annotate": [f"P {x}" for x in range(5, 12)],
    "attachment_url": "https://i.imgur.com/RxLZ1vI.png",
    "instructions": "pluca_2"
}
pluca_3 = {
    "objects_to_annotate": ["P7"],
    "attachment_url": "https://i.imgur.com/QSR21Cd.png",
    "instructions": "pluca_3"
}
slezena_i_gusteraca_3 = {
    "objects_to_annotate": [f"LP {x}" for x in range(6, 10)],
    "attachment_url": "https://i.imgur.com/ySTICBd.png",
    "instructions": "slezena_i_gusteraca_3"
}
slezena_i_gusteraca_4 = {
    "objects_to_annotate": [f"LP {x}" for x in range(1, 6)],
    "attachment_url": "https://i.imgur.com/CHcAcRj.png",
    "instructions": "slezena_i_gusteraca_4"
}
srce_2 = {
    "objects_to_annotate": [f"C {x}" for x in range(3, 8)],
    "attachment_url": "https://i.imgur.com/0mAlqon.png",
    "instructions": "srce_2"
}
tanko_crijevo_2 = {
    "objects_to_annotate": [f"IT {x}" for x in range(1, 7)],
    "attachment_url": "https://i.imgur.com/aAEHk2I.png",
    "instructions": "tanko_crijevo_2"
}
trodijelni_grijac_2 = {
    "objects_to_annotate": [f"TR {x}" for x in range(5, 10)],
    "attachment_url": "https://i.imgur.com/pEtoFe7.png",
    "instructions": "trodijelni_grijac_2"
}
trodijelni_grijac_3 = {
    "objects_to_annotate": [f"TR {x}" for x in range(1, 5)],
    "attachment_url": "https://i.imgur.com/xlvyYX8.png",
    "instructions": "trodijelni_grijac_3"
}
zeludac_3 = {
    "objects_to_annotate": [f"G {x}" for x in range(35, 46)],
    "attachment_url": "https://i.imgur.com/aZYZL36.jpg",
    "instructions": "zeludac_3"
}
zeludac_4 = {
    "objects_to_annotate": [f"G {x}" for x in range(41, 46)],
    "attachment_url": "https://i.imgur.com/d4B3gx9.png",
    "instructions": "zeludac_4"
}
zeludac_5 = {
    "objects_to_annotate": [f"G {x}" for x in range(5, 10)],
    "attachment_url": "https://i.imgur.com/S6oJpxP.png",
    "instructions": "zeludac_5"
}
zeludac_6 = {
    "objects_to_annotate": ["VU 1", "VU 2", "PE 3", "TR 23", "VF 1", "G 1", "PE 4", "G 1", "G 2", "G 3", "G 4"],
    "attachment_url": "https://i.imgur.com/4iiAVKI.png",
    "instructions": "zeludac_6"
}
zucni_mjehur_3 = {
    "objects_to_annotate": [f"VF {x}" for x in range(40, 45)],
    "attachment_url": "https://i.imgur.com/xpABcmR.png",
    "instructions": "zucni_mjehur_3"
}
zucni_mjehur_4 = {
    "objects_to_annotate": [f"VF {x}" for x in range(31, 40)],
    "attachment_url": "https://i.imgur.com/XAE57b4.png",
    "instructions": "zucni_mjehur_4"
}
zucni_mjehur_5 = {
    "objects_to_annotate": ["LP 21", "H 14", "VF 24", "H 13", "VF 25", "VF 29"],
    "attachment_url": "https://i.imgur.com/XoFMHrD.png",
    "instructions": "zucni_mjehur_5"
}

tasks = [
    bubrezi_2,
    bubrezi,
    debelo_crijevo,
    jetra,
    mokracni_mjehur_2,
    mokracni_mjehur,
    osrcje,
    pluca,
    slezena_i_gusteraca_2,
    srce,
    tanko_crijevo,
    trodijelni_grijac,
    yang,
    yin,
    zeludac_2,
    zeludac,
    zucni_mjehur_2,
    zucni_mjehur,
    slezena_i_gusteraca,
    bubrezi_3,
    bubrezi_4,
    debelo_crijevo_2,
    jetra_2,
    jetra_3,
    jetra_4,
    mokracni_mjehur_3,
    pluca_2,
    slezena_i_gusteraca_3,
    slezena_i_gusteraca_4,
    srce_2,
    tanko_crijevo_2,
    trodijelni_grijac_2,
    trodijelni_grijac_3,
    zeludac_3,
    zeludac_4,
    zeludac_5,
    zeludac_6,
    zucni_mjehur_3,
    zucni_mjehur_4,
    zucni_mjehur_5,
]

for task in tasks:
    task["with_labels"] = True
    task["objects_to_annotate"] = [{"label": x}
                                   for x in task["objects_to_annotate"]]
    print(client.create_box_annotation_task(task))

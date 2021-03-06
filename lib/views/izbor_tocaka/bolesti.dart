List<Disorder> disorderList() {
  final List<Disorder> result = [];
  meridians.forEach((String organName, Map<String, String> disorders) {
    disorders.forEach((String disorderName, String points) {
      result.add(Disorder(organName, disorderName, points));
    });
  });
  return result;
}

List<Organ> disorderListByOrgans() {
  final List<Organ> result = [];
  meridians.forEach((String organName, Map<String, String> disorders) {
    result.add(Organ(organName, disorders));
  });
  return result;
}

class Disorder {
  /// To which organ is this disorder mainly related to
  String organ;

  /// Disorder name
  String name;

  /// Points to check for this disorder
  String points;
  Disorder(this.organ, this.name, this.points);
}

class Organ {
  String name;
  final List<Disorder> disorders = [];
  Organ(String organName, Map<String, String> disorders) {
    this.name = organName;
    disorders.forEach((String disorderName, String points) {
      this.disorders.add(Disorder(organName, disorderName, points));
    });
  }
}

const meridians = {
  "Nos i sinusi": {
    "rhinitis": "#P 7, VF 20, #IC 20, #IC 4, VU 10, VU 11, VU 12, VU 13, PR 1",
    "epistaxis": "#IT 1, IT 3, TR 5, IC 3, #IC 4, VU 40, DM 14",
    "sinusitis frontalis": "#P 7, VU 2, #IC 4, P 11, PE 1, DM 23",
    "sinusitis maxillaris": "#P 7, G 2, G 14, VF 7, P 1, IC 4, IT 18"
  },
  "Ždrijelo": {
    "angina": "#IT 3, #IC 4, IC 1, P 2, P 10, C 9, G 8,G 44",
    "pharyngitis chronica": "P 7, Pc 5"
  },
  "Usta i zubi": {
    "stomatitis": "#IT 3, VF 20, VF 21, VU 10, IC 4, IC 2",
    "gingivitis": "#Pc 8, IT 8, #P 11, P 9, P 7, #G 45",
    "glositis": "#P 7, #TR 5, VU 10, IC 7, RM 23",
    "odontalgia":
        "#IC 4, #IC 1, #P 11, P 7, VF 15, VF 16, IT 3, G 7, G 6, G 44, VU 23"
  },
  "Uho": {
    "otitis": "#TR 5, #TR 17, VF 20, VF 2",
    "otorrhea chronica": "#IC 4, G 36, TR 17, 21, VF 2",
    "otogeni vertigo": "DM 20, VF 20, #TR 17, H 3, Pc 6, G 40, #VF 19, R 3",
    "tinitus auris": "DM 19, G 36, #TR 5, TR 23, TR 22, TR 21",
    "hypoacusia": "TR 21, #TR 17, TR 3, VF 2, VF 41, IT 19"
  },
  "Oko": {
    "conjunctivitis":
        "IG 3, TR 5, Pc 7, VU 2, VU 1, PE 1, PE 2, #IC 4, #TR 23, #G 1",
    "keratitis":
        "#G 2, G 3, #VU 1, TR 23, VF 1, #VF 7, #VF 14, #VF 20, R 12, R 13, R 15, #VU 18, IT 6, #TR 5, #G 36",
    "glaucoma": "#G 2, #VU 1, #VF 7, #VF 14, #VF 20, #VU 18, #TR 5, IT 6, G 36",
    "cataracta": "#G 2, #VU 1, VF 7, VF 14, #VF 20, #VU 18, IT 6, TR 5, #G 36",
    "myopia": "#G 1, VU 1, IC 4, VF 20, VF 37, PE 7, H 3, H 8, R 1, R 7",
    "neuritis retrobulbaris": "VU 1, VU 18, VU 23, LP 6, PE 4, PE 7"
  },
  "Grlo": {
    "laryngitis acuta": "VF 21, Pc 5, VU 13, #G 9, #RM 22, 17, IC 4, P 11",
    "laryngitis chronica": "P 7, #P 11, IC 12, G 36, RM 15"
  },
  "Dušnik i pluća": {
    "tracheitis":
        "IC 18, IC 4, VU 10, VU 13, VU 14, VU 17, VF 11, VF 12, VF 20, VF 44, RM 22, P 7",
    "bronchitis acuta": "P 7, P 5, #VU 13, #VU 12, Pc 3, #RM 17, RM 12",
    "bronchitis chronica":
        "#P 7, P 5, VU 13, VU 12, VU 11, RM 22, RM 12, VU 38, G 13",
    "asthma": "#P 5, #PU 7, IG 3, #VU 13, VU 12, VU 10, #IC 4, IC 11",
    "dyspnea": "#RM 17, RM 16, RM 15, C 9, H 13, PE 17",
    "pleuritis":
        "G 11, G 12, G 13, G 14, #G 15, G 16, G 18, # P 1, LP 18, LP 19, LP 20, LP 21, R 22, R 23, R 24, R 25, H 13, H 14, VU 11, VU 12, VU 13, VU 14, VU 44",
    "bronchopneumonia":
        "#P 1, G 13, G 14, G 15, G 16, #VU 12, #VU 13, VU 14, VU 15, VU 18",
    "refrigeratio (prehlada)":
        "#DM 14, #VF 20, #IC 4, IC 20, PE 2, IC 11, P 7, P 11, VU 12"
  },
  "Srce i žilni sustav": {
    "angina pectoris":
        "#Pc 7, #Pc 6, Pc 5, VU 14, VU 15, TR 7, LP 7, G 36, C 9, RM 17, RM 14",
    "precordialgia": "#Pc 7, C 8, #C 9, G 36, VU 16",
    "angor": "RM 2, RM 4, RM 14",
    "palpitacia": "#C 5, Pc 4, #Pc 6, G 36, LP 4, R 3",
    "tachycardia": "#C 7, C 3, Pc 7, Pc 6, Pc 5, VU 15, RM 14, RM 15",
    "bradycardia": "#VU 10, Pc 2, #C 9, VF 20",
    "tachyarrythmia": "VF 20, #Pc 7, #PC 6, #VU 15",
    "bradyarrythmia": "VU 10, #C 9, PC 6, VF 20, TR 3",
    "hypertensio arterialis":
        "#Pc 3, Pc 6, #G 36, #LP 6, R 2, C 7, RM 6, P 9, IT 17",
    "hypotensio arterialis": "P 9, #G 36, #R 7, C 9, VU 14, #VU 23",
    "hemorrhoidi":
        "#VU 40, VU 57, VU 31, VU 32, VU 33, VF 20, VF 10, LP 1, #DM 4, #DM 1",
    "varices": "VU 60, VU 31, LP 5, G 32, C 3, VF 34, H 8",
    "varices ulcerosa": "H 13, H 14, IT 19, VF 44, VF 20, VF 14, VF 12, VF 4",
    "oštećenja arterija": "#P 9, #Pc 9",
    "arteriitis extr. inf.":
        "Pc 7, #Pc 9, LP 6, VF 34, VF 35, H 14, H 13, H 3, P 9, G 32",
    "acrocyanosis":
        "#C 3, G 32, #IT 12, TR 21, TR 19, VF 35, VU 14, VU 30, LP 5, #LP 6, LP 10, #VF 39",
    "acroparaesthesiae": "#IT 10, #C 3"
  },
  "Jednjak i želudac": {
    "spasmus oesophagi": "#RM 22, VF 20, VF 21, #RM 14",
    "stenosis": "#LP 17, #VU 17, VU 18, VU 19, VU 20, #Pc 6, #G 36",
    "gastralgia": "#VU 18, #H 3, #VU 21, #LP 3, G 45, VF 41, #RM 21, #RM 22",
    "gastritis acuta":
        "#VU 21, #RM 10, #RM 12, RM 13, RM 14, G 21, #Pc 6, #G 36, LP 9",
    "gastritis chronica": "#G 21, RM 10, RM 12, RM 13, #G 36",
    "ulcus duodeni et ventriculi": "C 5, C 7, TR 10, #LP 4",
    "dyspepsia": "#LP 4, VU 21, #G 45, #LP 9, #G 36",
    "aerogastria": "#VU 21, VU 20, RM 13, H 3, H 2, LP 3, LP 4, G 36, G 41",
    "anorexia": "G 42, VU 20, LP 4, C 7, #G 36",
    "singultus":
        "#Pc 6, VU 17, #G 36, H 13, VF 20, #RM 22, RM 17, RM 16, RM 12",
    "indigestia": "#LP 4, VU 21, #G 36, G 45, IC 10, #RM 12",
    "vomitus digestivus":
        "#LP 4, #VU 21, #G 25, G 21, G 42, RM 17, RM 13, RM 6, P 5, #Pc 6, H 13"
  },
  "Crijeva": {
    "enterocolitis acuta (proljev)":
        "#G 25, LP 14, LP 15, #R 14, R 15, H 4, H 5, H 6, H 9, H 10, #VU 25, #VU 27, #G 36, G 38, VF 34",
    "enterocolitis chronica spastica":
        "G 35, G 37, LP 6, R 6, TR 6, #LP 9, #LP 18",
    "enterocolitis ulcerosa": "#G 36, #Pc 6, #G 21, #LP 6, #LP 4, #RM 12, #H 3",
    "colica intestinalis":
        "#LP 9, #H 3, VF 41, R 6, Pc 6, G 25, R 14, #RM 6, VU 25, VU 27",
    "appendicitis acuta": "#PE 33, G 36, LP 14, G 25",
    "obstipatio atonica":
        "#IC 4, #IC 10, #IC 11, G 36, LP 9, R 8, #VF 34, #VF 44, H 8",
    "obstipatio spastica":
        "#VF 34, #IC 3, #IC 2, H 3, H 2, #Pc 6, TR 5, R 6, #G 25"
  },
  "Jetra i žućni mjehur": {
    "hepatitis": "#VU 18, H 14, VU 19, VF 24, VU 20, H 13, VU 21, RM 12",
    "icterus": "DM 9, PE 35",
    "dysfunctio hepatobiliaris":
        "#LP 4, #VU 18, #VU 19, H 14, IC 11, G 36, #H 3, #H 8, RM 12, LP 4, LP 6",
    "colica hepatica":
        "#LP 4, #VU 19, VU 18, #VF 34, #VF 38, RM 12, RM 13, RM 14, RM 15",
    "cholecystitis":
        "#VF 41, #VF 38, VF 34, VF 14, #VU 19, H 3, RM 14, RM 15, G 45, VF 40, VF 43",
    "cholelithiasis": "#VU 19, #VF 38, VF 33, G 31"
  },
  "Gusterača": {
    "dysfunctio pancreatis": "#LP 4, #VU 20, RM 12, G 36, LP 2, LP 3, LP 5"
  },
  "Bubrezi mokraćovodi": {
    "pyelonephritis": "#VF 25, #RM 5, #RM 6, #VU 23, #LP 6, #LP 9, R 3"
  },
  "Mokraćni mjehur": {
    "nephrocolica":
        "#R 3, #R 2, VU 60, VU 39, VU 53, #VU 23, G 36, #RM 5, RM 4, RM 3",
    "nephrolithiasis": "VF 25, #R 3, #R 6, RM 5, RM 6, VU 39, VU 53",
    "cystitis":
        "#RM 3, RM 4, RM 5, RM 6, #VU 28, R 6, #R 2, PC 6, #LP 9, #VU 32, #H 8",
    "uretritis": "R 6, R 3, R 2, VU 23, LP 9, RM 3, RM 4",
    "retentio urinae": "#RM 3, #RM 4, #LP 6, VU 23, #VU 28, VF 34, LP 9, VU 32",
    "incontinentia urinae": "#RM 4, LP 6, VU 23, #VU 28, G 36",
    "polakisuria": "P 5, VU 22, H 1, RM 4",
    "anuria": "#R 3, R 18, VU 30, VU 66",
    "enuresis":
        "#C 7, RM 3, #RM 4, RM 6, #LP 6, G 36, #VU 23, #VU 28, VU 32, VU 33, DM 4"
  },
  "Muški spolni organi": {
    "prostatitis": "#R 6, #LP 10, #VU 40, #LP 6, RM 4, #RM 3",
    "orchitis":
        "#G 29, G 30, R 15, VF 28, VF 29, #VU 31, VU 32, VU 33, #VU 62, #LP 6, LP 19, #RM 3, #RM 4, #RM 6",
    "impotentia":
        "#G 29, #G 30, #G 36, #LP 6, LP 10, #DM 4, DM 14, H 8, #VU 23, RM 4, #RM 6",
    "azoospermia":
        "G 29, #VU 23, #VU 24, VU 31, VU 32, VU 33, #RM 3, RM 4, RM 5, #RM 6, RM 7, RM R, RM 2, #LP 6"
  },
  "Ženski spolni organi": {
    "dysmenorrhea":
        "G 28, G 29, #VU 23, #VU 26, #LP 6, RM 2, #RM 3, RM 4, RM 5, RM 6, VU 60, #VU 62, VF 41",
    "hypermenorrhea": "#LP 6, #LP 10, #LP 15, VF 41, RM 3, RM 4, RM 5",
    "oligomenorrhea": "#LP 6, #IC 4, #G 29, #G 30, #G 36",
    "amenorrhea metrorrhagia":
        "LP 10, TR 3, H 13, H 14, R 12, R 13, RM 3, RM 4, RM 6, PC 9, #RM 2, #RM 3, RM 4, RM 5, #RM 6, RM 7, #VF 41, #LP 6, LP 10",
    "leucorrhea": "G 25, #RM 6, #LP 6, VF 26, VF 34, #G 36, #VU 32",
    "vaginitis":
        "G 25, R 12, #RM 4, #G 29, VU 31, VU 32, VU 33, VU 34, VU 60, #LP 6, #VF 41, H 8",
    "pruritus":
        "#G 30, RM 3, RM 4, RM 6, VU 31, VU 32, VU 33, VU 34, #VU 35, DM 1, C 8, #LP 6, #VU 60, R 2, 10, #VF 41, H 8, H 11",
    "metritis":
        "R 15, VF 26, VF 27, VF 28, VF 29, RM 3, RM 4, RM 6, VU 23, VU 28, VU 31, VU 32, VU 33, VU 34, #LP 6, LP 10, R 1",
    "adnexitis":
        "G 28, G 29, R 11, 15, RM 3, 4, 6, VU 23, 26, 28, VU 31, 32, 33, 34, LP 6, 7, 9, VF 41, H 1",
    "sterilitas":
        "#G 28, #G 29, LP 16, R 15, RM 3, RM 4, RM 5, RM 6, RM 7, VU 23, VU 26, VU 31, VU 32, VU 33, VU 34, VF 41, #IC 4, #Pc 6, #LP 6, #H 3",
    "hypogalactia": "#IT 1, #IT 11, #IC 4, #RM 17",
    "agalactia": "G 36, #LP 6, #G 18, C 1",
    "mastopathia": "H 3, VF 41, G 18, IT 1, G 36, RM 17",
    "vomitus gravidarum": "#Pc 6, #G 36, G 30",
    "točke za ubrzavanje porođaja": "IC 4, G 30, G 36, VU 60, LP 6",
    "točke protiv jakih boli u porođaju": "LP 6, VU 60, IC 4, H 3, RM 4",
    "atonia uteri": "G 30, #VF 34, VF 41, #RM 3, RM 4, #LP 6, TR 6, TR 5"
  },
  "Živčani sustav": {
    "apoplexia": "DM 26, PE 30, H 3, G 40, DM 20, R 1",
    "congestio cerebralis": "VU 62, PC 6, PC 7, P 7, VF 39, G 36, IC 4",
    "hemiparesis":
        "#IC 15, #IC 11, #IC 4, PE 17, TR 5, VF 30, VF 34, VF 39, G 41",
    "dysphasia": "RM 23, DM 15, C 5",
    "paraplegia":
        "#PE 21, VU 23, VU 54, VU 50, #VF 34, VF 39, #G 36, G 41, #LP 6, H 3",
    "poliomyelitis (posljedice)":
        "#IC 15, IC 11, #TR 5, #IC 10, #G 36, G 41, VF 20, VF 30, #VF 34, #VF 39, VU 32, R 3",
    "affectio nerv. perif.":
        "#G 36, #VU 60, #VF 34, IC 4, DM 19, DM 17, VU 10, VF 20, VF 21, #VF 38, H 5, R 7",
    "paresthesiae": "",
    "ext. supp.": "PE 28. IT 3",
    "ext. inf.": "PE 36, R 2",
    "contracturae musculorum":
        "#IT 3, IT 7, TR 5, TR 10, #IC 15, IC 10, P 7, #VF 34, #VU 60, VU 62, VU 57, G 36, RP 9",
    "grčevi mišića":
        "PC 7, #VU 62, VU 60, #VF 34, VF 40, VF 43, #VU 57, #VU 65, R 2, #R 6",
    "amyotrophia": "",
    "hypotonia musc.": "",
    "extr. supp.":
        "#IC 15, IC 11, IC 10, IC 4, IT 3, IT 4, IT 7, IT 10, IT 14, TR 3, TR 5, TR 10, TR 13, TR 14, VF 21, P 7, H 3, LP 4, R 6, Pc 6",
    "extr. inf.": "VF 30, #VF 34, G 36, H 3, VU 58, G 42, VU 60, VU 62, PC 6",
    "paralysis flaccida": "",
    "extrem. supp.": "#IC 15, IC 10, IC 4, TR 15, #TR 5, #IT 3, H 3, R 3",
    "extrem. inf.":
        "#VF 34, #G 36, VF 30, VF 38, VF 39, VU 60, VU 62, G 40, G 41, H 3, R 3",
    "tremor":
        "#VF 41, #LP 4, #VF 34, IT 3, IC 11, VU 58, VU 62, TR 5, Pc 3, G 36",
    "tremor senilis":
        "C 3, Pc 3, TR 3, DM 4, DM 15, DM 19, DM 13, VU 14, IT 3, R 3, R 6, H 7, H 3",
    "affectio med. spin.": "#IT 3, DM 20, DM 16, DM 14, R 7, G 33"
  },
  "Pedijatrija": {
    "convulsio infantilis": "#DM 20, #RM 4, #G 36, VU 18, VU 20, RM 6",
    "u vrijeme konvulzivne krize": "DM 26, PE 30, P 11",
    "tetania": "IC 4, H 3",
    "hypertermia infantilis": "DM 14, IC 11",
    "oedema cerebri": "DM 15, R 7",
    "meningismus": "VF 20, DM 12",
    "pertusis": "PE 17, G 40, VU 13, P 5",
    "parotitis epidemica": "TR 17, G 6, IC 4, TR 5",
    "poliomyelitis acuta": "#DM 14, #TR 5, #IC 11",
    "bol u grlu": "IT 17, P 11",
    "glavobolja i povraćanje": "PE 2, Pc 6",
    "paraliza ošita": "VU 17, H 14, RM 15",
    "paraliza abdominalnih mišića": "VU 20, VU 21, G 21, G 25",
    "paraliza gornjih udova": "PE 17, IC 11, IC 4, TR 5, IT 6",
    "paraliza donjih udova": "PE 21, (od L 2 - S 2) VF 30, VF 34",
    "hiperekstenzija koljena": "VU 40, H 8",
    "pes valgus": "R 3, LP 6",
    "pes varus": "VF 39, VU 60",
    "epilepsia":
        "#DM 26, IT 3, VU 62, DM 20, RM 12, G 40, VU 15, VU 18, LP 6, #DM 14, #Pc 6, #IC 4, #LP 4",
    "epilepsia petit mal": "C 7, VF 9, VF 20"
  },
  "Koža": {
    "za sve kutane afekcije": "#IC 4, #IC 11, #VU 40, #R 24 (lijevo)",
    "eccema":
        "P 7, R 6, R 24, IC 4, IC 11, VU 13, VU 40, IC 3, TR 6, PC 7, G 36, VF 38, H 2, LP 6",
    "purigo":
        "TR 5, VF 38, VF 39, VF 41, VF 43, VU 13, VU 40, R 2, H 2, H 5, IC 11, IC 4, G 13, RM 2",
    "pruritus auriculae": "VF 41",
    "pruritus vulvae":
        "C 8, C 9, H 2, H 8, Pc 5, Pc 6, R 2, R 6, R 7, R 10, RM 7",
    "pruritus analis": "C 9, H 2",
    "acne":
        "TR 5, #VF 41, VU 40, VU 61, VU 65, #H 8, IC 1, IC 4, IC 6, LP 41, RM 12",
    "furunculosis":
        "VU 12, VU 15, VU 17, VU 21, IT 17, Pc 3, Pc 7, VF 15, VF 16, IC 4, IC 11, IC 20, LP 2",
    "herpes simplex": "R 2, G 15",
    "herpes zoster ac.":
        "LP 1, LP 2, LP 6, P 9, P 7, G 44, VF 43, VU 66, #R 7, #H 5, #C 5 na suprotnoj strani tijela VU 67, R 1",
    "neuralgia postherpetica": "R 1, R 2, RM 12, TR 5, G 9, G 15",
    "herpes chronica": "IT 17, VU 10, VU 1, VU 66, IC 4",
    "eruptio faciei": "IC 1, IC 4, IC 11, P 5",
    "impetigo": "H 3, G 41, G 42",
    "urticaria":
        "IT 5, VU 13, VU 40, VF 40, VF 43, H 3, H 5, H 8, IC 1, IC 4, IC 11, G 11, G 13, G 15, G 36, LP 6",
    "lichen":
        "G 36, G 40, G 42, VU 13, VU 40, VU 64, LP 6, H 5, H 8, IC 4, IT 7, Pc 7, RM 11, RM 19",
    "alopecia": "IT 7, VU 40 i mnogo lok. uboda ('čekić')",
    "m. Dupuytren": "IC 4, 10, 15, Pc 3, 5, 8, 9, P 5"
  },
  "Glava": {
    "glavobolja":
        "TR 5, VU 62, P 7,G 1, G 2, G 3, G 4, G 5, G 6, G 9, VF 1, #VF 4, VF 5, VF 6, VF 7, VF 8, VF 10, VF 12, VF 13, VF 14, VF 17, VF 19, #VF 20, DM 15, #DM 20, TR 18, TR 21, TR 22, #PE 1, #PE 2,RM 4, RM 12, DM 4, DM 14, #P 7, P 10, #IC 4, IC 5, IC 10, IC 14, C 3, C 5, C 6, #Pc 6, Pc 7, TR 1, TR 2, TR 3, #TR 5, TR 12. IT 1, #IT 3, IT 4, IT 7, IT 9, G 32, G 36, #G 40, G 41, G 44, VU 60, #VU 62, VU 65, VU 66, VU 67, LP 6",
    "neuralgija trigeminusa (frontalna grana)":
        "IT 3,G 8, G 7, VU 4, DM 22, VF 9, VF 10, VF 11, VF 14, #VF 20, TR 17, TR 21, #PE 2, PE 3,TR 1, VF 34, VF 44, G 40, G 45, VU 67",
    "neuralgija trigeminusa (maksilarna grana)":
        "P 7,IC 20, G 2, G 3, G 5, G 6, IT 18, VF 1, DM 26, TR 17,IC 1, #IC 4, IT 1, VF 44, G 44",
    "neuralgija trigeminusa (mandibularna grana)":
        "P 7,G 5, G 6, G 7, VF 2, TR 17, RM 24,G 44, IT 1, TR 1, VF 44",
    "bol sljepoočnice":
        "G 8, TR 21, VF 1, VF 4, VF 5, VF 6, VF 7,TR 1, G 45, VF 44",
    "okcipitalna neuralgija":
        "IT 3,VU 9, #VU 10, TR 16, TR 18, DM 15, DM 18, VF 16, VF 17, VF 18, VF 19 #VF 20,IT 8, IT 13, IC 10, TR 1, #VU 40, VU 67, VF 44, DM 14, DM 19",
    "nos i sinusitis":
        "P 7, TR 5,IC 19, #IC 20, #G 2, G 3, VU 2, VU 3, VU 4, VU 6, PE 1, #DM 22,G 45, 14 VF 20 IC 2, 3 IC 4, 11 Pc 8 VU 64, 67",
    "okularna neuralgija":
        "IT 3,G 1, #G 2, #VU 1, VF 7, VF 10, TR 21,#VF 20, #VU 18, IC 4, IC 11, #IT 6, TR 5, #G 36, VF 44",
    "otalgija":
        "TR 5,G 6, G 7, IT 17, It 19, TR 22, #TR 23, VF 2, VF 17, #VF 20,VF 21, IT 14, It 15, #VU 23, IC 4, IC 11, TR 7, G 36",
    "odontalgija":
        "TR 5,VF 2, IT 18,#IC 1, #IC 4, IC 2, IC 3, IC 5, IC 6, IC 11, IT 3, IT 8, TR 3, TR 23, #P 11, P 7, VF 15, VF 16, VF 44, G 44",
    "cervikalgija":
        "IT 3, TR 5,#VU 10, VU 11, DM 14, DM 15, DM 20, IT 16, #VF 20, IC 16,IT 6, IT 7, #DM 26, #PE 26, VU 67"
  },
  "Kralježnica i prsni koš": {
    "dorzalgija":
        "IT 3,VU 11, VU 12, VU 13, VU 14, VU 15, VU 16, VU 17, VU 18, VU 19, VU 20, DM 6, DM 7, DM 8, DM 9, DM 10, DM 11, DM 12, DM 13, DM 14,#VU 40, TR 3, DM 26",
    "lumbalgija":
        "VF 41, VU 62, LP 4, IT 3,VU 23, VU 25, VU 27, VU 54, #PE 21,#VU 40, VU 65, #VF 30, DM 26, IT 6, G 36",
    "sakralgija":
        "VU 28, VU 29, VU 30, VU 31, VU 32, VU 33, VU 34 ,DM 2,#VU 40, VU 60, VF 40",
    "kokcigodinija": "VU 35, DM 1, DM 2,VF 34, #VU 40",
    "sakroilijakalna bol": "VU 26, VU 27,VU 40, VF 41",
    "skapularna bol":
        "IT 3,IT 9, IT 10, IT 11, IT 12, IT 13, TR 14, #IC 15, IC 16, #IC 11,IT 1, IT 8, TR 10",
    "pektoralna neuralgija":
        "LP 4,P 1, P 2, G 13, G 14, G 15, G 16, LP 18, LP 19, LP 20, Pc 1, RM 18,P 7, #P 9, C 8, C 5, Pc 6, Pc 5, VF 34, G 36",
    "interkostalna neuralgija":
        "VU 11, R 27, VU 12, R 26, VU 13, R 25, VU 14, R 24, VU 15, R 23, VU 17, H 14,VF 34, #P 11, R 7, LP 6, H 2, H 5, TR 5, TR 6, #VU 40",
    "bolovi trbušnih mišića – trbušne stijenke":
        "LP 4,G 18, G 19, G 20, G 21, G 22, G 23, G 24, G 25, G 26, G 27, G 28, G 29, G 30, LP 13, LP 14, LP 15, LP 16, R 12, R 13, R 14, R 15, R 16, R 17, R 18, R 19, R 20, R 21, RM 2, RM 3, RM 4, RM 5, RM 7, RM 8, RM 9, RM 10, RM 11, RM 12, RM 13, RM 14, RM 15,G 36, LP 6, LP 7, LP 8, LP 9, LP 10, H 8",
    "gornji udovi cervikobrahijalna neuralgija":
        "IT 3, G 38,VU 10, VU 11, #IC 15, IC 16, #IC 11, IC 10, IT 12, IT 13, IT 14, IT 15, #TR 14,#IC 4, #TR 5",
    "skapulohumeralna neuralgija":
        "VF 41, G 38,#IC 15, #IC 16, IT 12, #TR 14,IC 1, #IC 11, IT 8, G 38, TR 10, P 5, VU 62, R 4",
    "aksilarna neuralgija": "IT 9, TR 12,C 1, #IC 15, IC 4, LP 4",
    "radijalna neuralgija":
        "TR 5,IC 4, IC 5, IC 7, IC 8, IC 9, #IC 10, #IC 11, IT 11, TR 5, TR 6, TR 9, TR 10, #P 7, P 9,IC 14, IC 15, TR 11, TR 12, TR 13",
    "neuralgija medijanusa":
        "TR 5,P 6, C 3, MC 4, MC 5, MC 6, MC 7,P 3, P 4, Pc 2",
    "neuralgija ulnarisa": "TR 5,C 3, C 4, C 5, C 6, C 7, #IT 8, #IT 3,Pc 2",
    "bol lakta": "TR 5,#PC 5, #PC 3, #IC 11, IC 10, C 3, IT 8,C 9, VF 34, G 38",
    "bol radiokarpalnog zgloba":
        "PC 7,P 9, IC 5, C 7, Pc 7, TR 4, IT 4,IC 11, G 44",
    "bol prstiju i šake": "TR 5,TR 3, P 10, Pc 8, IC 4"
  },
  "Donji udovi": {
    "neuralgična bol unutarnje strane natkoljenice (n. Obturatorius)":
        "LP 9, LP 10, LP 11, LP 12, R 10, H 9, H 10, H 11,#H 8, VU 31, VU 32, VU 33, VU 34, DM 4, LP 3",
    "neuralgična bol vanjske strane natkoljenice (n. cutaneus fem. lat.)":
        "VF 41,G 31, G 32, G 33, G 34, #VF 31, #VF 30,VU 60",
    "neuralgična bol stražnje strane natkoljenice (n. Ishiadicus)":
        "VU 62,#VF 30, #VU 54, VU 36, VU 37, #VU 40,VU 23, VU 25, VU 27, VU 31, VU 32, VU 33, VU 34, #VU 60, VU 66, VU 67, DM 4, H 2",
    "neuralgična bol unutarnje strane potkoljenice":
        "LP 6, LP 7, LP 8, LP 9, H 5, H 6, H 7, #H 8, R 7, R 8, R 9, R 10,VU 23, VU 27, VU 31, VU 32, VU 33, VU 34, DM 4, H 2",
    "neuralgična bol prednje i vanjske strane potkoljenice":
        "VF 41,#G 36, G 37, G 38, G 39, G 40, G 41, G 42, G 43, #VF 34, VF 35, VF 36, VF 37, VF 38, VF 39, VF 40,VU 60, VU 62, VU 67, H 2, H 3",
    "bol koksofemoralnog zgloba":
        "VU 62 VF 41,VF 29, VF 30,VU 60, VU 62, #VU 40, VF 34, R 3",
    "bol koljena":
        "VF 41,G 34, G 35, G 36, #VU 40, LP 9, LP 10, R 10, VF 33, #VF 34, #H 8, PE 31, PE 32,G 45, VU 60",
    "bol skočnog zgloba":
        "VU 62 TR 5,VU 61, #VF 41, VF 43, R 4, R 5,G 43, H 3, H 2",
    "bol unutarnjeg maleola": "TR 5, R 3, R 6, H 4",
    "bol vanjskog maleola": "VF 41,VU 60, VU 62, VF 40",
    "boli metatarzalnih zglobova": "VF 41,G 41, LP 5, VU 63, R 2",
    "boli nožnih prstiju": "LP 4,H 2, LP 2, LP 3, R 1, G 44, VF 43, PE 36"
  }
};

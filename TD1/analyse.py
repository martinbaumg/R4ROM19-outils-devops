# import yaml as y

# with open('code.yaml','r') as yaml_file:
#     ouryaml = y.safe_load(yaml_file)
#     print(ouryaml['access_token'])

# import yaml as y

# with open('person.yaml','r') as yaml_file:
#     ouryaml = y.safe_load(yaml_file)
#     print('nom-prénom:',ouryaml['nom'])
#     print('âge:',ouryaml['age'])
#     print('adresse:',ouryaml['adresse'])
#     print('langages de programmation:',ouryaml['langages'])


import yaml as y


with open('routeur.yaml','r') as yaml_file:
    ouryaml = y.safe_load(yaml_file)
    print('nom:',ouryaml['nom'])
    print('interfaces:',ouryaml['interfaces']['nom'])
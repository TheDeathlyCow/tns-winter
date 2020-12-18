import json


class JSONObject:
    def toJSON(self):
        return json.dumps(self, default=lambda o: o.__dict__, sort_keys=True, indent=4)


def generate_task(entity, num_to_kill, display, parent, reward_favour=30):
    task = {
        'display': display,
        'parent': parent,
        'rewards': {
            'function': 'tns-winter:favour/advancement_rewards/give_favour_' + str(reward_favour)
        }
    }
    # generate criteria
    task['requirements'] = []
    task['criteria'] = dict()
    for i in range(0, num_to_kill):
        key = 'killed' + entity.capitalize() + str(i + 1)
        task['criteria'][key] = dict()
        task['criteria'][key]['trigger'] = 'minecraft:tick'
        task['criteria'][key] = {
            'trigger': 'minecraft:tick',
            'conditions': {
                'player': {
                    'player': {
                        'stats': [
                            {
                                'type': 'minecraft:killed',
                                'stat': 'minecraft:' + entity.lower(),
                                'value': {
                                    'min': i + 1
                                }
                            }
                        ]
                    }
                }
            }
        }

        task['requirements'].append([key])
    return json.dumps(task)


def create_display(title, description, item, nbt=''):
    
    display = {
        'title': title,
        'description': description,
        'icon': {
            'item': item
        }
    }

    if len(nbt) > 0:
        display['icon']['nbt'] = nbt

    return display


if __name__ == '__main__':
    title = 'Strayed too Far'
    description = 'Kill 25 Strays (+200 Favour)'
    item = 'minecraft:tipped_arrow'
    nbt = '{Potion:"slowness"}'

    entity = 'stray'
    num_to_kill = 25 # this number will affect the length of the output file the most - by far
    parent = 'tns-winter:tasks/hunting/foxes'
    reward_favour = 100

    filename = entity + 's.json'

    display = create_display(title, description, item, nbt=nbt)

    task = generate_task(entity, num_to_kill, display, parent, reward_favour)

    outfile = open(filename, 'w')
    outfile.write(task)
    outfile.close()


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
    title = 'Test Title'
    description = 'Test Desc'
    item = 'minecraft:diamond'

    display = create_display(title, description, item)

    task = generate_task('sheep', 5, display, 'tns-winter:root')

    outfile = open('sheep_test.json', 'w')
    outfile.write(task)
    outfile.close()


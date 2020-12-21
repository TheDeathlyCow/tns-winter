import json

def generate_as_predicate(name, distance=3, height=2):

    campfire_check = {
        "condition": "minecraft:alternative",
        "terms": []
    }
    
    for dy in range (1, -height, -1):
        width = distance - abs(dy) # decrease as we go up the pyramid
        print(width)
        for dx in range(-1 * width, width + 1):
            for dz in range(-1 * width, width + 1):
                current_predicate = {
                    "condition": "minecraft:location_check",
                    "offsetX": dx,
                    "offsetY": dy,
                    "offsetZ": dz,
                    "predicate": {
                        "block": {
                            "block": "minecraft:" + name,
                            "state": {
                                "lit": True
                            }
                        }
                    }
                }
                campfire_check["terms"].append(current_predicate)

    outfile = open('near_' + name + '.json', 'w')
    outfile.write(json.dumps(campfire_check))
    outfile.close()


if __name__ == '__main__':
    block_name = input('Enter block name: ')
    distance = int(input('Enter distance: '))
    generate_as_predicate(block_name, distance)

    exit_token = input('Press ENTER to exit...')
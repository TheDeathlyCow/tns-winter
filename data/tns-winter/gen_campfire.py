
pred_template = """
{
    "condition": "minecraft:location_check",
    "offsetX": {offX},
    "offsetY": {offY},
    "offsetZ": {offZ},
    "predicate": {
        "block": {
            "block": "minecraft:soul_campfire",
            "state": {
                "lit": true
            }
        }
    }
},
"""

execute_if_template = """execute if score warmedPlayers winterBoolean matches 0 if predicate tns-winter:warmth_blocks/{0}/{0}_{1}_{2}_{3} run function tns-winter:hypothermia/warm_player\n"""

execute_ifblock_template = """execute if score warmedPlayers winterBoolean matches 0 if block ~{1} ~{2} ~{3} minecraft:{0}[lit=true] run function tns-winter:hypothermia/warm_player\n"""
execute_ifblock_template_marker = """execute if block ~{1} ~{2} ~{3} minecraft:{0}[lit=true] run function tns-winter:mark/campfire\n"""


def gen_pred_at_pos(name, offx, offy, offz):
    outfile = open(name + '/' + name + f'_{offx}_{offy}_{offz}' + '.json', 'w')
    towrite = pred_template.replace('{offX}', str(offx)).replace('{offY}', str(offy)).replace('{offZ}', str(offz))
    # print(towrite)
    outfile.write(towrite)
    outfile.close()


def gen_preds(name, distance=3):
    outfile = open(f'near_{name}.json', 'w')
    outfile.write('# called as: @a\n')
    outfile.write('# called at: @s\n')
    outfile.write('# called by: tns-winter:hypothermia/update_warmth\n')
    rows = []
    for x in range(-1 * distance, distance + 1):
        curr = []
        for z in range(-1 * distance, distance + 1):
            y = -1
            # gen_pred_at_pos(name, x, y, z)
            outfile.write(execute_ifblock_template.format(name, x, y, z))
            curr.append((x,y,z))
        rows.append(curr)
    outfile.write('scoreboard players set warmedPlayers winterBoolean 0\n')
    outfile.close()

    for row in rows:
        print(row)

def generate_as_predicate(name, distance=3, height=1):
    outfile = open(f'near_{name}.json', 'w')
    outfile.write("""{
    "condition": "minecraft:alternative",
    "terms": [
    """)
    
    for y in range(0, height):
        y = -y
        print('next layer')
        rows=[]
        width = distance + y
        for x in range(-1 * width, width + 1):
            curr = []
            for z in range(-1 * width, width + 1):
                this_pred = pred_template.replace('{offX}', str(x)).replace('{offY}', str(y)).replace('{offZ}', str(z))
                if (y == height - 1 and x == width and z == width):
                    
                    this_pred = this_pred[:-1]
                outfile.write(this_pred)
                curr.append((x,y,z))
            rows.append(curr)
        for row in rows:
            print(row)
    outfile.write(']}')
    outfile.close()

    

# gen_pred_at_pos('campfire', 0, 0, 0)
generate_as_predicate('soul_campfire', 2, 2)
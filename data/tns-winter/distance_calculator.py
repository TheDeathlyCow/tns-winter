import math

class Point:

    def __init__(self, x, z, h=0):
        self.x = x
        self.z = z
        self.h = h
    
    def __sub__(self, other):
        return math.sqrt( (self.x - other.x) ** 2 + (self.z - other.z) ** 2 + (self.h - other.h) ** 2 )
    

if __name__ == '__main__':

    A = Point(-934, -1398)
    B = Point(-913, -1386)

    print(f'distance: {A - B}')
    print(f'X diff: {A.x - B.x}')
    print(f'Z diff: {A.z - B.z}')
    print(f'Angle: ')
import math

GRAVITY = 9.81

def get_fall_time(distance, gravity = GRAVITY):
    return math.sqrt(2 * distance / gravity)

def set_gravity(gravity):
  global GRAVITY
  GRAVITY = gravity

def main():
    distance = int(input("Antallet meter objektet skal ramle: "))
    print("Det tar", get_fall_time(distance), "sekunder å ramle", distance, "meter")

main()

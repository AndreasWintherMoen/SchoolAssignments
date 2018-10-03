import math

height = float(input("Skriv inn en høyde: "))
a = 3.0 / math.sqrt(6) * height
area = math.sqrt(3) * a**2
volume = (math.sqrt(2) * a**3) / 12.0

print("Et tetraeder med høyde ", height, " har areal ", round(area, 2))
print("Et tetraeder med høyde ", height, " har volum ", round(volume, 2))

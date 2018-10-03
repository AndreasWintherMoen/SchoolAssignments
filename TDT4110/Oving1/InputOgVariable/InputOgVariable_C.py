import math

radius = 5.4
hoyde = 7.9
omkrets = math.tau * radius
arealSirkel = math.pi * radius**2
arealSylinder = omkrets * hoyde + 2 * arealSirkel

print("Har en sirkel med radius", radius, "som er grunnflate i en sylinder med høyde", hoyde)
print("Omkrets av sirkelen: ", omkrets)
print("Areal av sirkelen: ", arealSirkel)
print("Areal av sylinderen: ", arealSylinder)


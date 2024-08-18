#"""
#Given a frequency in units in c/a; c= speed of light; a= lattice spacing
#and a lattice spacing calculates the energy in electronVolts
#"""

c = 3e8  # Speed of Light in meters per second
h = 6.626e-34  # Planck's Constant in SI units
e = 1.6e-19   # charge of electron

lattice_constant = float(input("Enter lattice constant in microns: "))
frequency_c_over_a = float(input("Enter frequency in c/a: "))

f_hz = frequency_c_over_a * (c / (lattice_constant * 1e-6))
wavelenght_m = c / f_hz

scientific_notation = "{:e}".format(f_hz)

print("The frequency in hertz is: " + str(scientific_notation))
print("The wavelength in meters is: "+str(wavelenght_m))

energy_joules = h*f_hz
energy_electron_volts = energy_joules/e

print("The energy is: "+str(energy_joules)+"J")

print("The energy is: "+str(energy_electron_volts)+"eV")



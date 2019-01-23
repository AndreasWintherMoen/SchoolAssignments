package encapsulation;

public class Vehicle
{
	private char vehicleType;
	private char fuelType;
	private String registrationNumber;

	
	public Vehicle(char vehicleType, char fuelType, String registrationNumber) throws IllegalArgumentException
	{
		setVehicleType(vehicleType);
		setFuelType(fuelType);
		setRegistrationNumber(registrationNumber);
	}

	public char getVehicleType()
	{
//		if (vehicleType == '')
//		{
//			throw new IllegalArgumentException();
//		}
		
		return vehicleType;
	}

	public char getFuelType()
	{
		return fuelType;
	}

	public String getRegistrationNumber()
	{
		return registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) throws IllegalArgumentException
	{
		if (isValidRegistrationNumber(registrationNumber) == false)
		{
			throw new IllegalArgumentException();
		}
		
		this.registrationNumber = registrationNumber;
	}
	
	private boolean isValidRegistrationNumber(String registrationNumber)
	{
		// Check length with vehicle type
		if ((vehicleType == 'C' && registrationNumber.length() != 7) || 
				vehicleType == 'M' && registrationNumber.length() != 6)
		{
			return false;
		}
		
		
		// Check that first two signs are uppercase letters not including norwegian special characters, 
		// and the rest are numbers
		for(int i = 0; i < registrationNumber.length(); i++)
		{
			char c = registrationNumber.charAt(i);
			
			if (i < 2)
			{
				if (Character.isLetter(c) == false || Character.isLowerCase(c) || c == 'Æ' || c == 'Ø' || c == 'Å')
				{
					return false;
				}
			}
			else
			{
				if (Character.isDigit(c) == false)
				{
					return false;
				}
			}
		}
		
		
		// Check that special letter combinations EL, EK and HY are used correctly
		String letters = registrationNumber.substring(0, 2);
		if (fuelType == 'E')
		{
			// Electric car, so the two letters must be either EL or EK
			if (letters.contains("EL") == false && letters.contains("EK") == false)
			{
				return false;
			}
		}
		else if (fuelType == 'H')
		{
			// Hydrogen car, so the two letters must be HY
			if (letters.contains("HY") == false)
			{
				return false;
			}
		}
		else
		{
			// Diesel or gas car, so the two letters must be any two letters A-Z, exception the combinations 
			// EL, EK and HY
			if (letters.contains("EL") || letters.contains("EK") || letters.contains("HY"))
			{
				return false;
			}
 		}
		
		return true;
	}

	private void setVehicleType(char vehicleType) throws IllegalArgumentException
	{
		if (vehicleType != 'M' && vehicleType != 'C')
		{
			throw new IllegalArgumentException();
		}
		
		if (vehicleType == 'M' && fuelType == 'H')
		{
			throw new IllegalArgumentException();
		}
		
		this.vehicleType = vehicleType;
	}

	private void setFuelType(char fuelType) throws IllegalArgumentException
	{
		if (fuelType != 'H' && fuelType != 'E' && fuelType != 'D' && fuelType != 'G')
		{
			throw new IllegalArgumentException();
		}
		
		if (fuelType == 'H' && vehicleType == 'M')
		{
			throw new IllegalArgumentException();
		}
		
		this.fuelType = fuelType;
	}
}
package encapsulation;

import java.util.Arrays;
import java.util.Date;

public class Person
{
	private String name;
	private String email;
	private Date birthDate;
	private char gender;
	private String ssn;

	// This looks dumb. I'm sorry
	private static final String[] VALID_EMAIL_COUNTRY_CODES = {"ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", 
			"ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", 
			"bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", 
			"cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", 
			"ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", 
			"gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", 
			"hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", 
			"ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", 
			"ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", 
			"mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", 
			"om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", 
			"rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", 
			"ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", 
			"tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", 
			"ws", "ye", "yt", "za", "zm", "zw"}; 
	
	
	
	
	public Person()
	{

	}

	public void setName(String name) throws IllegalArgumentException
	{
		if (isValidName(name) == false)
		{
			throw new IllegalArgumentException();
		}

		this.name = name;
	}

	public String getName()
	{
		return name;
	}
	
	private String getFirstName()
	{
		return name.substring(0, name.indexOf(' '));
	}
	
	private String getLastName()
	{
		return name.substring(name.indexOf(' ') + 1);
	}

	public void setEmail(String email) throws IllegalArgumentException
	{
		
		if (isValidEmail(email) == false)
		{
			throw new IllegalArgumentException();
		}
		
		this.email = email;
	}

	public String getEmail()
	{
		return email;
	}

	public void setBirthday(Date birthday) throws IllegalArgumentException
	{
		if (isValidBirthday(birthday) == false)
		{
			throw new IllegalArgumentException();
		}
		
		this.birthDate = birthday;
	}

	public Date getBirthday()
	{
		return birthDate;
	}

	public void setGender(char gender) throws IllegalArgumentException
	{
		if (isValidGender(gender) == false)
		{
			throw new IllegalArgumentException();
		}
		
		this.gender = gender;
	}

	public char getGender()
	{
		return gender;
	}
	
	public void setSSN(String ssn) throws IllegalArgumentException
	{
		if (isValidSSN(ssn) == false) 
		{
			throw new IllegalArgumentException();
		}
		
		this.ssn = ssn;
	}
	
	public String getSSN()
	{
		return ssn;
	}
	
	private boolean isValidSSN(String ssn)
	{
		// Validate length
		if (ssn.length() != 11) return false;
		
		
		// Verify that every character is a number
		for(int i = 0; i < 11; i++)
		{
			char c = ssn.charAt(i);
			if (Character.isDigit(c) == false) return false;
		}

		// Validate date 
		int day = Integer.parseInt(ssn.substring(0, 2));
		int month = Integer.parseInt(ssn.substring(2, 4));
		int year = Integer.parseInt(ssn.substring(4, 6));
		if (day < 1 || day > 31 || month < 1 || month > 12 || year < 0 || year > 99) return false;
		
		
		// Validate lopenummer
		int N1 = Integer.parseInt(ssn.substring(6, 7));
		int N2 = Integer.parseInt(ssn.substring(7, 8));
		int N3 = Integer.parseInt(ssn.substring(8, 9));
		if ((N3 % 2 == 0 && gender != 'F') || (N3 % 2 != 0 && gender != 'M')) return false;
		
		// F 3	7	6	1	8	9	4	5	2
		// G 5	4	3	2	7	6	5	4	3	2
		// Validate control digits
		int K1 = Integer.parseInt(ssn.substring(9, 10));
		int K2 = Integer.parseInt(ssn.substring(10, 11));
		int sum1 = 11 - ((
				Math.floorDiv(day, 10) * 3 + 
				(day % 10) * 7 +
				Math.floorDiv(month, 10) * 6 + 
				(month % 10) * 1 + 
				Math.floorDiv(year, 10) * 8 +
				(year % 10) * 9 + 
				N1 * 4 + 
				N2 * 5 + 
				N3 * 2) 
				% 11);
		if (sum1 == 11) sum1 = 0;
		int sum2 = 11 - ((
				Math.floorDiv(day, 10) * 3 + 
				(day % 10) * 7 +
				Math.floorDiv(month, 10) * 6 + 
				(month % 10) * 1 + 
				Math.floorDiv(year, 10) * 8 +
				(year % 10) * 9 + 
				N1 * 4 + 
				N2 * 5 + 
				N3 * 2 +
				sum1 * 2)
				% 11);
		if (sum2 == 11) sum2 = 0;
		if (K1 != sum1 || K2 != sum2) return false;
		
		return true;
	}

	private boolean isValidName(String name)
	{
		if (name.length() < 5) return false;

		boolean foundSpace = false;

		for (int i = 0; i < name.length(); i++)
		{
			// Only permit one space (name may only consist of 2 names). If character is not a space, return false if
			// it's neither a letter nor a dash

			char c = name.charAt(i);

			if (c == ' ')
			{
				if (foundSpace) return false;

				foundSpace = true;
			}
			else if ((Character.isLetter(c) || c == '-') == false) return false;
		}

		if (foundSpace == false) return false;

		return true;
	}
	
	private boolean isValidGender(char gender)
	{
		return (gender == 'M' || gender == 'F' || gender == '\0');
	}
	
	private boolean isValidBirthday(Date birthday)
	{
		return (birthday.compareTo(new Date()) < 0);	
	}
	
	
	private boolean isValidEmail(String email)
	{
		int emailLength = email.length();
		
		// Since all country codes contain 2 letters, the 3rd last character should be a .
		if (email.substring(emailLength - 3, emailLength - 2).contains(".") == false)
		{
			System.out.println("email does not contain . before country code in email " + email);
			return false;
		}
		
		
		// Must contain @ character at some point in the email
		if (email.contains("@") == false)
		{
			System.out.println("email does not contain @ in email " + email);
			return false;
		}
		
		// Must contain first and last name
		if (email.contains(getFirstName().toLowerCase()) == false)
		{
			System.out.println("email does not contain first name: " + getFirstName() + " in email " + email);
			return false;
		}
		if (email.contains(getLastName().toLowerCase()) == false)
		{
			System.out.println("email does not contain last name: " + getLastName() + " in email " + email);
			return false;
		}
		
		
		// Must be a valid country code (the last 2 characters)
		String countryCode = email.substring(emailLength - 2);
		countryCode = countryCode.toLowerCase();
		// How am I supposed to do this?
		return (Arrays.stream(VALID_EMAIL_COUNTRY_CODES).anyMatch(countryCode::equals));
	}
	
	
	public static void main(String[] args)
	{
		Person p = new Person();
		
		p.setName("andreas moen");
		//p.setEmail("john.doe@ntnu.aa");
		p.setEmail("andreas.moen@ntnu.no");
		
		
		
	}
	
	
	
	
}
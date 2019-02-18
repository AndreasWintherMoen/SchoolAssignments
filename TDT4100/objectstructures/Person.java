package objectstructures;

import java.util.ArrayList;
import java.util.List;

public class Person
{
	private final String name;
	private final char gender;
	private Person mother, father;
	private List<Person> children;
	
	
	public Person(String name, char gender)
	{
		if (gender != 'F' && gender != 'M')
		{
			throw new IllegalArgumentException("Gender must be either uppercase 'F' or 'M'");
		}
		
		this.name = name;
		this.gender = gender;
		children = new ArrayList<Person>();
	}
	
	
	public String getName()
	{
		return name;
	}
	
	public char getGender()
	{
		return gender;
	}
	
	public Person getMother()
	{
		return mother;
	}
	
	public Person getFather()
	{
		return father;
	}
	
	public int getChildCount()
	{
		return children.size();
	}
	
	public Person getChild(int i)
	{
		return children.get(i);
	}
	
	public void addChild(Person child)
	{
		if (children.contains(child))
		{
			// Already child
			return;
		}
		
		children.add(child);
		if (isMale())
		{
			child.setFather(this);
		}
		else
		{
			child.setMother(this);
		}
	}
	
	public void removeChild(Person child)
	{
		if (children.contains(child) == false)
		{
			throw new IllegalArgumentException("Child not found in " + toString() + "'s children");
		}
		
		if (isMale())
		{
			child.setFather(null);
		}
		else
		{
			child.setMother(null);
		}
		
		children.remove(child);
	}
	
	public void setMother(Person mother)
	{
		if (this.mother == mother)
		{
			// Already mother
			return;
		}
		
		if (mother == this)
		{
			throw new IllegalArgumentException("Person cannot be its own mother");
		}
		
		if (mother.getGender() != 'F')
		{
			throw new IllegalArgumentException("Mother must be female");
		}
		
		if (this.mother != null)
		{
			// Temporarily cache mother to avoid infinite loop
			Person tmp = this.mother;
			this.mother = null;
			tmp.removeChild(this);
		}
		
		this.mother = mother;
		mother.addChild(this);
	}
	
	public void setFather(Person father)
	{
		if (this.father == father)
		{
			// Already father
			return;
		}
		
		if (father == this)
		{
			throw new IllegalArgumentException("Person cannot be its own father");
		}
		
		if (father.getGender() != 'M')
		{
			throw new IllegalArgumentException("Father must be male");
		}
		
		if (this.father != null)
		{
			// Temporarily cache father to avoid infinite loop
			Person tmp = this.father;
			this.father = null;
			tmp.removeChild(this);
		}
		
		this.father = father;
		father.addChild(this);
	}
	
	@Override
	public String toString()
	{
		return "Name: " + name;
	}
	
	private boolean isMale()
	{
		return gender == 'M';
	}
	
	
	public static void main(String[] args)
	{
		Person andreas = new Person("Andreas", 'M');
		Person johannes = new Person("Johannes", 'M');
		Person bjorn = new Person("Bjorn", 'M');
		Person sissel = new Person("Sissel", 'F');
		Person someDude = new Person("Heyo", 'M');
		
		andreas.setFather(bjorn);
		andreas.setMother(sissel);
		
		bjorn.addChild(johannes);
		sissel.addChild(johannes);
		
		System.out.println(bjorn.getChildCount());
		System.out.println(johannes.getFather());
		System.out.println(andreas.getFather());
		
		andreas.setFather(someDude);
		System.out.println(andreas.getFather());
		System.out.println(bjorn.getChildCount());
	}
}
package app;

public class Upgrade
{
	private String name;
	private int numberOfUpgrades;
	private int maxNumberOfUpgrades;
	private double cost;
	private double costFactor;
	private double totalValue;
	private double valueIncreasePerUpgrade;
	private boolean isClickUpgrade;
	
	
	/**
	 * Creates an Upgrade object with unlimited number of upgrades
	 * @param name Display name of upgrade
	 * @param initialCost Cost of first upgrade
	 * @param costFactor How much the cost increases each upgrade (multiplicatively)
	 */
	public Upgrade(String name, double initialCost, double costFactor, double increasePerUpgrade, boolean isClick)
	{
		this.name = name;
		this.cost = initialCost;
		this.costFactor = costFactor;
		this.numberOfUpgrades = 0;
		this.maxNumberOfUpgrades = Integer.MAX_VALUE;
		this.totalValue = 0;
		this.valueIncreasePerUpgrade = increasePerUpgrade;
		this.isClickUpgrade = isClick;
	}
	
	/**
	 * Creates an Upgrade object with a limited number of upgrades
	 * @param name Display name of upgrade
	 * @param initialCost Cost of first upgrade
	 * @param costFactor How much the cost increases each upgrade (multiplicatively)
	 */
	public Upgrade(String name, double initialCost, double costFactor, int maxAmount, double increasePerUpgrade, boolean isClick)
	{
		this.name = name;
		this.cost = initialCost;
		this.costFactor = costFactor;
		this.maxNumberOfUpgrades = maxAmount;
		this.numberOfUpgrades = 0;
		this.totalValue = 0;
		this.valueIncreasePerUpgrade = increasePerUpgrade;
		this.isClickUpgrade = isClick;
	}
	
	/**
	 * [USE WHEN LOADING FROM FILE]
	 * Creates an Upgrade object with a limited number of upgrades and a specific current amount
	 * @param name Display name of upgrade
	 * @param initialCost Cost of first upgrade
	 * @param costFactor How much the cost increases each upgrade (multiplicatively)
	 */
	public Upgrade(String name, double currentCost, double costFactor, int maxAmount, int amount, double totalValue, double increasePerUpgrade, boolean isClick)
	{
		this.name = name;
		this.cost = currentCost;
		this.costFactor = costFactor;
		this.maxNumberOfUpgrades = maxAmount;
		this.numberOfUpgrades = amount;
		this.totalValue = totalValue;
		this.valueIncreasePerUpgrade = increasePerUpgrade;
		this.isClickUpgrade = isClick;
	}
	
	 
	public double upgrade(double playerGold)
	{
		if (numberOfUpgrades >= maxNumberOfUpgrades)
		{
			// TODO: Implement a custom exception?
			throw new IllegalArgumentException("Max upgrades reached");
		}
		if (playerGold < cost) 
		{
			throw new IllegalArgumentException("Cannot afford upgrade");
		}
		
		double returnValue = this.cost;
		
		this.totalValue += valueIncreasePerUpgrade;
		this.numberOfUpgrades++;
		this.cost *= costFactor;
		
		return returnValue;
	}
	
	public int getAmount()
	{
		return numberOfUpgrades;
	}

	public int getMaxAmount()
	{
		return maxNumberOfUpgrades;
	}

	public double getCost()
	{
		return cost;
	}

	public double getCostFactor()
	{
		return costFactor;
	}
	
	public double getTotalValue()
	{
		return totalValue;
	}
	
	public boolean isClick()
	{
		return isClickUpgrade;
	}
	
	public double getBonusPerUpgrade()
	{
		return valueIncreasePerUpgrade;
	}
	
	public String getName()
	{
		return name;
	}
	
	@Override
	public String toString()
	{
		return name + Integer.toString(numberOfUpgrades);
	}
}

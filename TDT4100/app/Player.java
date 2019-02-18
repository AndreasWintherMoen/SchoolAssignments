package app;

import java.util.HashMap;
import java.util.Map;

public class Player
{
	private double gold;
	private double goldPerSec;
	private double goldPerClick;
	
	private Map<String, Upgrade> upgrades;
	
	/**
	 * Default constructor, used when starting a new game
	 */
	public Player()
	{
		gold = 0;
		goldPerSec = 0;
		goldPerClick = 1;
		initializeUpgrades();
	}
	
	/**
	 * Constructor used when loading from file
	 */
	public Player(double gold, double goldPerSec, double goldPerClick)
	{
		this.gold = gold;
		this.goldPerSec = goldPerSec;
		this.goldPerClick = goldPerClick;
	}
	
	public void tick(double timeSinceLastFrame)
	{
		gold += goldPerSec * timeSinceLastFrame;
	}
	
	public double getGold()
	{
		return gold;
	}
	
	public double getGoldPerSec()
	{
		return goldPerSec;
	}
	
	public double getGoldPerClick()
	{
		return goldPerClick;
	}
	
	public Upgrade getUpgrade(String name) throws IllegalArgumentException
	{
		if (upgrades.containsKey(name) == false)
		{
			throw new IllegalArgumentException("Could not find " + name + " in map of upgrades");
		}
		
		return upgrades.get(name);
	}
	
	public String[] getAllUpgradesByString()
	{
		String[] returnValue = new String[8];

		int counter = 0;
		for (String s : upgrades.keySet())
		{
			returnValue[counter] = s;
			counter++;
		}
		return returnValue;
	}
	
	public void click()
	{
		gold += goldPerClick;
	}
	
	public boolean buyUpgrade(String name)
	{
		Upgrade upgrade = getUpgrade(name);
		
		try
		{
			gold -= upgrade.upgrade(gold);
		}
		catch (Exception e)
		{
			// TODO: Maybe implement a custom exception?
			System.out.println("Could not afford upgrade");
			return false;
		}
		
		recalculateUpgrades();
		
		return true;
	}
	
	public boolean canAffordUpgrade(String name)
	{
		return (canAffordUpgrade(getUpgrade(name)));
	}
	
	public boolean canAffordUpgrade(Upgrade upgrade)
	{
		return (upgrade.getCost() <= gold);
	}
	
	private void initializeUpgrades()
	{
		upgrades = new HashMap<String, Upgrade>();
		
		// TODO: Import these values from a config file in assignment 7 
		// TODO: Balance numbers
		upgrades.put("chechnyanFarmers", new Upgrade("chechnyanFarmers", 		100, 1.05d, 0.5d, false));
		upgrades.put("babushkaWorkers", new Upgrade("babushkaWorkers",			3000, 1.07d, 10d, false));
		upgrades.put("praiseCommunism", new Upgrade("praiseCommunism", 			100000, 1.07d, 250d, false));
		upgrades.put("siberianFactory", new Upgrade("siberianFactory", 			5000000, 1.07d, 10000d, false));
		
		upgrades.put("gmoPotatoes", new Upgrade("gmoPotatoes", 					25, 1.05d, 0.5d, true));
		upgrades.put("dilutedVodka", new Upgrade("dilutedVodka", 				300, 1.07d, 7.5d, true));
		upgrades.put("kgbAgents", new Upgrade("kgbAgents", 						6000, 1.07d, 200d, true));
		upgrades.put("bribePutin", new Upgrade("bribePutin", 					200000, 1.07d, 10000d, true));
	}
	
	private void recalculateUpgrades()
	{
		goldPerSec = 0;
		goldPerClick = 1;
		
		for (String name : upgrades.keySet())
		{
			Upgrade u = upgrades.get(name);
			
			if (u.isClick())
			{
				goldPerClick += u.getTotalValue();
			}
			else
			{
				goldPerSec += u.getTotalValue();
			}
		}
			
	}
}

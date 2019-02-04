package encapsulation;
public class Nim
{
	int[] piles;
	
	
	
	public Nim(int pileSize)
	{
		piles = new int[3];
		
		for (int i = 0; i < 3; i++)
		{
			piles[i] = pileSize;
		}
	}
	
	public Nim()
	{
		this(10);
	}
	
	
	
	public void removePieces(int number, int targetPile)
	{
		if (isGameOver())
		{
			throw new IllegalStateException();
		}
		
		if (isValidMove(number, targetPile))
		{
			piles[targetPile] -= number;
		}
		else
		{
			throw new IllegalArgumentException();
		}
	}
	
	public boolean isValidMove(int number, int targetPile)
	{
		if (targetPile > 2 || targetPile < 0) return false;
		if (number <= 0) return false;
		if (number > piles[targetPile]) return false;
		if (isGameOver()) return false;
		return true;
	}
	
	public boolean isGameOver()
	{
		for (int pile : piles)
		{
			if (pile == 0) return true;
		}
		
		return false;
	}
	
	public int getPile(int targetPile)
	{
		return piles[targetPile];
	}
	
	@Override
	public String toString()
	{
		String output = "Game state: " + (isGameOver() ? "finished" : "running") + "\n";
		
		for (int pile : piles)
		{
			output += "Pile: " + Integer.toString(pile + 1) + "\n";
		}
		
		return output;
	}
	
}
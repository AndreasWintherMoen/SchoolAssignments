package encapsulation;

import java.util.*;

public class CardDeck
{
	private static final char[] VALID_SUITS = {'S', 'H', 'D', 'C'};
	
	Card[] cardList;
	
	public CardDeck(int numPerSuit)
	{
		cardList = new Card[numPerSuit * VALID_SUITS.length];
		
		for (int i = 0; i < VALID_SUITS.length; i++)
		{
			for (int j = 1; j <= numPerSuit; j++)
			{
				cardList[i * numPerSuit + j - 1] = new Card(VALID_SUITS[i], j);
			}
		}
	}
	
	public int getCardCount()
	{
		return cardList.length;
	}
	
	public Card getCard(int n)
	{
		if (n > getCardCount() || n < 0)
		{
			throw new IllegalArgumentException();
		}
		
		return cardList[n];
	}
	
	public void shufflePerfectly()
	{
		Card[] firstHalf = Arrays.copyOfRange(cardList, 0, cardList.length / 2);
		Card[] secondHalf = Arrays.copyOfRange(cardList, cardList.length / 2, cardList.length);
		
		for (int i = 0; i < cardList.length / 2; i++)
		{
			System.out.println(i);
			cardList[i * 2] = firstHalf[i];
			cardList[i * 2 + 1] = secondHalf[i];
		}
	}
	
	@Override
	public String toString()
	{
		String output = "";
		
		for (Card card : cardList)
		{
			output += (card.toString() + "\n");
		}
		
		return output;
	}
	
	public static void main(String[] args)
	{
		CardDeck cd = new CardDeck(13);
		
		System.out.println(cd.toString());
		
		cd.shufflePerfectly();
		
		System.out.println(cd.toString());
	}
}
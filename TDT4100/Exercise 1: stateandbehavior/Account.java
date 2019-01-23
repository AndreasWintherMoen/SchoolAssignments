package stateandbehavior;
public class Account
{
	private double balance;
	private double interestRate;
	
	
	public void deposit(double amount)
	{
		if (amount > 0)
		{
			balance += amount;
		}
	}
	
	public void addInterest()
	{
		balance += (balance * interestRate / 100);
	}
	
	public double getBalance()
	{
		return balance;
	}
	
	public double getInterestRate()
	{
		return interestRate;
	}
	
	public void setInterestRate(double newInterest)
	{
		interestRate = newInterest;
	}
}
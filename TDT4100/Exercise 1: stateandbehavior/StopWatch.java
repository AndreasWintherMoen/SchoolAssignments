package stateandbehavior;
public class StopWatch
{
	private int elapsedTicks;
	private int elapsedTime;
	private int elapsedLapTime;
	private int lastLapTime;
	private boolean hasStopped = false;
	private boolean isRunning = false;
	
	
	public boolean isStarted()
	{
		return (isRunning || hasStopped);
	}
	
	public boolean isStopped()
	{
		return hasStopped;
	}
	
	public int getTicks()
	{
		return elapsedTicks;
	}
	
	public int getTime()
	{
		if (isStarted() == false)
		{
			return -1;
		}
		
		return elapsedTime;
	}
	
	public int getLapTime()
	{
		if (isStarted() == false)
		{
			return -1;
		}
		
		return elapsedLapTime;
	}
	
	public int getLastLapTime()
	{
		if (lastLapTime == 0)
		{
			return -1;
		}
		
		return lastLapTime;
	}
	
	public void tick(int ticks)
	{
		elapsedTicks += ticks;
		
		if (isRunning)
		{
			elapsedTime += ticks;
			elapsedLapTime += ticks;
		}
	}
	
	public void start()
	{
		isRunning = true;
	}
	
	public void lap()
	{
		lastLapTime = elapsedLapTime;
		elapsedLapTime = 0;
	}
	
	public void stop()
	{
		lap();
		isRunning = false;
		hasStopped = true;
	}
}
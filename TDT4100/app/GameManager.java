package app;

import java.lang.Thread;


public class GameManager
{
	private Player player;
	private UIManager uiManager;
	
	private final long millisPerTick = (long) Math.round(1000 / 30);	// 30 FPS
	
	
	public GameManager(UIManager uiManager)
	{
		// TODO: Implement saving and loading where a different constructor is being called
		this.uiManager = uiManager;
		player = new Player();
		uiManager.setPlayer(player);
		initializeGameLoop();
	}
	

	protected void initializeGameLoop() 
	{
		new Thread(() -> {
			internalGameLoop();
		}).start();
	}
	
	private void tick(double deltaTime)
	{
		deltaTime /= 1000d;	// Convert millis to seconds
		
		player.tick(deltaTime);
		uiManager.tick(deltaTime);
	}
	
	private void internalGameLoop()
	{
		System.out.println("Game loop started");

		long lastFrameTime = System.currentTimeMillis();
		long newFrameTime;
		
		while (true)
		{
			try
			{
				Thread.sleep(millisPerTick - (System.currentTimeMillis() - lastFrameTime));
			} catch (InterruptedException e)
			{
				e.printStackTrace();
				System.out.println("Internal Game Loop Error:\n" + e.getStackTrace());
			}

			newFrameTime = System.currentTimeMillis();
			tick(newFrameTime - lastFrameTime);
			lastFrameTime = newFrameTime;
		}
	}
}

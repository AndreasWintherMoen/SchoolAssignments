package app;

import java.io.File;
import java.text.DecimalFormat;
import java.text.NumberFormat;

import javafx.fxml.FXML;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Background;
import javafx.scene.layout.VBox;
import javafx.scene.layout.HBox;
import javafx.scene.text.Text;


public class UIManager
{
	// primary (root) window
	@FXML AnchorPane window;
	// Images
	@FXML VBox potatoDiv;
	@FXML ImageView potatoImgView;
	@FXML Button potatoButton;
	@FXML ImageView vodkaImgView;
	// Top text
	@FXML Text goldText;
	@FXML Text goldPerSecText;
	@FXML Text goldPerClickText;
	// Upgrade boxes
	@FXML HBox chechnyanFarmersBox;
	@FXML HBox babushkaWorkersBox;
	@FXML HBox praiseCommunismBox;
	@FXML HBox siberianFactoryBox;
	@FXML HBox gmoPotatoesBox;
	@FXML HBox dilutedVodkaBox;
	@FXML HBox kgbAgentsBox;
	@FXML HBox bribePutinBox;
	
	NumberFormat twoDecimalFormatter = new DecimalFormat("#0.00");
	NumberFormat noDecimalFormatter = new DecimalFormat("#0");
	
	private Player player;
	
	
	public UIManager()
	{
		
	}

	public void tick(double deltaTime)
	{
		updateGoldUI();
		updateUpgradeBoxesOpacity(0.3d);
		changeVodkaOpacity(-1d * deltaTime);
	}
	
	public void setPlayer(Player player)
	{
		this.player = player;
	}
	
	@FXML
	protected void initialize() 
	{
		new GameManager(this);
		loadPotato();
		loadVodka();
		setBackground();
		updateAllUIBoxes();
	}
	
	@FXML
	protected void click()
	{
		player.click();
		changeVodkaOpacity(.10d);
	}
	
	private void updateGoldUI()
	{
		goldText.setText("Rubles: " + formatNumber(player.getGold(), true));
		goldPerSecText.setText("Per Second: " + formatNumber(player.getGoldPerSec(), true));
		goldPerClickText.setText("Per Click: " + formatNumber(player.getGoldPerClick(), true));
	}
	
	private void loadPotato()
	{
		loadImage("src/img/potato.png", potatoImgView);
		potatoButton.getParent().toBack();
		potatoButton.setGraphic(potatoImgView);
		potatoButton.setPadding(new Insets(600d, 0d, 0d, 0d));
		potatoButton.setBackground(Background.EMPTY);
	}
	
	private void loadVodka()
	{
		loadImage("src/img/vodka.png", vodkaImgView);
		vodkaImgView.setOpacity(0);
		vodkaImgView.setTranslateY(670);
		vodkaImgView.setTranslateX(-10);
	}
	
	private void loadImage(String filepath, ImageView view)
	{
		File file = new File(filepath);
		Image newImg = new Image(file.toURI().toString());
		view.setImage(newImg);
	}
	
	private void setBackground()
	{
		window.setStyle("-fx-background-color: #dddddd;");
	}
	
	private void updateAllUIBoxes()
	{
		String[] s = player.getAllUpgradesByString();
		for (int i = 0; i < 8; i++)
		{
			updateBoxUI(s[i]);
		}
	}
	
	private void changeVodkaOpacity(double amount)
	{
		// Clamp value between 0 and 1
		double newOpacity = Math.max(0, Math.min(1, vodkaImgView.getOpacity() + amount));
		vodkaImgView.setOpacity(newOpacity);
	}
	
	private void updateUpgradeBoxesOpacity(double inactiveOpacity)
	{
		chechnyanFarmersBox.getParent().setOpacity(player.canAffordUpgrade("chechnyanFarmers") ? 1d : inactiveOpacity);
		babushkaWorkersBox.getParent().setOpacity(player.canAffordUpgrade("babushkaWorkers") ? 1d : inactiveOpacity);
		praiseCommunismBox.getParent().setOpacity(player.canAffordUpgrade("praiseCommunism") ? 1d : inactiveOpacity);
		siberianFactoryBox.getParent().setOpacity(player.canAffordUpgrade("siberianFactory") ? 1d : inactiveOpacity);
		
		gmoPotatoesBox.getParent().setOpacity(player.canAffordUpgrade("gmoPotatoes") ? 1d : inactiveOpacity);
		dilutedVodkaBox.getParent().setOpacity(player.canAffordUpgrade("dilutedVodka") ? 1d : inactiveOpacity);
		kgbAgentsBox.getParent().setOpacity(player.canAffordUpgrade("kgbAgents") ? 1d : inactiveOpacity);
		bribePutinBox.getParent().setOpacity(player.canAffordUpgrade("bribePutin") ? 1d : inactiveOpacity);		
	}
	
	private String formatNumber(double num, boolean decimals)
	{
		if (num < 1000)
		{
			return (decimals ? twoDecimalFormatter.format(num) : noDecimalFormatter.format(num));
		}
		else if (num < 1000000)
		{
			return (twoDecimalFormatter.format(num / 1000d) + "K");
		}
		else
		{
			return (twoDecimalFormatter.format(num / 1000000d) + "M");
		}
	}
	
	private void updateBoxUI(String name)
	{
		try
		{
			Upgrade upgrade = player.getUpgrade(name);
			HBox box = getBoxFromName(name);
			
			Text amountText = (Text) box.getChildren().get(0);
			amountText.setText(formatNumber(upgrade.getAmount(), false));
			
			Text costText = (Text) box.getChildren().get(1);
			costText.setText(formatNumber(upgrade.getCost(), true));
			
			Text bonusText = (Text) box.getChildren().get(2);
			bonusText.setText("+" + formatNumber(upgrade.getBonusPerUpgrade(), true));
		}
		catch (Exception e)
		{
			System.out.println(e);
			System.out.println(e.getStackTrace());
			System.exit(0);
		}
	}
	
	private void buyUpgrade(String name)
	{
		if (player.buyUpgrade(name))
		{
			// Upgrade worked, so we want to update the UI
			updateBoxUI(name);
		}
		
	}
	
	private HBox getBoxFromName(String name) throws IllegalArgumentException
	{
		switch (name)
		{
		case "chechnyanFarmers":
			return chechnyanFarmersBox;
		case "babushkaWorkers":
			return babushkaWorkersBox;
		case "praiseCommunism":
			return praiseCommunismBox;
		case "siberianFactory":
			return siberianFactoryBox;
		case "gmoPotatoes":
			return gmoPotatoesBox;
		case "dilutedVodka":
			return dilutedVodkaBox;
		case "kgbAgents":
			return kgbAgentsBox;
		case "bribePutin":
			return bribePutinBox;
		default:
//			return chechnyanFarmersBox;
			throw new IllegalArgumentException("Invalid name. Use name of upgrade, not the UI Box");
		}
	}
	
	
	@FXML
	void clickChechnyanFarmers()
	{
		buyUpgrade("chechnyanFarmers");
	}
	
	@FXML
	void clickBabushkaWorkers()
	{
		buyUpgrade("babushkaWorkers");
	}
	
	@FXML
	void clickPraiseCommunism()
	{
		buyUpgrade("praiseCommunism");
	}
	
	@FXML
	void clickSiberianFactory()
	{
		buyUpgrade("siberianFactory");
	}
	
	@FXML
	void clickGmoPotatoes()
	{
		buyUpgrade("gmoPotatoes");
		
	}
	
	@FXML
	void clickDilutedVodka()
	{
		buyUpgrade("dilutedVodka");
	}
	
	@FXML
	void clickKgbAgents()
	{
		buyUpgrade("kgbAgents");
	}
	
	@FXML
	void clickBribePutin()
	{
		buyUpgrade("bribePutin");
	}
}

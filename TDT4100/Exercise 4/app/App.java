package app;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;


public class App extends Application{

	@Override
	public void start(final Stage primaryStage) throws Exception {
		primaryStage.setTitle("My Application");
		primaryStage.setScene(new Scene(FXMLLoader.load(App.class.getResource("App.fxml"))));
		primaryStage.show();
		
		// Prevent fullscreen
		primaryStage.setResizable(false);
		
		// Due to the game loop running on a separate thread we have to exit the program manually
		// upon user closing the application window. 
		primaryStage.setOnCloseRequest(new EventHandler<WindowEvent>() 
		{
			@Override
			public void handle(final WindowEvent event) {
				System.out.println("Application closed");
				System.exit(0);
			}
		});
	}

	public static void main(final String[] args) {
		App.launch(args);
	}
}
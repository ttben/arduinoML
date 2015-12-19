package idm.interfaces;

import idm.impl2.ArduinoApplication;
import org.junit.Test;

public class ArduinoDSLTest2 {


	@Test
	public void tryThis() {

		ArduinoApplication
				.create("Test")
				.plugBricks()
					.sensor("BUTTON").onPin(8)
					.actuator("LAMP").onPin(9)
				.declareStates()
					.withName("on").whereActuator("LAMP").isOn().asInitialState()
					.withName("off").whereActuator("LAMP").isOff()
				.setTransitions()
					.from("on").to("off").whenSensor("BUTTON").isPressed()
					.from("off").to("on").whenSensor("BUTTON").isPressed()
				.writeArduinoCode();

	}
}

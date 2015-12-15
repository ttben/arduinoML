package idm.interfaces;

import idm.impl.Actuator;
import idm.impl.ArduinoProject;
import idm.impl.Sensor;
import idm.impl.State;
import org.junit.Test;

public class ArduinoDSLTest {

	ArduinoProject arduinoProject = new ArduinoProject("THIS IS A TEST");

	@Test
	public void lol() {

		//	Can create a concept : 'CardConfiguration' or 'Mapping'
		//	as Seb suggested. We can (re)use 'configuration' and so on ..

		//	Declaring components
		Sensor button = arduinoProject.plugSensor("BOUTON").onPin(8);
		Actuator lamp = arduinoProject.plugActuator("LAMP").onPin(8);

		//	Declaring states. 'where' is optional and chainable
		//	or can be easily chained by 'and' keyword
		State on = arduinoProject.declareState("on").where(lamp.isOn()).andIsInitialState();
		State off = arduinoProject.declareState("off").where(lamp.isOff());

		arduinoProject.changeBetween(on, off).when(button.pressed());
		arduinoProject.changeBetween(off, on).when(button.pressed());

		arduinoProject.acceptCode();


	}
}

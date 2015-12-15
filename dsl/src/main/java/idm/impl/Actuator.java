package idm.impl;

import io.github.mosser.arduinoml.kernel.behavioral.Action;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;

/**
 * Created by Benjamin on 15/12/2015.
 */
public class Actuator {
	private ArduinoProject arduinoProject;
	private String name;

	private io.github.mosser.arduinoml.kernel.structural.Actuator internalActuator;

	public Actuator(ArduinoProject arduinoProject, String name) {
		this.arduinoProject = arduinoProject;
		this.name = name;
	}

	public Actuator onPin(int pin) {
		internalActuator = new io.github.mosser.arduinoml.kernel.structural.Actuator();
		internalActuator.setName(name);
		internalActuator.setPin(pin);

		arduinoProject.brickList.add(internalActuator);

		return this;
	}

	public Action isOn() {
		Action switchTheLightOn = new Action();
		switchTheLightOn.setActuator(internalActuator);
		switchTheLightOn.setValue(SIGNAL.HIGH);
		return switchTheLightOn;
	}

	public Action isOff() {
		Action switchTheLightOff = new Action();
		switchTheLightOff.setActuator(internalActuator);
		switchTheLightOff.setValue(SIGNAL.LOW);
		return switchTheLightOff;
	}


	public ArduinoProject getArduinoProject() {
		return arduinoProject;
	}

	public void setArduinoProject(ArduinoProject arduinoProject) {
		this.arduinoProject = arduinoProject;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public io.github.mosser.arduinoml.kernel.structural.Actuator getInternalActuator() {
		return internalActuator;
	}
}

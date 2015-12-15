package idm.impl;

import io.github.mosser.arduinoml.kernel.structural.SIGNAL;

/**
 * Created by Benjamin on 15/12/2015.
 */
public class Sensor {
	private ArduinoProject arduinoProject;
	private String name;

	io.github.mosser.arduinoml.kernel.structural.Sensor internalSensor;

	public Sensor(ArduinoProject arduinoProject, String name) {
		this.arduinoProject = arduinoProject;
		this.name = name;
	}

	public Sensor onPin(int pin) {

		internalSensor = new io.github.mosser.arduinoml.kernel.structural.Sensor();
		internalSensor.setName(name);
		internalSensor.setPin(pin);

		arduinoProject.brickList.add(internalSensor);

		return this;
	}

	public TransitionSensor pressed() {
		return new TransitionSensor(this.arduinoProject, SIGNAL.HIGH, this);
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

	public io.github.mosser.arduinoml.kernel.structural.Sensor getInternalSensor() {
		return internalSensor;
	}
}

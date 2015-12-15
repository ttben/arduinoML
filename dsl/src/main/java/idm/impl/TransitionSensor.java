package idm.impl;

import io.github.mosser.arduinoml.kernel.structural.SIGNAL;

/**
 * Created by Benjamin on 15/12/2015.
 */
public class TransitionSensor {
	Sensor sensor;
	private ArduinoProject arduinoProject;
	SIGNAL value;

	public TransitionSensor(ArduinoProject arduinoProject, SIGNAL value, Sensor sensor) {
		this.arduinoProject = arduinoProject;
		this.value = value;
		this.sensor = sensor;
	}

	public Sensor getSensor() {
		return sensor;
	}

	public void setSensor(Sensor sensor) {
		this.sensor = sensor;
	}

	public ArduinoProject getArduinoProject() {
		return arduinoProject;
	}

	public void setArduinoProject(ArduinoProject arduinoProject) {
		this.arduinoProject = arduinoProject;
	}

	public SIGNAL getValue() {
		return value;
	}

	public void setValue(SIGNAL value) {
		this.value = value;
	}
}

package idm.impl;

import io.github.mosser.arduinoml.kernel.structural.SIGNAL;

/**
 * Created by Benjamin on 15/12/2015.
 */
public class Transition {
	private ArduinoProject arduinoProject;
	private State from;
	private State to;

	io.github.mosser.arduinoml.kernel.behavioral.Transition internalTransition;

	public Transition(ArduinoProject arduinoProject, State from, State to) {
		this.arduinoProject = arduinoProject;
		this.from = from;
		this.to = to;

		internalTransition = new io.github.mosser.arduinoml.kernel.behavioral.Transition();
		internalTransition.setNext(to.getInternalState());
		from.getInternalState().setTransition(internalTransition);
	}

	public Transition when(TransitionSensor transitionSensor) {
		internalTransition.setSensor(transitionSensor.sensor.internalSensor);
		internalTransition.setValue((SIGNAL) transitionSensor.value);
		return this;
	}

	public State getFrom() {
		return from;
	}

	public void setFrom(State from) {
		this.from = from;
	}

	public State getTo() {
		return to;
	}

	public void setTo(State to) {
		this.to = to;
	}
}

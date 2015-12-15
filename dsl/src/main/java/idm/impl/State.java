package idm.impl;

import io.github.mosser.arduinoml.kernel.behavioral.Action;

import java.util.Arrays;

/**
 * Created by Benjamin on 15/12/2015.
 */
public class State {

	private io.github.mosser.arduinoml.kernel.behavioral.State internalState;
	private ArduinoProject arduinoProject;

	public State(ArduinoProject arduinoProject, String name) {
		this.arduinoProject = arduinoProject;
		internalState = new io.github.mosser.arduinoml.kernel.behavioral.State();
		internalState.setName(name);

	}

	public State where(Action... actions) {
		internalState.setActions(Arrays.asList(actions));
		return this;
	}

	public State andIsInitialState() {
		arduinoProject.app.setInitial(internalState);
		return this;
	}

	public io.github.mosser.arduinoml.kernel.behavioral.State getInternalState() {
		return internalState;
	}
}

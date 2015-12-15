package idm.impl;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.generator.ToWiring;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Brick;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Benjamin on 15/12/2015.
 */
public class ArduinoProject {
	App app = new App();

	List<Brick> brickList = new ArrayList<Brick>();
	List<io.github.mosser.arduinoml.kernel.behavioral.State> stateList = new ArrayList<io.github.mosser.arduinoml.kernel.behavioral.State>();

	public ArduinoProject(String s) {
		this.app.setName(s);
	}

	public idm.impl.Sensor plugSensor(String name) {
		idm.impl.Sensor newSensor = new idm.impl.Sensor(this, name);
		return newSensor;
	}

	public idm.impl.Actuator plugActuator(String name) {
		idm.impl.Actuator newActuator = new idm.impl.Actuator(this, name);
		return newActuator;
	}



	public State declareState(String name) {
		State state = new State(this, name);
		this.stateList.add(state.getInternalState());
		return state;
	}

	public Transition changeBetween(State from, State to) {
		Transition transition = new Transition(this, from, to);
		return transition;
	}

	public void acceptCode() {
		app.setBricks(brickList);
		app.setStates(stateList);
		Visitor codeGenerator = new ToWiring();
		app.accept(codeGenerator);
		System.out.println(codeGenerator.getResult());
	}
}

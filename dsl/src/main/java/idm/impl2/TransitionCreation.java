package idm.impl2;

import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.Transition;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class TransitionCreation implements ITO, ITransitionCondition, ISensorForTransition, IAndTransition {

    private Transitions transitions;
    private Transition transition;

    public TransitionCreation(Transitions transitions, String state) {
        this.transitions = transitions;
        transition = new Transition();
        State initial = transitions.getAppli().getState(state);
        if(initial == null)
            throw new IllegalArgumentException("The state " + state + " does not exist");

        initial.setTransition(transition);
    }


    public ITransitionCondition to(String targetState) {

        State next = transitions.getAppli().getState(targetState);
        if(next == null)
            throw new IllegalArgumentException("The state " + targetState + " does not exist");
        transition.setNext(next);

        return this;
    }

    public ISensorForTransition whenSensor(String name) {

        Sensor s = transitions.getAppli().getPlugs().getSensor(name);
        if(s == null)
            throw new IllegalArgumentException("The sensor " + name + " does not exist");

        transition.setSensor(s);

        return this;
    }

    public IAndTransition isNotPressed() {
        transition.setValue(SIGNAL.LOW);
        return this;
    }

    public IAndTransition isPressed() {
        transition.setValue(SIGNAL.HIGH);
        return this;
    }


    public ITO from(String state) {
        return transitions.from(state);
    }

    public void writeArduinoCode() {
        transitions.getAppli().evaluate();
    }
}

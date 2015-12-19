package idm.impl2;

import io.github.mosser.arduinoml.kernel.behavioral.Action;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.structural.Actuator;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class StateCreation implements ICreation, IActuatorIsOn, IAndState {

    private State s;
    private States states;
    private Action currentAction;

    public StateCreation(State s, States states) {
        this.s = s;
        this.states = states;
    }

    public IActuatorIsOn whereActuator(String actuatorName) {
        Actuator actuator = null;
        for(Actuator a : states.getAppli().getPlugs().getActuators()){
            if(a.getName().equals(actuatorName)){
                actuator = a;
            }
        }
        if(actuator == null) throw new IllegalArgumentException("Not actuator with name " + actuatorName);
        currentAction = new Action();
        currentAction.setActuator(actuator);
        return this;
    }

    public IAndState isOn() {
        setAction(true);
        return this;
    }

    public IAndState isOff() {
        setAction(false);
        return this;
    }

    private void setAction(boolean on){
        List<Action> actions = s.getActions();
        if(actions == null){
            actions = new ArrayList<Action>();
        }
        currentAction.setValue(on?SIGNAL.HIGH:SIGNAL.LOW);

        actions.add(currentAction);
        s.setActions(actions);
    }


    public ICreation and() {
        return this;
    }

    public States asInitialState() {
        states.setInitial(s);
        return states;
    }

    public StateCreation withName(String name) {
        return null;
    }

    public ITransition setTransitions() {

        Transitions t = new Transitions(states.getAppli());

        return t;
    }
}

package idm.impl2;

import io.github.mosser.arduinoml.kernel.behavioral.State;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class States {

    private ArduinoApplication appli;
    private List<State> states;
    private State initial;

    public States(ArduinoApplication appli) {
        appli.setStates(this);
        this.appli = appli;
        states = new ArrayList<State>();
    }

    public ICreation withName(String name) {
        State s = new State();
        s.setName(name);
        states.add(s);

        return new StateCreation(s, this);
    }


    public void setInitial(State initial) {
        this.initial = initial;
    }


    ArduinoApplication getAppli(){
        return appli;
    }

    List<State> getAll() {
        return states;
    }

    State getInitial(){
        return initial;
    }
}

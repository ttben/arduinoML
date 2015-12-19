package idm.impl2;

import io.github.mosser.arduinoml.kernel.behavioral.Transition;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class Transitions implements ITransition {

    private ArduinoApplication appli;
    private List<Transition> transitions;

    public Transitions(ArduinoApplication appli) {
        this.appli = appli;
        appli.setTransitions(this);
        transitions = new ArrayList<Transition>();
    }

    public ITO from(String state) {
        TransitionCreation tc = new TransitionCreation(this, state);
        return tc;
    }

    ArduinoApplication getAppli() {
        return appli;
    }
}

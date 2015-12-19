package idm.impl2;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.generator.ToWiring;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Brick;

import java.util.ArrayList;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class ArduinoApplication {

    private String name;
    private Plugs plugs;
    private States states;
    private Transitions transitions;

    private ArduinoApplication(String name){
        this.name = name;
    }

    public static ArduinoApplication create(String name){
        return new ArduinoApplication(name);
    }

    public Plugs plugBricks(){
        plugs = new Plugs(this);
        return plugs;
    }

    public void setStates(States states) {
        this.states = states;
    }

    Plugs getPlugs(){
        return plugs;
    }

    public void setTransitions(Transitions transitions) {
        this.transitions = transitions;
    }

    public States getStates() {
        return states;
    }

    State getState(String state) {
        for(State s : states.getAll()){
            if(s.getName().equals(state))
                return s;
        }
        return null;
    }

    void evaluate() {

        App app = new App();

        ArrayList<Brick> bricks = new ArrayList<Brick>();
        bricks.addAll(plugs.getActuators());
        bricks.addAll(plugs.getSensors());
        app.setBricks(bricks);

        app.setStates(states.getAll());

        app.setInitial(states.getInitial());

        Visitor codeGenerator = new ToWiring();
        app.accept(codeGenerator);
        System.out.println(codeGenerator.getResult());
    }
}

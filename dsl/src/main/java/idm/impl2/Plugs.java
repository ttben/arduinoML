package idm.impl2;

import idm.impl.ArduinoProject;
import io.github.mosser.arduinoml.kernel.structural.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class Plugs {

    private List<Actuator> actuators;
    private List<Sensor> sensors;
    private ArduinoApplication appli;

    Plugs(ArduinoApplication appli) {
        actuators = new ArrayList<Actuator>();
        sensors = new ArrayList<Sensor>();
        this.appli = appli;
    }

    public ToPlug sensor(String name){
        Sensor s = new Sensor();
        s.setName(name);
        sensors.add(s);
        return new ToPlug(s, this);
    }

    public ToPlug actuator(String name){
        Actuator a = new Actuator();
        a.setName(name);
        actuators.add(a);
        return new ToPlug(a, this);
    }


    public States declareStates() {
        States s = new States(appli);
        return s;
    }

    List<Actuator> getActuators() {
        return actuators;
    }

    List<Sensor> getSensors() {
        return sensors;
    }

    Sensor getSensor(String name) {
        for(Sensor s : getSensors()){
            if(s.getName().equals(name))
                return s;
        }
        return null;
    }

    Actuator getActuator(String name) {
        for(Actuator a : getActuators()){
            if(a.getName().equals(name))
                return a;
        }
        return null;
    }
}

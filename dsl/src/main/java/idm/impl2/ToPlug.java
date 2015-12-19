package idm.impl2;

import io.github.mosser.arduinoml.kernel.structural.Brick;

/**
 * Created by Sébastien on 19/12/2015.
 */
public class ToPlug {

    private Brick brick;
    private Plugs plugs;

    ToPlug(Brick b, Plugs plugs) {
        this.brick = b;
        this.plugs = plugs;
    }

    public Plugs onPin(int pinNumber){
        brick.setPin(pinNumber);
        return plugs;
    }
}

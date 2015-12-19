package idm.impl2;

/**
 * Created by Sébastien on 19/12/2015.
 */
public interface IAndState {

    public ICreation and();
    public States asInitialState();
    public StateCreation withName(String name);

    public ITransition setTransitions();
}

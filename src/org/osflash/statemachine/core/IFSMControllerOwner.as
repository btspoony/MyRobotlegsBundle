package org.osflash.statemachine.core {
import org.osflash.signals.ISignal;

/**
 * The inward-facing interface between the FSMController and the
 * SignalTransitionController
 */
public interface IFSMControllerOwner {

    /**
     *  allows the SignalTransitionController to access whether to dispatch
     *  to the changed phase signal
     */
    function get hasChangedListener():Boolean;

    /**
     * Allows the SignalTransitionController to listen to framework action requests.
     */
    function get actionSignal():ISignal;

    /**
     * Allows the SignalTransitionController to listen to framework cancel requests.
     */
    function get cancelSignal():ISignal;

    /**
     * Dispatches the general <strong>changed</strong> phase to all framework
     * listeners.
     * @param state the current state.
     */
    function dispatchChanged(stateName:String):void;


    /**
     * Sets the current state when the transition has been successful
     * @param state the state that is to be the current state
     */
    function setCurrentState(state:IState):void;

    /**
     * Sets whether the StateMachine is undergoing a transition cycle
     */
    function setIsTransition(value:Boolean):void;

    /**
     * Sets the current phase of the transition cycle
     * @see TransitionPhase
     */
    function setTransitionPhase(value:ITransitionPhase):void;

    /**
     * Sets the referring action of the transition cycle
     * @see TransitionPhase
     */
    function setReferringAction(value:String):void;

    /**
     * The destroy method for GC
     */
    function destroy():void;
}
}
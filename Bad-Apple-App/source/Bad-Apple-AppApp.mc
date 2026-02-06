import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Timer;

class Bad_Apple_AppApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {

    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new Bad_Apple_AppView(), new Bad_Apple_AppDelegate() ];
    }

}

function getApp() as Bad_Apple_AppApp {
    return Application.getApp() as Bad_Apple_AppApp;
}

class Bad_Apple_AppDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onBack() as Boolean {
        
        System.exit();
    }


    function onMenu() as Boolean { 
    
      animationTimer = 0;
      return true;
    }

}
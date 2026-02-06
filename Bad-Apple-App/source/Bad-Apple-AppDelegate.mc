import Toybox.Lang;
import Toybox.WatchUi;

class Bad_Apple_AppDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onBack() as Boolean {
        
        System.exit();
    }

}
import Toybox.Lang;
import Toybox.WatchUi;

class Bad_Apple_AppDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onBack() as Boolean {
        
        System.exit();
    }


    function onMenu() as Boolean { 
    
      $.animationTimer = 0;
      return true;
    }

}
import Toybox.Lang;
import Toybox.WatchUi;

class Bad_Apple_On_GarminDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new Bad_Apple_On_GarminMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}
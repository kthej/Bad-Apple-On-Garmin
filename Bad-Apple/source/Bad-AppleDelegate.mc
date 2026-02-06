import Toybox.Lang;
import Toybox.WatchUi;

class Bad_AppleDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new Bad_AppleMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}
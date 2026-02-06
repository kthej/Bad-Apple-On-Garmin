import Toybox.Graphics;
import Toybox.WatchUi;

class Bad_Apple_AppView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    public var VideoFont1;
    function onLayout(dc as Dc) as Void {
        VideoFont1 = WatchUi.loadResource(Rez.Fonts.VideoFont1);
        dc.clear();
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.clear();
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(88,50,VideoFont1,"!",Graphics.TEXT_JUSTIFY_CENTER);
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}

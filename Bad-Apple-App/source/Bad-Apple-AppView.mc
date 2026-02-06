import Toybox.Graphics;
import Toybox.WatchUi;
var animationTimer;
class Bad_Apple_AppView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    public var VideoFont1;
    public var selectFrameIndex = 0;
    public var selectSectionIndex = 0;
    
    
    function onLayout(dc as Dc) as Void {
        VideoFont1 = WatchUi.loadResource(Rez.Fonts.VideoFont0);
        dc.clear();
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function nextFrame() as Void{
        selectFrameIndex++;
        WatchUi.requestUpdate();
    }
    function onShow() as Void {
        var animationTimer = new Timer.Timer();
        animationTimer.start(method(:nextFrame),200,true);

    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.clear();
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(,75,VideoFont1,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT);
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}

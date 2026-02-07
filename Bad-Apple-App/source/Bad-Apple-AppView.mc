/*

Pretty cool right? What's even cooler is the fact that I wrote this all myself, with no AI writing any of the code!

*/

import Toybox.Graphics;
import Toybox.WatchUi;
var animationTimer;
//Forgive me for this, I am a noob at Monkey C
public var VideoFont0;
public var VideoFont1;
public var VideoFont2;
public var VideoFont3;
public var VideoFont4;
public var VideoFont5;
public var VideoFont6;
public var VideoFont7;
public var VideoFont8;
public var VideoFont9;
public var VideoFont10;
public var VideoFont11;
public var VideoFont12;
public var VideoFont13;
public var VideoFont14;
public var VideoFont15;
public var VideoFont16;
public var VideoFont17;
public var VideoFont18;
public var VideoFont19;
public var VideoFont20;
public var VideoFont21;

public var selectFrameIndex = 0;
public var selectSectionIndex = 0;

class Bad_Apple_AppView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here

    
    
    function onLayout(dc as Dc) as Void {
        VideoFont0 = WatchUi.loadResource(Rez.Fonts.VideoFont0);
        
        dc.clear();
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function nextFrame() as Void{

        if(selectFrameIndex < 99){
            selectFrameIndex++;
        }
        else if(selectFrameIndex == 99){
            selectSectionIndex++;
            selectFrameIndex = 0;
        }


        if(selectSectionIndex == 1){VideoFont1 = WatchUi.loadResource(Rez.Fonts.VideoFont1); VideoFont0 = null;}
        else if(selectSectionIndex == 2){VideoFont2 = WatchUi.loadResource(Rez.Fonts.VideoFont2); VideoFont1 = null;}
        else if(selectSectionIndex == 3){VideoFont3 = WatchUi.loadResource(Rez.Fonts.VideoFont3); VideoFont2 = null;}
        else if(selectSectionIndex == 4){VideoFont4 = WatchUi.loadResource(Rez.Fonts.VideoFont4); VideoFont3 = null;}
        else if(selectSectionIndex == 5){VideoFont5 = WatchUi.loadResource(Rez.Fonts.VideoFont5); VideoFont4 = null;}
        else if(selectSectionIndex == 6){VideoFont6 = WatchUi.loadResource(Rez.Fonts.VideoFont6); VideoFont5 = null;}
        else if(selectSectionIndex == 7){VideoFont7 = WatchUi.loadResource(Rez.Fonts.VideoFont7); VideoFont6 = null;}
        else if(selectSectionIndex == 8){VideoFont8 = WatchUi.loadResource(Rez.Fonts.VideoFont8); VideoFont7 = null;}
        else if(selectSectionIndex == 9){VideoFont9 = WatchUi.loadResource(Rez.Fonts.VideoFont9); VideoFont8 = null;}
        else if(selectSectionIndex == 10){VideoFont10 = WatchUi.loadResource(Rez.Fonts.VideoFont10); VideoFont9 = null;}
        else if(selectSectionIndex == 11){VideoFont11 = WatchUi.loadResource(Rez.Fonts.VideoFont11); VideoFont10 = null;}
        else if(selectSectionIndex == 12){VideoFont12 = WatchUi.loadResource(Rez.Fonts.VideoFont12); VideoFont11 = null;}
        else if(selectSectionIndex == 13){VideoFont13 = WatchUi.loadResource(Rez.Fonts.VideoFont13); VideoFont12 = null;}
        else if(selectSectionIndex == 14){VideoFont14 = WatchUi.loadResource(Rez.Fonts.VideoFont14); VideoFont13 = null;}
        else if(selectSectionIndex == 15){VideoFont15 = WatchUi.loadResource(Rez.Fonts.VideoFont15); VideoFont14 = null;}
        else if(selectSectionIndex == 16){VideoFont16 = WatchUi.loadResource(Rez.Fonts.VideoFont16); VideoFont15 = null;}
        else if(selectSectionIndex == 17){VideoFont17 = WatchUi.loadResource(Rez.Fonts.VideoFont17); VideoFont16 = null;}
        else if(selectSectionIndex == 18){VideoFont18 = WatchUi.loadResource(Rez.Fonts.VideoFont18); VideoFont17 = null;}
        else if(selectSectionIndex == 19){VideoFont19 = WatchUi.loadResource(Rez.Fonts.VideoFont19); VideoFont18 = null;}
        else if(selectSectionIndex == 20){VideoFont20 = WatchUi.loadResource(Rez.Fonts.VideoFont20); VideoFont19 = null;}
        else if(selectSectionIndex == 21){VideoFont21 = WatchUi.loadResource(Rez.Fonts.VideoFont21); VideoFont20 = null;}
        
        WatchUi.requestUpdate(); 
    }

    function onShow() as Void {
        var animationTimer = new Timer.Timer();
        animationTimer.start(method(:nextFrame),100,true);
        

    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.clear();
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        //Please forgive me, I am new t
        if (selectSectionIndex == 0){dc.drawText(7,26,VideoFont0,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 1){dc.drawText(7,26,VideoFont1,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 2){dc.drawText(7,26,VideoFont2,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 3){dc.drawText(7,26,VideoFont3,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 4){dc.drawText(7,26,VideoFont4,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 5){dc.drawText(7,26,VideoFont5,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 6){dc.drawText(7,26,VideoFont6,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 7){dc.drawText(7,26,VideoFont7,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 8){dc.drawText(7,26,VideoFont8,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 9){dc.drawText(7,26,VideoFont9,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 10){dc.drawText(7,26,VideoFont10,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 11){dc.drawText(7,26,VideoFont11,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 12){dc.drawText(7,26,VideoFont12,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 13){dc.drawText(7,26,VideoFont13,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 14){dc.drawText(7,26,VideoFont14,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 15){dc.drawText(7,26,VideoFont15,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 16){dc.drawText(7,26,VideoFont16,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 17){dc.drawText(7,26,VideoFont17,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 18){dc.drawText(7,26,VideoFont18,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 19){dc.drawText(7,26,VideoFont19,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 20){dc.drawText(7,26,VideoFont20,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        else if(selectSectionIndex == 21){dc.drawText(7,26,VideoFont21,(33+selectFrameIndex).toChar().toString(),Graphics.TEXT_JUSTIFY_LEFT); }
        

    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}

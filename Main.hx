package;
import kha.Framebuffer;
import kha.System;
import kha.Image;
import kha.Color;
import kha.Assets;
import kha.Scaler;
import kha.Color;
import kha.Font;
import kha.Assets;
import kha.Scheduler;
import kha.graphics2.Graphics;
import kha.graphics4.DepthStencilFormat;
import kha.input.Keyboard;
import kha.input.Mouse;
import kha.input.KeyCode;
import kha.math.FastMatrix3;
import kha.WindowOptions;
import kha.WindowMode;
import kha.Window;
class Main {
    var font:Font;
    public static 
    function main() {
        System.start( {  title: "Krom Test"
                             ,  width: 1024, height: 786
                             ,  window: { windowFeatures:    FeatureResizable }
                             , framebuffer: { samplesPerPixel: 4 } }
                             , function( window: Window ){
                                new Main();
        } );
    }
    public function new(){ Assets.loadEverything( loadAll ); }
    public function loadAll(){
        trace( 'loadAll' );
        font = Assets.fonts.Arimo_Bold;
        startRendering();
    }
    function startRendering(){
        System.notifyOnFrames( function ( framebuffer ) { render( framebuffer[0] ); } );
    }
    inline
    function render( framebuffer: Framebuffer ){
        var g: Graphics = framebuffer.g2;
        g.begin( true, 0xFFFFFFFF ); 
        g.color = Color.White;
        g.fillRect( 0, 0, 1024, 768 );
        g.end();
    }

}
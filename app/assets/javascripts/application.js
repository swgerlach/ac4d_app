// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery.min
//= require jquery_ujs
//= require bootstrap
//= require jquery.ba-throttle-debounce.min
//= require scroll
//= require_tree .

$(document).ready(function(){
    $('.path').each(function(){
        var $pathobj = $(this);
        var pathOffset = -36;
        var pathTotal = documentHeight()-2500+22;
        $(window).scroll(function(){
            var ratio = scrollRatio();
            var yPos = pathTotal*ratio + pathOffset + 'px';
            $pathobj.css({ top: yPos });
        });
        $(window).resize(function(){
            var ratio = scrollRatio();
            var yPos = pathTotal*ratio + pathOffset + 'px';
            $pathobj.css({ top: yPos });
        });
    });
    $('.target').each(function(){
        // grab the object
        var $targetobj = $(this);
        // set the offsets
        var targetYOffset = 163;
        var targetXOffset = 93;
        // set the total scroll for the object
        var targetTotal = (documentHeight()-316);
        $(window).scroll(function(){
            // current ration that has been scrolled
            var ratio = scrollRatio();
            // set the yPos based on the percentage that has been scrolled
            var yPos = targetTotal*ratio + targetYOffset + 'px';
            // custom xPos to produce oscillation
            var b = 2*Math.PI/(targetTotal/3);
            var xPos = -72*Math.sin(b*targetTotal*ratio)+targetXOffset;
            // set the target's new position
            $targetobj.css({ top: yPos, left: xPos });
        });
        $(window).resize(function(){
            // current ration that has been scrolled
            var ratio = scrollRatio();
            // set the yPos based on the percentage that has been scrolled
            var yPos = targetTotal*ratio + targetYOffset + 'px';
            // custom xPos to produce oscillation
            var b = 2*Math.PI/(targetTotal/3);
            var xPos = -72*Math.sin(b*targetTotal*ratio)+targetXOffset;
            //set the target's new position
            $targetobj.css({ top: yPos, left: xPos });
        });
    });
    /*$('.windowStats').each(function(){
        $windowStatsobj = $(this);
        $(window).scroll(function(){
            $windowStatsobj.text("Doc:"+documentHeight()+"|Win:"+windowHeight()+"|ScrollTop:"+$(window).scrollTop()+"|ScrollBottom:"+scrollBottom());
        });
    });*/
});


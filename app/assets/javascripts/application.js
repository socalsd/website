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
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require_tree ../../../vendor/assets/superfish_responsive
//= require ../../../vendor/assets/circular_content_carousel/javascripts/jquery.swipe.js
//= require ../../../vendor/assets/circular_content_carousel/javascripts/jquery.mousewheel.js
//= require ../../../vendor/assets/circular_content_carousel/javascripts/jquery.contentcarousel.js

(function($){
    $(document).ready(function(){
        //
        /* Activate Superfish Menu */
        var sfDelay = 600;
        if($('html').hasClass('isie'))
            sfDelay = 300;
        $('#main_menu > ul')
        .supersubs({
            minWidth: 12, // minimum width of sub-menus in em units
            maxWidth: 27, // maximum width of sub-menus in em units
            extraWidth: 1 // extra width can ensure lines don't sometimes turn over
        }).superfish({
            delay:sfDelay,
            dropShadows:false,
            autoArrows:true,
            speed:300
        }).mobileMenu({
            switchWidth: 960,
            topOptionText: document.mobileMenuText,
            indentString: '&nbsp;&nbsp;&nbsp;'
        });
        
        $('#ca-container').contentcarousel();
        alert("foobar!");
        /*
        
        */
    });
})(jQuery);

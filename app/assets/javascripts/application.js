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
//= require superfish_menu.js
//= require ../../../vendor/assets/circular_content_carousel/javascripts/jquery.easing.1.3.js
//= require ../../../vendor/assets/circular_content_carousel/javascripts/jquery.mousewheel.js
//= require ../../../vendor/assets/circular_content_carousel/javascripts/jquery.contentcarousel.js
//= require ../../../vendor/assets/pretty_photo/javascripts/jquery.prettyPhoto.js

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
        
        jQuery("a[data-rel^='prettyPhoto'], .prettyphoto_link").prettyPhoto({theme:'pp_kalypso',social_tools:false, deeplinking:false});
    	jQuery("a[rel^='prettyPhoto']").prettyPhoto({theme:'pp_kalypso'});
    	jQuery("a[data-rel^='prettyPhoto[login_panel]']").prettyPhoto({theme:'pp_kalypso', default_width:800, social_tools:false, deeplinking:false});
    });
})(jQuery);

/*--------------------------------------------------------------------------------------------------
	Pretty Photo
--------------------------------------------------------------------------------------------------*/

	function ppOpen(panel, width){
		jQuery.prettyPhoto.close();
		setTimeout(function() {
			jQuery.fn.prettyPhoto({social_tools: false, deeplinking: false, show_title: false, default_width: width, theme:'pp_kalypso'});
			jQuery.prettyPhoto.open(panel);
		}, 300);

	} // function to open different panel within the panel

	
	
	jQuery(".prettyPhoto_transparent").click(function(e){
		e.preventDefault();
		jQuery.fn.prettyPhoto({social_tools: false, deeplinking: false, show_title: false, default_width: 980, theme:'pp_kalypso transparent', opacity: 0.95});
		jQuery.prettyPhoto.open($(this).attr('href'),'','');
	});

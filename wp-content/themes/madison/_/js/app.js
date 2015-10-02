function menu(){

  var windowWidth = $(window).width(),
  windowHeight = $(window).height(),
  headHeight = $('header').outerHeight(),
  unit = windowHeight - headHeight,
  contactInfoHeight = $('.contact-info').outerHeight();

  if(!$('body').hasClass('home')){

    if(!Modernizr.touch && windowWidth > 1024){

      $('body').addClass('footer-safe');
      $('section.main:not(.contact-main)').css({'min-height':unit});
      $('section.contact-form').css({'min-height':unit-contactInfoHeight-55});
    }else{
    	$('body').removeClass('footer-safe');
      $('section.main').css({'min-height':'0'});
      $('section.contact-form').css({'min-height':'0'});
    }
  }else{
    $('section.main').css({'min-height':windowHeight});

  }

}

function menuScroll(){

  if(!$('body').hasClass('home')){

  	var winScrollTop = $(window).scrollTop(),
  	footerTop = $('footer').offset().top,
    windowHeight = $(window).height(),
    unit = winScrollTop + windowHeight;

  	if(footerTop < unit){
  		$('body').addClass('scrolled-one');
  	}else{
  		$('body').removeClass('scrolled-one');
  	}

  } // endif is not home
}


function Navigation(){

  if(!$('body').hasClass('home')){

    var navigation = responsiveNav(".nav-collapse", {
      animate: true,                    // Boolean: Use CSS3 transitions, true or false
      transition: 284,                  // Integer: Speed of the transition, in milliseconds
      label: "Menu",                    // String: Label for the navigation toggle
      insert: "after",                  // String: Insert the toggle before or after the navigation
      customToggle: "nav-toggle",                 // Selector: Specify the ID of a custom toggle
      closeOnNavClick: false,           // Boolean: Close the navigation when one of the links are clicked
      openPos: "relative",              // String: Position of the opened nav, relative or static
      navClass: "nav-collapse",         // String: Default CSS class. If changed, you need to edit the CSS too!
      navActiveClass: "js-nav-active",  // String: Class that is added to <html> element when nav is active
      jsClass: "js",                    // String: 'JS enabled' class which is added to <html> element
      init: function(){},               // Function: Init callback
      open: function(){},               // Function: Open callback
      close: function(){}               // Function: Close callback
    });

  }else{

    var navigation = responsiveNav(".home-nav-collapse", {
      animate: true,                    // Boolean: Use CSS3 transitions, true or false
      transition: 284,                  // Integer: Speed of the transition, in milliseconds
      label: "Menu",                    // String: Label for the navigation toggle
      insert: "after",                  // String: Insert the toggle before or after the navigation
      customToggle: "home-nav-toggle",                 // Selector: Specify the ID of a custom toggle
      closeOnNavClick: false,           // Boolean: Close the navigation when one of the links are clicked
      openPos: "relative",              // String: Position of the opened nav, relative or static
      navClass: "nav-collapse",         // String: Default CSS class. If changed, you need to edit the CSS too!
      navActiveClass: "js-nav-active",  // String: Class that is added to <html> element when nav is active
      jsClass: "js",                    // String: 'JS enabled' class which is added to <html> element
      init: function(){},               // Function: Init callback
      open: function(){},               // Function: Open callback
      close: function(){}               // Function: Close callback
    });

  }

}

/* -------------------------------
:: INSTAGRAM
-------------------------------- */

function instafeedJS(){

  if ($('body').hasClass('media')){
    var userFeed = new Instafeed({
        get: 'user',
        userId:  261752795,
        accessToken: '5004172.b0d5282.2886a2be97a842f796d1521a8a6a6ff8',
        links: true,
        resolution: 'standard_resolution',
        limit: 6,
        template: '<a class="fancybox item" rel="gallery"  title="{{caption}}" href="{{image}}"><div class="overlay"></div><img src="{{model.images.thumbnail.url}}"/></a>'
    });
    userFeed.run();

   }
}

/* -------------------------------
:: SC PLAYER HEIGHT
-------------------------------- */

function scPlayer(){

  var listHeight = $('.sc-player .list-wrap').outerHeight();


  $('.sc-player .control-wrap').css({'height':listHeight});

}

/* -------------------------------
:: HOME LOGO POSITION
-------------------------------- */

function homeLogo(){
  var logoHeight = $('#home-logo').outerHeight(),
  windowWidth = $(window).width();

  if(windowWidth > 1024){
    $('#home-logo').css({'margin-top':-logoHeight/2});
  }else{
    $('#home-logo').css({'margin-top':'0'}); 
  }
}


/* -------------------------------
:: INIT
-------------------------------- */

$(document).ready(function(){

	$(document).foundation();
  menu();
  menuScroll();
  Navigation();
  instafeedJS();
  homeLogo();

  $('.fancybox').fancybox({
    aspectRatio : true,
    padding : 0,
    openEffect  : 'none',
    closeEffect : 'none',
  });

  $('.fancybox-media').fancybox({
    aspectRatio : true,
    padding : 0,
    openEffect  : 'none',
    closeEffect : 'none',
    helpers : {
      media : {}
    }
  });
  
  $('#about-title').lettering();

  $(window).load(function(){
    scPlayer();
  });

  $(window).resize(function(){
    menu();
    scPlayer();
    homeLogo();
  });

  $(window).scroll(function(){
  	menuScroll();
  });

});
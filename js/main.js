
/****** Owl Carousel **************/ 
		$('.owl-carousel').owlCarousel({
			autoplay:true,
			autoplayTimeout:5000,
			autoplayHoverPause:false,
		    loop:true,
		    margin:10,
		    nav:true,
		    navText:["<span class='glyphicon glyphicon-chevron-left'></span>","<span class='glyphicon glyphicon-chevron-right'></span>"],
		    responsive:{
		        0:{
		            items:1
		        },
		        600:{
		            items:3
		        },
		        1000:{
		            items:5
		        }
		    }
		})

$(document).ready(function() {
  var navpos = $('#mainnav').offset();
  console.log(navpos.top);
    $(window).bind('scroll', function() {
      if ($(window).scrollTop() > navpos.top) {
        $('#mainnav').addClass('fixed');
       }
       else {
         $('#mainnav').removeClass('fixed');
       }
    });
});
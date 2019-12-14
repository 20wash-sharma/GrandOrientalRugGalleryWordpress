(function ($) {
	'use strict';

	/*===================================*
	01. LOADING JS
	/*===================================*/
	$(window).on('load', function () {
		var preLoder = $(".preloader");
		preLoder.delay(700).fadeOut(500);
	});

	/*===================================*
	02. SMOOTH SCROLLING JS
	*===================================*/
	// Select all links with hashes
	var headerHeight = $(".header_wrap").height() - 10;
	$('a.page-scroll').on('click', function (event) {
		// On-page links
		if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {
			// Figure out element to scroll to
			var target = $(this.hash),
				speed = $(this).data("speed") || 800;
			target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');

			// Does a scroll target exist?
			if (target.length) {
				// Only prevent default if animation is actually gonna happen
				event.preventDefault();
				$('html, body').animate({
					scrollTop: target.offset().top - headerHeight
				}, speed);
			}
		}
	});

	/*===================================*
	03. MENU JS
	*===================================*/
	//Main navigation scroll spy for shadow
	$(window).on('scroll', function () {
		var scroll = $(window).scrollTop();

		if (scroll >= 50) {
			$('header').addClass('nav-fixed');
		} else {
			$('header').removeClass('nav-fixed');
		}

	});

	//Show Hide dropdown-menu Main navigation 
	$(document).ready(function () {
		$('.dropdown-menu a.dropdown-toggler').on('click', function (e) {
			var $el = $(this);
			var $parent = $(this).offsetParent(".dropdown-menu");
			if (!$(this).next().hasClass('show')) {
				$(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
			}
			var $subMenu = $(this).next(".dropdown-menu");
			$subMenu.toggleClass('show');

			$(this).parent("li").toggleClass('show');

			$(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
				$('.dropdown-menu .show').removeClass("show");
			});

			return false;
		});
	});

	//Hide Navbar Dropdown After Click On Links
	var navBar = $(".header_wrap");
	var navbarLinks = navBar.find(".navbar-collapse ul li a.page-scroll");

	$.each(navbarLinks, function (i, val) {

		var navbarLink = $(this);

		navbarLink.on('click', function () {
			navBar.find(".navbar-collapse").collapse('hide');
			$("header").removeClass("active");
		});

	});

	//Main navigation Active Class Add Remove
	$('.navbar-toggler').on('click', function () {
		$("header").toggleClass("active");
		if ($('.search-overlay').hasClass('open')) {
			$(".search-overlay").removeClass('open');
			$(".search_trigger").removeClass('open');
		}
	});

	/*===================================*
	04. SEARCH JS
	*===================================*/

	$(".close-search").on("click", function () {
		$('.search-overlay').removeClass("open");
		$('.search_overlay').remove();
	});

	var removeClass = true;
	$(".search_trigger").click(function () {
		$(".search-overlay").after('<div class="search_overlay"></div>');
		$(".search-overlay").toggleClass('open');
		removeClass = false;
		if ($('.navbar-collapse').hasClass('show')) {
			$(".navbar-collapse").removeClass('show');
			$(".navbar-toggler").addClass('collapsed');
			$(".navbar-toggler").attr("aria-expanded", false);
		}
	});
	$(".search-overlay").click(function () {
		removeClass = false;
	});
	$("html").click(function () {
		if (removeClass) {
			$("body").removeClass('open');
			$(".search-overlay").removeClass('open');
			$('.search_overlay').remove();
		}
		removeClass = true;
	});

	/*===================================*
	05. SLIDER JS
	*===================================*/
	$(window).on("load", function () {
		$('.portfolio_slider,.carousel_slide1').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				dots: $carousel.data("dots"),
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				items: 1,
				autoHeight: $carousel.data("autoheight"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplay: $carousel.data("autoplay"),
				animateIn: $carousel.data("animate-in"),
				animateOut: $carousel.data("animate-out"),
				autoplayTimeout: $carousel.data("autoplay-timeout"),
			});
		});

		var owl = $('.owl-thumbs-slider');
		owl.owlCarousel({
			loop: false,
			items: 4,
			dots: false,
			margin: 10,
			nav: true,
			thumbs: true,
			navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
		});

		$('.carousel_slide2').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				dots: $carousel.data("dots"),
				autoHeight: true,
				center: $carousel.data("center"),
				rewind: $carousel.data("rewind"),
				autoplay: $carousel.data("autoplay"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplayTimeout: $carousel.data("autoplay-timeout"),
				responsive: {
					0: {
						items: 1,
					},
					380: {
						items: 1,
					},
					576: {
						items: 2,
					},
					1000: {
						items: 2,
					},
					1199: {
						items: 2
					}
				}
			});
		});

		$('.carousel_slide3').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				dots: $carousel.data("dots"),
				autoHeight: true,
				center: $carousel.data("center"),
				rewind: $carousel.data("rewind"),
				autoplay: $carousel.data("autoplay"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplayTimeout: $carousel.data("autoplay-timeout"),
				responsive: {
					0: {
						items: 1,
					},
					380: {
						items: 1,
					},
					576: {
						items: 2,
					},
					1000: {
						items: 3,
					},
					1199: {
						items: 3
					}
				}
			});
		});

		$('.carousel_slide4').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				dots: $carousel.data("dots"),
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				autoHeight: true,
				center: $carousel.data("center"),
				rewind: $carousel.data("rewind"),
				autoplay: $carousel.data("autoplay"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplayTimeout: $carousel.data("autoplay-timeout"),
				responsive: {
					0: {
						items: 1,
					},
					380: {
						items: 1,
					},
					576: {
						items: 2,
					},
					1000: {
						items: 3,
					},
					1199: {
						items: 4
					}
				}
			});
		});

		$('.carousel_slide5').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				dots: $carousel.data("dots"),
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				autoHeight: true,
				center: $carousel.data("center"),
				rewind: $carousel.data("rewind"),
				autoplay: $carousel.data("autoplay"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplayTimeout: $carousel.data("autoplay-timeout"),
				responsive: {
					0: {
						items: 1,
					},
					380: {
						items: 1,
					},
					576: {
						items: 3,
					},
					1000: {
						items: 4,
					},
					1199: {
						items: 5
					}
				}
			});
		});

		$('.cl_logo_slider').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				dots: $carousel.data("dots"),
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				autoHeight: true,
				rewind: $carousel.data("rewind"),
				autoplay: $carousel.data("autoplay"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplayTimeout: $carousel.data("autoplay-timeout"),
				responsive: {
					0: {
						items: 2,
					},
					380: {
						items: 3,
					},
					600: {
						items: 4,
					},
					1000: {
						items: 5,
					},
					1199: {
						items: 6
					}
				}
			});
		});

		$('.cl_logo_slider5').each(function () {
			var $carousel = $(this);
			$carousel.owlCarousel({
				dots: $carousel.data("dots"),
				loop: $carousel.data("loop"),
				margin: $carousel.data("margin"),
				autoHeight: true,
				rewind: $carousel.data("rewind"),
				autoplay: $carousel.data("autoplay"),
				nav: $carousel.data("nav"),
				navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
				autoplayTimeout: $carousel.data("autoplay-timeout"),
				responsive: {
					0: {
						items: 2,
					},
					380: {
						items: 2,
					},
					600: {
						items: 3,
					},
					1000: {
						items: 4,
					},
					1199: {
						items: 5
					}
				}
			});
		});
	});

	$('.carousel_slider').each(function () {
		var $carousel = $(this);
		$carousel.owlCarousel({
			dots: $carousel.data("dots"),
			loop: $carousel.data("loop"),
			items: $carousel.data("items"),
			margin: $carousel.data("margin"),
			mouseDrag: $carousel.data("mouse-drag"),
			touchDrag: $carousel.data("touch-drag"),
			autoHeight: $carousel.data("autoheight"),
			center: $carousel.data("center"),
			nav: $carousel.data("nav"),
			rewind: $carousel.data("rewind"),
			navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
			autoplay: $carousel.data("autoplay"),
			animateIn: $carousel.data("animate-in"),
			animateOut: $carousel.data("animate-out"),
			autoplayTimeout: $carousel.data("autoplay-timeout"),
			smartSpeed: $carousel.data("smart-speed"),
			responsive: $carousel.data("responsive")
		});
	});

	/*===================================*
	06. gallery JS
	*===================================*/
	var updateMasonry = function () {
		$('.tab-pane.active').masonry({
			itemSelector: '.portfolio-item',
		})
	}

	$('a[data-toggle="tab"]').on('shown.bs.tab', updateMasonry);
	$(window).on('resize load', updateMasonry);

	var updateMasonrysingle = function () {
		$('.single-gallery').masonry({
			itemSelector: '.portfolio-item',
		})
	}
	$(window).on('resize load', updateMasonrysingle);

	$(window).on("load", function () {
		var $blog_selectors = $('.blog_container');
		$blog_selectors.ready(function () {
			$blog_selectors.isotope({
				layoutMode: 'masonry',
				itemSelector: '.blog-item',
				percentPosition: true,
				masonry: {
					columnWidth: '.grid-sizer'
				}
			});
		});

		$(window).resize(function () {
			setTimeout(function () {
				$blog_selectors.find('.portfolio-item').removeClass('animation').removeClass('animated'); // avoid problem to filter after window resize
				$blog_selectors.isotope('layout');
			}, 300);
		});
	});

	$(window).on("load", function () {
		var $shop_selectors = $('.shop_container');
		$shop_selectors.ready(function () {
			$shop_selectors.isotope({
				layoutMode: 'fitRows',
				itemSelector: '.shop-item',
				percentPosition: true,
				masonry: {
					columnWidth: '.grid-sizer'
				}
			});
		});

		$(window).resize(function () {
			setTimeout(function () {
				$shop_selectors.find('.shop-item').removeClass('animation').removeClass('animated'); // avoid problem to filter after window resize
				$shop_selectors.isotope('layout');
			}, 300);
		});
	});


	/*===================================*
	09. SCROLLUP JS
	*===================================*/
	$(window).scroll(function () {
		if ($(this).scrollTop() > 150) {
			$('.scrollup').fadeIn();
		} else {
			$('.scrollup').fadeOut();
		}
	});

	$(".scrollup").on('click', function (e) {
		e.preventDefault();
		$('html, body').animate({
			scrollTop: 0
		}, 600);
		return false;
	});


	/*===================================*
	10. POPUP JS
	*===================================*/
	$('.content-popup').magnificPopup({
		type: 'inline',
		preloader: true,
		mainClass: 'mfp-zoom'
	});
	//gutenburg default gallery popup
	$('.wp-block-gallery').each(function () { // the containers for all your galleries
		$(this).magnificPopup({
			delegate: 'a', // the selector for gallery item
			type: 'image',
			gallery: {
				enabled: true
			},
			zoom: {
				enabled: true,
				duration: 300, // don't foget to change the duration also in CSS
				opener: function (element) {
					return element.find('img');
				}
			}
		});
	});

	$('.catalog_img').each(function () { // the containers for all your galleries
		$(this).magnificPopup({
			delegate: 'a.catalog-zoom', // the selector for gallery item
			type: 'image',
			gallery: {
				enabled: true
			},
			zoom: {
				enabled: true,
				duration: 300, // don't foget to change the duration also in CSS
				opener: function (element) {
					return element.find('img');
				}
			}
		});
	});

	$('.image_gallery').each(function () { // the containers for all your galleries
		$(this).magnificPopup({
			delegate: 'a', // the selector for gallery item
			type: 'image',
			gallery: {
				enabled: true
			},
			zoom: {
				enabled: true,
				duration: 300, // don't foget to change the duration also in CSS
				opener: function (element) {
					return element.find('img');
				}
			}
		});
	});

	$(document).ready(function () {
		$('.popup-ajax').magnificPopup({
			type: 'ajax',
		});
	});


	$('.portfolio_item .image_popup').on('click', function () {
		$(this).find('.link_container').magnificPopup('open');
	});
	$('.link_container').each(function () {
		$(this).magnificPopup({
			delegate: '.image_popup',
			type: 'image',
			gallery: {
				enabled: true
			}
		});
	});

	/*==============================================================
    11. VIDEO JS
    ==============================================================*/
	$(document).ready(function () {
		$('.video_popup, .iframe_popup').magnificPopup({
			type: 'iframe',
			mainClass: 'mfp-fade',
			removalDelay: 160,
			preloader: false,
			fixedContentPos: false
		});
	});
	/*==============================================================
    12. FIT VIDEO JS
    ==============================================================*/
	$(".fit-videos").fitVids();

	/*===================================*
	13. ANIMATION JS
	*===================================*/
	$(function () {

		function ckScrollInit(items, trigger) {
			items.each(function () {
				var ckElement = $(this),
					AnimationClass = ckElement.attr('data-animation'),
					AnimationDelay = ckElement.attr('data-animation-delay');

				ckElement.css({
					'-webkit-animation-delay': AnimationDelay,
					'-moz-animation-delay': AnimationDelay,
					'animation-delay': AnimationDelay,
					opacity: 0
				});

				var ckTrigger = (trigger) ? trigger : ckElement;

				ckTrigger.waypoint(function () {
					ckElement.addClass("animated").css("opacity", "1");
					ckElement.addClass('animated').addClass(AnimationClass);
				}, {
					triggerOnce: true,
					offset: '90%',
				});
			});
		}

		ckScrollInit($('.animation'));
		ckScrollInit($('.staggered-animation'), $('.staggered-animation-wrap'));

	});

	/*===================================*
	14. BACKGROUND IMAGE JS
	*===================================*/
	/*data image src*/
	$(".background_bg").each(function () {
		var attr = $(this).attr('data-img-src');
		if (typeof attr !== typeof undefined && attr !== false) {
			$(this).css('background', 'url(' + attr + ') center center/cover');
		}
	});

	/*===================================*
	15.  TAB SLIDER JS
	*===================================*/
	var windowWidth = 0;
	var windowHeight = 0;

	$.martanianConfigureSlider = function () {

		$('.content_slider').each(function () {

			var slider = $(this).children('.slider_center');
			var descriptions = slider.children('.content_box').children('.content_wrap').children('.descriptions_wrap');
			var activeInsurance = slider.children('.content_box').children('.content_wrap').children('.tabs').children('li.active').data('key');

			if (typeof activeInsurance == 'undefined' || activeInsurance === false) {

				activeInsurance = slider.children('.content_box').children('.content_wrap').children('.tabs').children('li').first().data('key');
				slider.children('.content_box').children('.content_wrap').children('.tabs').children('li').first().addClass('active');
			}

			descriptions.children('.description[data-key="' + activeInsurance + '"]').show();
			descriptions.css({ 'height': descriptions.children('.description[data-key="' + activeInsurance + '"]').height() });

			slider.children('.slider_images').children('.image[data-key="' + activeInsurance + '"]').show();

		});

	};
	$('.content_slider .tabs li').click(function () {

		if (!$(this).hasClass('active')) {

			var newInsuranceKey = $(this).data('key');
			var oldInsuranceKey = $(this).siblings('.active').data('key');

			var slider = $(this).parent().parent().parent().parent();
			var newHeight = 0;

			var oldDescription = slider.children('.content_box').children('.content_wrap').children('.descriptions_wrap').children('.description[data-key="' + oldInsuranceKey + '"]');
			var newDescription = slider.children('.content_box').children('.content_wrap').children('.descriptions_wrap').children('.description[data-key="' + newInsuranceKey + '"]');

			$('.content_slider .tabs li').removeClass('active');
			$(this).addClass('active');

			oldDescription.addClass('animated speed fadeOut');

			slider.children('.slider_images').children('.image[data-key="' + oldInsuranceKey + '"]').fadeOut(350);
			slider.children('.slider_images').children('.image[data-key="' + newInsuranceKey + '"]').fadeIn(350);

			setTimeout(function () {

				newDescription.addClass('animated speed fadeIn').show();
				newHeight = newDescription.height();

				slider.children('.content_box').children('.content_wrap').children('.descriptions_wrap').animate({ 'height': newHeight }, 250);

				setTimeout(function () {

					oldDescription.removeClass('animated speed fadeOut').hide();
					newDescription.removeClass('animated speed fadeIn');

				}, 450);

			}, 350);
		}

	});

	$.martanianConfigureSlider();

	/*===================================*
	16. PROGRESS BAR JS
	*===================================*/
	$(document).ready(function () {
		$('.progress .progress-bar').css("width",
			function () {
				return $(this).attr("aria-valuenow") + "%";
			}
		)

		$('.count_pr').css("left",
			function () {
				return $(this).attr("data-percent") + "%";
			}
		)
	});

	/*===================================*
20. ZOOM IMAGE JS
*===================================*/
	var image = $('#product_img');
	var zoomConfig = {};
	var zoomActive = false;

	image.on('mousemove', function () {
		zoomActive = !zoomActive;
		if (zoomActive) {
			if ($(window).width() >= 768) {
				var firstImgHeight = $("#product_img").height();
				var divWidth = $(".pr_detail").width();
				$("#product_img").elevateZoom({
					cursor: "crosshair",
					easing: true,
					scrollZoom: true,
					gallery: 'pr_item_gallery',
					zoomWindowOffetx: 30,
					zoomWindowWidth: divWidth,
					zoomWindowHeight: firstImgHeight,
					borderSize: 0,
					galleryActiveClass: "active"
				});
			}
			else {
				$("#product_img").elevateZoom({
					cursor: "crosshair",
					easing: true,
					gallery: 'pr_item_gallery',
					zoomType: "inner",
					galleryActiveClass: "active"
				});
			}
		}
		else {
			$.removeData(image, 'elevateZoom');//remove zoom instance from image
			$('.zoomContainer').remove();// remove zoom container from DOM
		}
	});

	$.magnificPopup.defaults.callbacks = {
		open: function () {
			$('body').addClass('zoom_image');
		},
		close: function () {
			// Wait until overflow:hidden has been removed from the html tag
			setTimeout(function () {
				$('body').removeClass('zoom_image');
				$('.zoomContainer').remove();
			}, 100)
		}
	};


	/*===================================*
	24. TOOLTIP JS
	*===================================*/
	$(function () {
		$('[data-toggle="tooltip"]').tooltip({
			trigger: 'hover',
		})
	})
	$(function () {
		$('[data-toggle="popover"]').popover()
	})

	/*===================================*
	25. PARALLAX JS
	*===================================*/
	$(window).on('load', function () {
		$('.parallax_bg').parallaxBackground();
	});

	/*===================================*
	26. ONLOAD POPUP JS
	*===================================*/
	$(window).on('load', function () {
		setTimeout(function () {
			$("#onload-popup").modal('show', {}, 500)
		}, 3000);
	});

	/*===================================*
	27. DATEPICKER JS
	*===================================*/
	$(function () {
		$('.datepicker').datepicker({
			autoHide: true,
			format: 'mm/dd/yyyy',
			zIndex: 2048,
		});
	});

	/*===================================*
	28. TIMEPICKER JS
	*===================================*/
	if ($(".timepicker").length > 0) {
		$('.timepicker').each(function () {
			var $timepicker = $(this);
			$timepicker.mdtimepicker({
				readOnly: false,
				theme: $timepicker.data("theme"),
			});
		});
	}

	/*===================================*
	29. TAB SLIDE JS
	*===================================*/
	if ($(".sliding_tab li a").length > 0) {
		if ($(window).width() >= 768) {
			$(".sliding_tab").append('<li class="tab_bg"></li>')
			$('.sliding_tab li:first-child a').addClass('active_hover');
			var a = $(".sliding_tab li a.active_hover").position().left,
				i = $(".sliding_tab li a.active_hover").css("width"),
				k = $(".sliding_tab li a.active_hover").css("height");
			$(".tab_bg").css({
				left: a,
				width: i,
				height: k
			})
			$(".sliding_tab li a").on("click", function () {
				$(".sliding_tab li a.active_hover").removeClass("active_hover"),
					$(this).closest('.sliding_tab li a').addClass("active_hover")
				var t = $(".sliding_tab li a.active_hover").position().left,
					w = $(".sliding_tab li a.active_hover").css("width"),
					k = $(".sliding_tab li a.active_hover").css("height");
				$(".tab_bg").css({
					left: t,
					width: w,
					height: k
				})
			})
		}
	}

	/*===================================*
	30.Current Date JS
	*===================================*/
	if ($("#current_time").length) {
		var date = new Date();
		var day = new Array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
		var month = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
		var datevalue = day[date.getDay()] + ', ' + month[date.getMonth()] + ' ' + date.getDate() + ', ' + date.getFullYear();
		$('#current_time').html(datevalue);
	}

	/*===================================*
	31.List Grid JS
	*===================================*/
	$('.shorting_icon').on('click', function (e) {
		if ($(this).hasClass('grid')) {
			$('.shop_container').removeClass('list').addClass('grid');
			$(this).addClass('active').siblings().removeClass('active');
		}
		else if ($(this).hasClass('list')) {
			$('.shop_container').removeClass('grid').addClass('list');
			$(this).addClass('active').siblings().removeClass('active');
		}
	});

	/*===================================*
	32. Select dropdowns
	*===================================*/
	if ($('select').length) {
		// Traverse through all dropdowns
		$.each($('select'), function (i, val) {
			var $el = $(val);

			if (!$el.val()) {
				$el.addClass('not_chosen');
			}

			$el.on('change', function () {
				if (!$el.val())
					$el.addClass('not_chosen');
				else
					$el.removeClass('not_chosen');
			});

		});
	}

	/*Demo js*/
	// $( window ).on( "load", function() {
	// 	document.onkeydown = function(e) {
	// 		if(e.keyCode == 123) {
	// 		 return false;
	// 		}
	// 		if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
	// 		 return false;
	// 		}
	// 		if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
	// 		 return false;
	// 		}
	// 		if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
	// 		 return false;
	// 		}

	// 		if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)){
	// 		 return false;
	// 		}      
	// 	 }

	// 	$("html").on("contextmenu",function(){
	// 		return false;
	// 	});
	// });



})(jQuery);
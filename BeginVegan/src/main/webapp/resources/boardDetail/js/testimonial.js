$(document).on('ready', function() {

    $(".testimonial-carousel").owlCarousel({

        navigation: true, // Show next and prev buttons
        slideSpeed: 3000,
        paginationSpeed: 400,
        singleItem: true,
        pagination: true,
        autoPlay: true,
        navigationText: ["<i class=' icon-back-7'></i>", "<i class=' icon-next-10'></i>"],
        addClassActive: true
        

        // "singleItem:true" is a shortcut for:
        // items : 1, 
        // itemsDesktop : false,
        // itemsDesktopSmall : false,
        // itemsTablet: false,
        // itemsMobile : false

    });

});
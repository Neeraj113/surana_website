$(document).ready(function() {
    $(".scroll-me .sections,.see-list").bind("click", function(a) {
        var b = $(this);
        var temp = $(b.attr("href").replace('/',''));
        if(temp.length){
        	a.preventDefault();
	        $("html, body").stop().animate({
	            scrollTop: temp.offset().top + 'px'
	        }, 1200, "easeInOutExpo");
        }
    }), $("#clients").length && $("#clients").owlCarousel({
        navigation: !1,
        slideSpeed: 5e3,
        paginationSpeed: 2e3,
        loop: !0,
        autoPlay: !0,
        stopOnHover: !0,
        rewindSpeed: 1e3,
        autoHeight: !1
    })
    // $(".carousel-wrapper").length && $(".carousel-wrapper").owlCarousel({
    //     items: 1,
    //     lazyLoad: !0,
    //     navigation: !1,
    //     autoPlay: !0,
    //     stopOnHover: !0,
    //     slideSpeed: 5e3,
    //     rewindSpeed: 2e3,
    //     paginationSpeed: 2e3,
    //     afterInit: function() {
    //         $(".owl-wrapper-outer").append('<div class="surana-logo"><img src="/assets/img/logo.png"></div>')
    //     }
    // })
});
$(function() {
    $("#name").focus(function() {
        $("#success").html("");
    });
    $("#submit").click(function(){
        var t = $("input#name").val() || "Test User",
            a = $("input#email").val() || "test@test.com",
            r = $("input#phone").val() || "9999999999",
            c = $("textarea#message").val() || "Test User",
            n = t,
            i = $("#g-recaptcha-response").val();
        $.ajax({
            url: "contact",
            type: "POST",
            data: {
                name: t,
                phone: r,
                email: a,
                message: c,
                captcha: i
            },
            cache: !1,
            success: function(e, s, t) {
                e.success ? ($("#success").html("<div class='alert alert-success'>"), $("#success > .alert-success").html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;").append("</button>"), $("#success > .alert-success").append("<strong>Our Team will get back to you as soon as possible. </strong>"), $("#success > .alert-success").append("</div>"), $("#contactForm").trigger("reset")) : ($("#success").html("<div class='alert alert-danger'>"), $("#success > .alert-danger").html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;").append("</button>"), $("#success > .alert-danger").append("<strong>Sorry, the captcha is wrong. Please try again!"), $("#success > .alert-danger").append("</div>"), $("#contactForm").trigger("reset"))
            },
            error: function() {
                $("#success").html("<div class='alert alert-danger'>"), $("#success > .alert-danger").html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;").append("</button>"), $("#success > .alert-danger").append("<strong>Sorry " + n + ", it seems that my mail server is not responding. Please try again later!"), $("#success > .alert-danger").append("</div>"), $("#contactForm").trigger("reset")
            }
        });
        return false;
    });
});

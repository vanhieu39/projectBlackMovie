

$(document).ready(function () {
    $(".movie-manage-btn").click(function () {
        $(".movie-manage-p").removeClass("hidden-class");
    });
});

$(document).ready(function () {
    $(".user-manage-btn").click(function () {
        $(".user-manage-p").removeClass("hidden-class");
    });
});

$(document).ready(function () {
    $(".adv-manage-btn").click(function () {
        $(".adv-manage-p").removeClass("hidden-class");
    });
});

$(document).ready(function () {
    $(".other-manage-btn").click(function () {
        $(".other-manage-p").removeClass("hidden-class");
    });
});

$(document).ready(function () {
    $(".wrap-btn-01").on({
        click: function () {
            $(".item-aside-phim-le").show(500),
                $(".item-aside-phim-bo").hide(500),
                $(".item-aside-phim-le").removeClass("hide"),
                $(".item-aside-phim-bo").addClass("hide");
            $(".wrap-btn-02").removeClass("active"),
                $(".wrap-btn-01").addClass("active");
        }
    });

    $(".wrap-btn-02").on({
        click: function () {
            $(".item-aside-phim-bo").show(500), $(".item-aside-phim-le").hide(500);
            $(".item-aside-phim-bo").removeClass("hide"),
                $(".item-aside-phim-le").addClass("hide");
            $(".wrap-btn-01").removeClass("active"),
                $(".wrap-btn-02").addClass("active");
        }
    });
});

$(document).ready(function () {
	$('.sidebar-list-item').click(function() {
	    if($(this).hasClass('active'))
	    {
	        $(this).removeClass('active');
	    }
	    else
	    {
	       $(this).addClass('active');
	    }
	  });
});

//$(document).ready(function () {
//    $(".save").click(function () {
//        $("h3").removeClass("hidden");
//    });
//});


$(document).ready(function(){
	$(".button-series-movie").click(function(){
		$("this").css("background-color", "yellow");
	});
});
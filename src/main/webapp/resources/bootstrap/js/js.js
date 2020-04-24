function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

function search() {
  var x = document.getElementById("search").value;
  if (x == null) {
    alert("Vui lòng nhập từ khóa bạn muốn tìm!");
  }
}

$(document).ready(function () {
  $('#aaa').slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 5,
    slidesToScroll: 1,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:false,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 4,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 992,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        }
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 300,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
});

$(document).ready(function () {
  $(".wrap-btn-01").on({
    click: function () {
      $(".item-aside-phim-le").show(500),
        $(".item-aside-phim-bo").hide(500),
        $(".item-aside-phim-le").removeClass("hide"),
        $(".item-aside-phim-bo").addClass("hide")
      $(".wrap-btn-02").removeClass("active"),
        $(".wrap-btn-01").addClass("active")
    }
  });

  $(".wrap-btn-02").on({
    click: function () {
      $(".item-aside-phim-bo").show(500),
        $(".item-aside-phim-le").hide(500);
      $(".item-aside-phim-bo").removeClass("hide"),
        $(".item-aside-phim-le").addClass("hide")
      $(".wrap-btn-01").removeClass("active"),
        $(".wrap-btn-02").addClass("active")
    }
  });
});


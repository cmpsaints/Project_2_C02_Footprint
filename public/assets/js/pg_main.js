$(document).ready(function() {
  // ^^^^^^^^^^ when page is loaded, remove the loading animation ^^^^^^^^^^

  $(".loading").remove();

  /* var $loadingRemove = $(".loading").remove;
	
	setTimeout($loadingRemove, 5000); */

  var $loadingRemove = function() {
    $(".loading").remove;
  };

  setTimeout($loadingRemove, 5000);

  // customizing vertical scrollbars
  // =======================================================

  // scrollbar (positioned on left of panel) for side menu panel .........

  $("#scrollbar-left").css({
    height:
      $(window).height() -
      $("#navigation-bar").height() -
      $("#profile-block").height() -
      $("#profile-block-bottom-divider").height() -
      80 +
      "px"
  });

  $(window).resize(function() {
    $("#scrollbar-left").css({
      height:
        $(window).height() -
        $("#navigation-bar").height() -
        $("#profile-block").height() -
        $("#profile-block-bottom-divider").height() -
        80 +
        "px"
    });
  });

  // scrollbar (positioned on right of content area) for main content area .........

  $("#scrollbar-right").css({
    // "margin-top" here because scrollbar originally flows behind it
    "margin-top": $("#navigation-bar").height() + "px",
    height: $(window).height() - $("#navigation-bar").height() + "px"
  });

  $(window).resize(function() {
    $("#scrollbar-right").css({
      // "margin-top" here because scrollbar originally flows behind it
      "margin-top": $("#navigation-bar").height() + "px",
      height: $(window).height() - $("#navigation-bar").height() + "px"
    });
  });

  /* $("#scrollbar-right").css({
		
		"margin-left": $("side-menu").width() + "px",
		"width": ( $(window).width() - $("side-menu").width() ) + "px"
	});
	
	$(window).resize(function() {
		$("#scrollbar-right").css({
			
			"margin-left": $("side-menu").width() + "px",
			"width": ( $(window).width() - $("side-menu").width() ) + "px"
		});
	}); */

  // $(".dynamic-height").each(function(){  //loop thru each element with .dynamic-height class
  // $(this).css({
  // "margin-top" : $(this).outerHeight() - 10 + "px"
  //adjust css rule for "margin-top" to equal `height of .dynamic-height element - 10px` then add measurement unit "px" for valid CSS
  // });
  // });

  // maintaining same left margin for #side-menu ul.nav li WHEN forms are collapsed
  // =====================================================================================

  /* var panelViewHeight = $(window).height() 
							- $("#navigation-bar").height() 
							- $("#profile-block").height() 
							- $("#profile-block-bottom-divider").height() 
							- 80;
					
	if ( $("#side-menu ul.nav").outerHeight(true) > panelViewHeight ) {
		
		$("#side-menu ul.nav li").css({
			"margin-left": "-9px"
		});
	}else {
		
		$("#side-menu ul.nav li").css({
			"margin-left": "-4px"
		});
	}
	
	
	$("#side-menu ul.nav a").on("click", function() {
		
		panelViewHeight = $(window).height() 
							- $("#navigation-bar").height() 
							- $("#profile-block").height() 
							- $("#profile-block-bottom-divider").height() 
							- 80;
					
		if ( $("#side-menu ul.nav").outerHeight(true) > panelViewHeight ) {
			
			$("#side-menu ul.nav li").css({
				"margin-left": "-9px"
			});
		}else {
			
			$("#side-menu ul.nav li").css({
				"margin-left": "-4px"
			});
		}
	}); */

  // rotational switch for side panel forms
  // =======================================================

  var collapsed = {
    beverages: -1,
    fruitsAndVeggies: -1,
    milks: -1,
    misc: -1,
    proteins: -1,
    starches: -1,
    date: -1
  };

  $("#side-menu ul.nav a[href='#beverages-listform']").on("click", function() {
    if (collapsed.beverages === -1) {
      $(
        "#side-menu ul.nav a[href='#beverages-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(-90deg)",
        "-moz-transform": "rotate(-90deg)",
        "-ms-transform": "rotate(-90deg)",
        "-o-transform": "rotate(-90deg)",
        transform: "rotate(-90deg)"
      });
    } else {
      $(
        "#side-menu ul.nav a[href='#beverages-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(0deg)",
        "-moz-transform": "rotate(0deg)",
        "-ms-transform": "rotate(0deg)",
        "-o-transform": "rotate(0deg)",
        transform: "rotate(0deg)"
      });
    }

    collapsed.beverages *= -1;
  });

  $("#side-menu ul.nav a[href='#fruitsAndVeggies-listform']").on(
    "click",
    function() {
      if (collapsed.fruitsAndVeggies === -1) {
        $(
          "#side-menu ul.nav a[href='#fruitsAndVeggies-listform'] .glyphicon.pull-right"
        ).css({
          "-webkit-transform": "rotate(-90deg)",
          "-moz-transform": "rotate(-90deg)",
          "-ms-transform": "rotate(-90deg)",
          "-o-transform": "rotate(-90deg)",
          transform: "rotate(-90deg)"
        });
      } else {
        $(
          "#side-menu ul.nav a[href='#fruitsAndVeggies-listform'] .glyphicon.pull-right"
        ).css({
          "-webkit-transform": "rotate(0deg)",
          "-moz-transform": "rotate(0deg)",
          "-ms-transform": "rotate(0deg)",
          "-o-transform": "rotate(0deg)",
          transform: "rotate(0deg)"
        });
      }

      collapsed.fruitsAndVeggies *= -1;
    }
  );

  $("#side-menu ul.nav a[href='#milks-listform']").on("click", function() {
    if (collapsed.milks === -1) {
      $(
        "#side-menu ul.nav a[href='#milks-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(-90deg)",
        "-moz-transform": "rotate(-90deg)",
        "-ms-transform": "rotate(-90deg)",
        "-o-transform": "rotate(-90deg)",
        transform: "rotate(-90deg)"
      });
    } else {
      $(
        "#side-menu ul.nav a[href='#milks-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(0deg)",
        "-moz-transform": "rotate(0deg)",
        "-ms-transform": "rotate(0deg)",
        "-o-transform": "rotate(0deg)",
        transform: "rotate(0deg)"
      });
    }

    collapsed.milks *= -1;
  });

  $("#side-menu ul.nav a[href='#misc-listform']").on("click", function() {
    if (collapsed.misc === -1) {
      $("#side-menu ul.nav a[href='#misc-listform'] .glyphicon.pull-right").css(
        {
          "-webkit-transform": "rotate(-90deg)",
          "-moz-transform": "rotate(-90deg)",
          "-ms-transform": "rotate(-90deg)",
          "-o-transform": "rotate(-90deg)",
          transform: "rotate(-90deg)"
        }
      );
    } else {
      $("#side-menu ul.nav a[href='#misc-listform'] .glyphicon.pull-right").css(
        {
          "-webkit-transform": "rotate(0deg)",
          "-moz-transform": "rotate(0deg)",
          "-ms-transform": "rotate(0deg)",
          "-o-transform": "rotate(0deg)",
          transform: "rotate(0deg)"
        }
      );
    }

    collapsed.misc *= -1;
  });

  $("#side-menu ul.nav a[href='#proteins-listform']").on("click", function() {
    if (collapsed.proteins === -1) {
      $(
        "#side-menu ul.nav a[href='#proteins-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(-90deg)",
        "-moz-transform": "rotate(-90deg)",
        "-ms-transform": "rotate(-90deg)",
        "-o-transform": "rotate(-90deg)",
        transform: "rotate(-90deg)"
      });
    } else {
      $(
        "#side-menu ul.nav a[href='#proteins-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(0deg)",
        "-moz-transform": "rotate(0deg)",
        "-ms-transform": "rotate(0deg)",
        "-o-transform": "rotate(0deg)",
        transform: "rotate(0deg)"
      });
    }

    collapsed.proteins *= -1;
  });

  $("#side-menu ul.nav a[href='#starches-listform']").on("click", function() {
    if (collapsed.starches === -1) {
      $(
        "#side-menu ul.nav a[href='#starches-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(-90deg)",
        "-moz-transform": "rotate(-90deg)",
        "-ms-transform": "rotate(-90deg)",
        "-o-transform": "rotate(-90deg)",
        transform: "rotate(-90deg)"
      });
    } else {
      $(
        "#side-menu ul.nav a[href='#starches-listform'] .glyphicon.pull-right"
      ).css({
        "-webkit-transform": "rotate(0deg)",
        "-moz-transform": "rotate(0deg)",
        "-ms-transform": "rotate(0deg)",
        "-o-transform": "rotate(0deg)",
        transform: "rotate(0deg)"
      });
    }

    collapsed.starches *= -1;
  });

  $("#side-menu ul.nav a[href='#date-opts']").on("click", function() {
    if (collapsed.date === -1) {
      $("#side-menu ul.nav a[href='#date-opts'] .glyphicon.pull-right").css({
        "-webkit-transform": "rotate(-90deg)",
        "-moz-transform": "rotate(-90deg)",
        "-ms-transform": "rotate(-90deg)",
        "-o-transform": "rotate(-90deg)",
        transform: "rotate(-90deg)"
      });
    } else {
      $("#side-menu ul.nav a[href='#date-opts'] .glyphicon.pull-right").css({
        "-webkit-transform": "rotate(0deg)",
        "-moz-transform": "rotate(0deg)",
        "-ms-transform": "rotate(0deg)",
        "-o-transform": "rotate(0deg)",
        transform: "rotate(0deg)"
      });
    }

    collapsed.date *= -1;
  });

  // tool tip (tool info) for refresh button & food items
  // =======================================================

  $('[data-toggle="tooltip"]').tooltip();

  // charts/graphs in main content area
  // =======================================================

  // overall analysis wheel charts ..........
  $(".round-chart").easyPieChart({
    scaleColor: false,
    lineWidth: 20,
    lineCap: "butt",
    barColor: "#6d5cae",
    trackColor: "#e5e9ec",
    size: 190
  });

  // custom checkboxes (switch boxes) ..........
  var elems, switcheryOpts;

  elems = Array.prototype.slice.call(document.querySelectorAll(".switchery"));

  switcheryOpts = { color: "#1bc98e" };

  elems.forEach(function(el) {
    var switchery = new Switchery(el, switcheryOpts);
  });

  // Categories stacked (layered) chart ..........
  $("#categories-graph .stacked-area").highcharts({
    chart: {
      type: "area"
    },
    title: {
      text: ""
    },
    xAxis: {
      allowDecimals: false,
      labels: {
        formatter: function() {
          return this.value; // clean, unformatted number for year
        }
      }
    },
    yAxis: {
      title: {
        text: "Amount"
      },
      labels: {
        formatter: function() {
          return this.value / 1000 + "k";
        }
      }
    },
    tooltip: {
      pointFormat:
        "{series.name} amount <b>{point.y:,.0f}</b><br/>in {point.x} day"
    },
    plotOptions: {
      area: {
        pointStart: 100,
        marker: {
          enabled: false,
          symbol: "circle",
          radius: 2,
          states: {
            hover: {
              enabled: true
            }
          }
        }
      }
    },
    series: [
      {
        name: "dummy test value",
        data: [
          null,
          null,
          null,
          null,
          null,
          6,
          11,
          32,
          110,
          235,
          369,
          640,
          1005,
          1436,
          2063,
          3057,
          4618,
          6444,
          9822,
          15468,
          16434,
          19126,
          22387,
          24459,
          26056,
          26982,
          27040,
          26233,
          24224,
          22342,
          21662,
          21956,
          22912,
          23999,
          23965,
          22826,
          20579,
          20722,
          19826,
          19605,
          19304,
          18464,
          18708,
          19099,
          19357,
          19237,
          19401,
          19344,
          18586,
          17380,
          16004,
          17287,
          14747,
          13076,
          12555,
          12144,
          11009,
          10950,
          10871,
          10824,
          10577,
          10527,
          10475,
          10421,
          10358,
          10295,
          10104
        ],
        color: "#1bc98e"
      },
      {
        name: "dummy test value",
        data: [
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          5,
          25,
          50,
          120,
          150,
          200,
          426,
          660,
          869,
          1060,
          1605,
          2471,
          3322,
          4238,
          5221,
          6129,
          7089,
          8339,
          9399,
          10538,
          11643,
          13092,
          14478,
          15915,
          17385,
          19055,
          21205,
          23044,
          25393,
          27935,
          30062,
          32049,
          33952,
          34804,
          33431,
          34197,
          34500,
          33500,
          32500,
          34000,
          33000,
          32500,
          32000,
          31000,
          29000,
          27000,
          25000,
          24000,
          23000,
          22000,
          21000,
          20000,
          19000,
          18000,
          18000,
          17000,
          16000
        ],
        color: "#676F84"
      }
    ]
  });

  // daily usage chart ..........
  $("#daily-usage .area-chart").highcharts({
    title: { text: "" },
    tooltip: { pointFormat: "{series.name}: <b>{point.percentage:.1f}%</b>" },
    plotOptions: {
      pie: {
        dataLabels: {
          enabled: true,
          style: { fontWeight: "300" }
        }
      }
    },
    series: [
      {
        type: "pie",
        name: "amount",
        data: [
          ["dummy test value", 10.38],
          ["dummy test value", 26.33],
          ["dummy test value", 11.03],
          ["dummy test value", 40.0],
          ["dummy test value", 4.77],
          ["dummy test value", 3.93]
        ]
      }
    ]
  });
});

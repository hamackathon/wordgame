// jquery Hexagon
// version 1.0
// GPL licenses
// Copyright 2013 irohane.com
$(function(){
	var len = $("* #hexagon").length;
	$("* #hexagon").attr("class", "hexagon");
	$("* #hexagon").prepend("<div class='hexagon-inner-a hexagon'></div><div class='hexagon-inner-b hexagon'></div><div class='hexagon-inner-c hexagon'></div>");
	function Fhexm() {
		var w = $("#hexagon").width();
		var h = w/Math.sqrt(3);

		$("* .hexagon-inner-a").css({
			position: "absolute",
			top: "0",
			left: "0",
			width: w,
			height: h,
			transform: "rotate(60deg)",
			webkitTransform: "rotate(60deg)"
		});
		$("* .hexagon-inner-b").css({
			position: "absolute",
			top: "0",
			left: "0",
			width: w,
			height: h,
			transform: "rotate(-60deg)",
			webkitTransform: "rotate(-60deg)"
		});
		$("* .hexagon-inner-c").css({
			position: "absolute",
			top: "0",
			left: "0",
			width: w,
			height: h
		});
		$("#hexagon").css({
			marginTop: "",
			marginLeft: ""
		});
		var mt = h/2+parseInt($("#hexagon").css("marginTop"));
		var ml = parseInt($("#hexagon").css("marginLeft"));
		$("* #hexagon").css({
			height: h,
			marginTop: mt
		});
		$("* #hexagon").eq(len-1).css({
			marginBottom: mt
		});
		var offsetTop;
		var t = true;
		var l = 1;
		for (var i = 0; i < len; i++) {
			var of = $("* #hexagon").eq(i).offset().top;
			if(offsetTop != of){
				offsetTop = of;
				if(t){
					var left = w/2+ml;
				}
				t = !t;
				l = 1;
			}else{
				var left = 0;
				l++;
			}
			$("* #hexagon").eq(i).css({
				marginLeft: ml+left
			});
		}
	}
	Fhexm();
	$(window).resize(function(){
		Fhexm();
	});
});
define(["jquery", "knockout", "html", "raphael", "scale", "ocarina"], function($, ko, $H, $R, Scale, ocarina){
	var width = 1000,
		height = 700,
		margin = 10,
		leftMargin = 60,
		bottomMargin = 40,
		tones = Scale.getFrequences();
		
	function template(tones){with($H){
		return div(
			div({id:"calcPnl"},table({border:0, cellpadding:3, cellspacing:0},
				tr(
					td("Объем резонатора"),
					td(input({type:"text", "data-bind":"value:Vo"}))
				),
				tr(
					td("Длина горловины"),
					td(input({type:"text", "data-bind":"value:L"}))
				),
				tr(td({colspan:2, align:"center"}, input({type:"button", value:"Calculate", "data-bind":"click:calculate"})))
			)),
			div({id:"graphPanel", style:style({width:width+margin+leftMargin, height:height+margin+bottomMargin, border:"1px solid #ccc;"})})
		);
	}}
	
	function Model(){var _=this;
		_.Vo = ko.observable(1E-3);
		_.L = ko.observable(2E-3);
		_.calculate = function(){
			ocarina.setParameters(_.Vo(), _.L());
			renderGraph(tones);
		}
	}
	
	function yPos(y){return height + margin - y;}
	function xPos(x){return leftMargin + x;}
	
	function renderGraph(tones){
		$("#graphPanel").html("");
		var P = $R("graphPanel");
		
		P.path(["M",xPos(0),yPos(0), "L", xPos(width), yPos(0)]);
		P.text(leftMargin-4, yPos(height-10), "S, Hz").attr({"text-anchor":"end", "font-size":16, "font-weight":"bold"});
		
		P.path(["M",xPos(0),yPos(0), "L", xPos(0), yPos(height)]);
		P.text(xPos(width)-10, yPos(0)+20, "S, mm2").attr({"text-anchor":"end", "font-size":16, "font-weight":"bold"});
		
		var range = Scale.getRange(),
			fRate = height/range.max;

		function drawLevel(name, f, color){
			var y = yPos(f * fRate);
			P.path(["M", xPos(0), y, "L", xPos(width), y]).attr({stroke:color});
			P.text(leftMargin-5, y, name+":"+f).attr({"text-anchor":"end"});
		}
		
		function formatArea(area){
			var precision = 100,
				order = 1000;
			return (Math.round(area*order*precision)/precision)+"E3";
		}
		
		function drawHole(tone, rate){
			var x = xPos(tone.holeArea * rate)
				y = yPos(tone.tone * fRate);
			
			P.path(["M", x, yPos(5), "L", x, yPos(-5)]);
			P.path(["M", x, yPos(0), "L", x, y]).attr({stroke:"#ccc"});
			P.circle(x, y, 5).attr({fill:"#88c", "stroke-width":0});
			
			P.text(x, y-10, formatArea(tone.holeArea)).attr({"text-anchor":"middle"});
			P.text(x, yPos(-20), tone.note).attr({"text-anchor":"middle"});
		}
		
		for(var tone,i=0; tone=tones[i],i<tones.length; i++){
			tone.holeArea = ocarina.getHoleArea(tone.tone);
			drawLevel(tone.note, tone.tone, "#ccc");
		}
		
		var aRate = (width-80)/tones[tones.length-1].holeArea;
		for(var tone,i=0; tone=tones[i],i<tones.length; i++){
			drawHole(tone, aRate);
		}
		
		drawLevel("min", 20, "#f00");
	}
	
	return {
		view: function(panel){
			$(panel).html(template(tones));
			ko.applyBindings(new Model(), $("#calcPnl")[0]);
			renderGraph(tones);
		}
	};
});
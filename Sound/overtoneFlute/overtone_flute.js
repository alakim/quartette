(function($, $H, $R){
	var size = {w:1000, h:200};
	var panelPos;
	var paper;
	
	var noteNames = "A;A#;B;C;C#;D;D#;E;F;F#;G;G#".split(";");
	var aTune = 440;
	var eqScale = [];
	var k = Math.pow(2, 1/12);
	var xRate = 0.5, fOffset=-100;
	
	//console.log(aTune * Math.pow(k, 12));
	for(var i=0; i<12; i++){
		var f = aTune * Math.pow(k, i);
		f = Math.round(f*1)/1;
		eqScale.push({note:noteNames[i], f:f});
	}
	
	function drawScale(){
		function drawOctave(octRate, startNote, octNr, marks){
			for(var i=startNote; i<12; i++){
				var f = eqScale[i].f * octRate, pos = {x:(f - fOffset) * xRate, y:40};
				//console.log(f, pos);
				paper.rect(pos.x, pos.y, 3, 5).attr({fill:"#008", "stroke-width":0});
				if(marks){
					if(marks.indexOf(eqScale[i].note)>=0)
						paper.text(pos.x, pos.y-6, eqScale[i].note+(i<3?octNr-1:octNr)).attr({cursor:"default", title:f+" Гц"});
				}
				else if(eqScale[i].note.indexOf("#")<0)
					paper.text(pos.x, pos.y-6, eqScale[i].note+(i<3?octNr-1:octNr)).attr({cursor:"default", title:f+" Гц"});
				//paper.text(pos.x, pos.y+12, f);
			}
		}
		drawOctave(0.25, 3, "", "C");
		drawOctave(0.5, 0, 1, "C;G");
		drawOctave(1, 0, 2, "C;E;G");
		drawOctave(2, 0, 3, "C;D;E;F;G;A;B");
		drawOctave(4, 0, 4);
	}
	
	function drawOpenOvertones(){
		var yPos = 90, color = "#800";
		var baseF = Math.round(eqScale[3].f/2);
		paper.circle(10, yPos+3, 6).attr({stroke:color});
		for(var i=1; i<9; i++){
			var f = baseF*i;
			//console.log(f);
			paper.rect((f - fOffset)*xRate, yPos, 3, 5).attr({fill:color, "stroke-width":0});
		}
	}
	
	function drawClosedOvertones(){
		var yPos = 120, color = "#080";
		var baseF = Math.round(eqScale[3].f/2) / 2;
		paper.circle(10, yPos+3, 6).attr({stroke:color, fill:color});
		for(var i=1; i<14; i++){
			if(i%2==0) continue;
			var f = baseF*i;
			//console.log(f);
			paper.rect((f - fOffset)*xRate, yPos, 3, 5).attr({fill:color, "stroke-width":0});
		}
	}
	
	function init(pnl){
		panelPos = pnl.offset();
		
		paper = $R(pnl.css({width:size.w, height:size.h})[0]);
		paper.rect(0, 0, size.w, size.h).attr({fill:"#ddd", stroke:"#888"});
		paper.rect(1, 35, size.w-2, size.h-36).attr({fill:"90-#aaa-#ddd", stroke:0});
		
		drawScale();
		drawOpenOvertones();
		drawClosedOvertones();
	}
	
	$.fn.overtoneFlute = function(){
		$(this).each(function(i,el){
			init($(el));
		});
	};
})(jQuery, Html, Raphael);
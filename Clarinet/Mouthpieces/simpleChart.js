var SimpleChart = (function(){
	var scale = 50,
		pointCount = 33,
		pointSize = 10;
		
	var templates = {
		main: function(curves){with(Html){
			return div(table(
				tr(th("Opening (mm)"), th("Length")),
				times(pointCount, function(i){return templates.point(curves, i);})
			), templates.legend(curves));
		}},
		point: function(curves, nr){with(Html){
			var s = nr*stdStep;
			return tr(
				td({align:"right"}, parseInt(s)/100),
				td({style: "border-bottom:1px solid #888"},
					apply(curves, function(curve, idx){
						return templates.curve(s, curve, idx);
					}),
					div({style:"clear:both;"})
				)
			);
		}},
		curve: function(s, curve, idx){with(Html){
			if(!curve.measurements) return null;
			var meas = curve.measurements[0];
			var lng = meas[s]?meas[s.toString()] - meas["base"] + stdWidth : 0;
			var dispLng = Math.round(lng*scale);
			// return div({
			// 		style:style({
			// 			float:"left",
			// 			"margin-left":dispLng,
			// 			width: pointSize, height: pointSize,
			// 			"background-color":templates.color(idx)
			// 		}),
			// 		title: curve.name + ": " + Math.round(lng*100)/100 + " mm"
			// 	}
			// );
			return div({
					style:"background-color:#fff; border-right:"+pointSize+"px solid "+ templates.color(curve)+"; height:"+pointSize+"px; width:"+dispLng+"px",
					title: curve.name + ": " + Math.round(lng*100)/100 + " mm"
				}
			);
		}},
		link: function(lnk){with(Html){
			var url, title;
			if(typeof(lnk)=="string"){
				url = lnk; title = lnk;
			}
			else{
				url = lnk.url; title = lnk.title;
			}
			return div(a({href:url}, title));
		}},
		color: function(curve){return curve.color || "#888"},
		legend: function(curves){with(Html){
			return table({border:1, cellpadding:3, cellspacing:0},
				tr(
					th(),
					th("Model"),
					th("Tip Opening (mm)"),
					th("Facing Length"),
					th()
				),
				apply(curves, function(curve, idx){
					return tr(
						td({width:25, style:"background-color:"+ (curve.measurements?templates.color(curve):"white")}),
						td(curve.name),
						td(curve.standard?curve.standard.tipOpening:null),
						td(curve.standard?curve.standard.facingLength:null),
						td(curve.notes,
							curve.link?div(a({href:curve.link}, curve.link)):null,
							apply(curve.links, templates.link)
						)
					)
				})
			);
			return div(
				apply(curves, function(curve, idx){
					return div({style:"background-color:"+ templates.color(curve)},
						div({style:"background-color:#fff; margin-left:25px; padding-left:5px;"},
							curve.name
							
						)
					);
				})
			);
		}}
	};
	
	return {
		draw: function(pnl, curves){
			$(pnl).html(templates.main(curves));
		},
		
		drawLegend: function(pnl, curves){
			$(pnl).html(templates.legend(curves));
		}
	};
})();
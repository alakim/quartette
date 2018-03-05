var RChart = (function(){
	var pointCount = 35; // количество точек измерения (с запасом)
	
	return {
		draw: function(pnl, data){
			$(pnl).css({
				width: 1400,
				height: 900,
				border: "1px solid #888"
			});
			
			var curves = [],
				rowSettings = [];
			
			$.each(data, function(iMp, mp){
				if(!mp.measurements) return;
				
				var crv = [];
				var meas = mp.measurements[0];
				for(var i=1; i<pointCount; i++){
					var y = i*stdStep;
					var x = meas[y.toString()];
					if(x!=null){
						crv.push([
							(x + stdWidth) - meas.base,
							y
						]);
					}
				}
				curves.push(crv);
				rowSettings.push({name:mp.name, color:mp.color});
			});
		
			$(pnl).rgraph(curves,{
				backColor:null,
				bgOpacity:0,
				viewTable: false,
				viewBackground: true,
				viewLegend: true,
				rowSettings: rowSettings,
				axes:{
					x:{min:0, max:21, step:1, title:"мм"},
					y:{min:0, max:155, step:5, format:function(v){return v/100;}, title:"мм"}
				}
			});
		
		}
	};
})();
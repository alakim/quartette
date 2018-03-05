define([], function(){
	var defaultTuneA = 440;
	
	function round(v){
		var precision = 100;
		return Math.round(v*precision)/precision;
	}
	
	function getRange(tuneA){
		tuneA = tuneA || defaultTuneA;
		var nOct = 2,
			min = tuneA/2;
		
		return {min: min, max: min*Math.pow(2, nOct), nOct: nOct};
	}
	
	return {
		getFrequences: function(tuneA){
			tuneA = tuneA || defaultTuneA;
			var notes = "a,ais,b,c,cis,d,dis,e,f,fis,g,gis".split(","),
				rate = Math.exp(Math.log(2)/12);
				
			var range= getRange(tuneA);
			var res = [], tone = range.min;
			for(var nOct=0; nOct<range.nOct; nOct++){
				for(var note,i=0; note=notes[i],i<notes.length; i++){
					res.push({note:note, tone:round(tone)});
					tone*=rate;
				}
			}
			
			return res;
		},
		getRange: getRange
	};
});
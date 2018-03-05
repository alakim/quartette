define([], function(){
	var Vo = 2E-4,
		L = 5E-3;
		
	return {
		setParameters: function(v, l){
			Vo = v; L = l;
		},
		getHoleArea: function(f){
			// F = (v/(2*Math.PI))*Math.sqrt(S/Vo*L);
			// v - скорость звука = 340 м/с
			// S - сечение отверстия
			// Vo - объем резонатора
			// L - длина горловины
			var v = 340;
			
			return Math.pow(f/(v/(2*Math.PI)), 2)*Vo*L;
		}
	};
});
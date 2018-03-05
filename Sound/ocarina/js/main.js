requirejs.config({
    baseUrl: "js",
    paths: {
		jquery: "lib/jquery-1.11.0.min",
		html:"lib/html",
		raphael:"lib/raphael-min",
		knockout:"lib/knockout-3.1.0",
        lib: "lib",
    },
	urlArgs: "bust=" + (new Date()).getTime(),
	shim:{
		"html":{exports:"Html"}
	}
});

requirejs(["jquery", "html", "graph"], function($, $H, graph) {
	//$("#mainPanel").html("ocarina calculator");
	graph.view("#mainPanel");
		
});
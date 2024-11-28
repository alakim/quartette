<!DOCTYPE html>
<?php
	$file = null;
	foreach(scandir(__DIR__) as $d){
		if(preg_match('/\.svg$/', $d)) $file = $d;
	}
?>
<html>
<head>
	<meta charset="utf-8">
	<style>
		body{
			font-family: Verdana, Arial, Sans-Serif;
			background-color:#000;
			color: #fff;
		}
		a:link{color: #4af; text-decoration:none;}
		a:visited{color: #4af; text-decoration:none;}
		a:hover{color: #0f0; text-decoration:underline;}
	</style>
	<script>
		addEventListener('load', function(){
			fetch('<?=$file?>').then(x=>x.text()).then(svg=>{
				document.querySelector('body').innerHTML = svg;
			});
		});
	</script>
</head>
<body>
</body>
</html>

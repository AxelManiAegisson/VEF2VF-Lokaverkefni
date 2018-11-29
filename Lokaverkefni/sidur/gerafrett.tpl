<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>Búa til frétt</title>
	<style type="text/css">
		body{
		}

		h2{
			font-family: sans-serif;
		}
		h3 {
			font-style: bold;
		}
		header{
			text-align: center;
			background-color: rgb(50,49,51);
			width: 100%;
			color: white;
			padding: 20px;
			color: white;
			font-size: 30px;

		}
		.container{
			max-width: 60em;
		    margin: 0 auto;
		    border-radius: 25px;
		    text-align: center;
		}
		div {
    		display: block;
		}
	</style>
</head>
<body>
	<header>
		<h2>Velkominn! {{u}}</h2>
	</header>	
	<p><a href="/#i">Signout</a></p>
	<div>
		<h3>Gera frétt</h3>
		<form method="post" action="/nyfrett" accept-charset="ISO-8859-1" id="inn">
			<br>Titill<br>
			<input type="text" name="title">
			<br>Frétt<br>
			<textarea rows="15" cols="100" name="frett"></textarea>
			<br>Höfundur<br>
			<input type="text" name="nafn">
	 		<input type="submit" value="Senda">
	 		<p><a href="/">Fréttasíða</a></p>
 		</form>
	</div>
</body>
</html>
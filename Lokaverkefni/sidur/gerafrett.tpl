<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>Búa til frétt</title>
	<style type="text/css">
		body{
			margin: 3em;
		}

		h2{
			color: #a00;
			font-family: sans-serif;
		}
		h3 {
			font-style: bold;
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
	<h2>Velkominn! {{u}}</h2>
	<p><a href="/#i">Signout</a></p>
	<div>
		<h3>Gera frétt</h3>
		<form method="post" action="/nyfrett" accept-charset="ISO-8859-1" id="inn">
			<br>Titill<br>
			<input type="text" name="title">
			<br>
			<textarea rows="15" cols="100" name="frett"></textarea>
			<br>Höfundur<br>
			<input type="text" name="nafn">
	 		<input type="submit" value="Senda">
	 		<p><a href="/">Fréttasíða</a></p>
 		</form>
	</div>
</body>
</html>
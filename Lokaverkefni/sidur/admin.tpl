<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>admin síða</title>
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
		<h2>Velkominn á admin síðunna ritari! </h2>
	</header>
	<p><a href="/#i">Signout</a></p>
	<div>
		<h3>Gera frett:</h3>
	 	<form method="post" action="/gerafrett" accept-charset="ISO-8859-1" id="inn">
	 		<br>Notendanafn: <br>
	 		<input type="text" name="user" placeholder="Notendanafn" required="">
	 		<br>Lykilord: <br>
	 		<input type="text" name="pass" placeholder="Password" required="">
	 		<input type="submit" value="Innskrá">
	 	</form>	
	 	<h3>Eyða frétt</h3>
	  	<form method="post" action="/eydafrett" accept-charset="ISO-8859-1" id="inn">
	 		<br>Notendanafn: <br>
	 		<input type="text" name="user" placeholder="Notendanafn" required="">
	 		<br>Lykilord: <br>
	 		<input type="text" name="pass" placeholder="Password" required="">
	 		<br>Fréttar ID:<br>
	 		<input type="text" name="id">
	 		<input type="submit" value="Innskrá">
	 	</form>
	</div>

</body>
</html>
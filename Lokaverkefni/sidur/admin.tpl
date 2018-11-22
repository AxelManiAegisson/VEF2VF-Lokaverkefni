<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>admin síða</title>
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
	<h2>Velkominn á admin síðunna! {{u}}</h2>
	<p><a href="/#i">Signout</a></p>
	<h3>Gera frett:</h3>
 	<form method="post" action="/gerafrett" accept-charset="ISO-8859-1" id="inn">
 		<br>Notendanafn: <br>
 		<input type="text" name="user" placeholder="Notendanafn" required="">
 		<br>Lykilord: <br>
 		<input type="text" name="pass" placeholder="Password" required="">
 		<input type="submit" value="Innskrá">
 	</form>	
</body>
</html>
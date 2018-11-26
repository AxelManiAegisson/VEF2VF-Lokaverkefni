<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>Fréttasíða</title>
	<style type="text/css">
		body {
			margin: 3em;
		}
		h1 {
			font-style: bold;
		}
		h3 {
			font-style: bold;
		}
		input{
			padding: .3em;
			margin: .3em;
		}
		.titill{
			text-align: center;
		}
		.container{
			max-width: 60em;
		    margin: 0 auto;
		    border-radius: 25px;
		}
		div {
    		display: block;
		}	
	</style>
</head>
<body>
	<h1 class="titill">Fréttasíða</h1>
	<h3>Login:</h3>
 	<form method="post" action="/login" accept-charset="ISO-8859-1" id="inn">
 		Notendanafn: <br>
 		<input type="text" name="user" placeholder="Notendanafn" required="">
 		<br>Lykilord: <br>
 		<input type="text" name="pass" placeholder="Password" required="">
 		<input type="submit" value="Innskrá">
 	</form>
 	<div class="container">
 	%for row in rows:
		<tr>
		%for col in row:
			<td>{{col}}</td>
		%end
		</tr>
	%end
 	</div>
</body>
</html>
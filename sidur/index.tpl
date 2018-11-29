<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>Fréttasíða</title>
	<style type="text/css">
		body {
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
			max-width: 70em;
		    margin: 0 auto;
		    border-radius: 25px;
		}
		div {
    		display: block;
		}
		table{
			text-align: center;
			width: 100%;
		}
		footer {
		   position:absolute;
		   bottom:0;
		   width:100%;
		   height:60px;  
		}
		.right{
			float: right;
			margin-left: 10em;
		}
		th, td {
		    padding: 15px;
		    text-align: left;
		    border-bottom: 1px solid #ddd;
		}
	</style>
</head>
<body>
	<header>
		<h1 class="titill">Fréttasíða</h1>		
	</header>
 	<div class="container">
 		<table>
 			<tr>
			<th>ID</th>
		    	<th>Titill</th>
		    	<th>Fréttir</th> 
		    	<th>Höfundur</th>
		  	</tr>
 			%for row in rows:
				<tr>
				%for col in row:
					<td>{{col}}</td>
				%end
				</tr>
			%end
 		</table>
 	</div>
 	<footer>
 		Síða og forritun: Axel Máni Ægisson
		<a href="/admin" class="vinstri">login</a>
	</footer>
</body>

</html>

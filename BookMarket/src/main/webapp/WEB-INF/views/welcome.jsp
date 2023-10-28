<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<title>Welcome</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/home.jsp">Home</a>
		</div>
	</div>
</nav>
<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">${greeting}</h1>
		</div>
</div>
<div class="container">
	<div align="center">
		<h3>${strapline}</h3>
	</div>
</div>
<footer class="container">
	<p>&copy; WebMarket</p>
</footer>
</body>
</html>
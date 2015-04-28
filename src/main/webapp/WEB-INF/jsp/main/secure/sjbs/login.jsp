<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="ie6 ielt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7 ielt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resources/css/login.css" />
</head>
<body>
<div class="container">
	<section id="content">
		<form action="j_spring_security_check" method='POST'>
			<h1>Log Masuk</h1>
			<div>
				<input type="text" placeholder="ID PENGGUNA" required="required" oninvalid="this.setCustomValidity('Sila masukan ID PENGGUNA')" onkeypress="this.setCustomValidity('')" id="username" name="j_username"/>
			</div>
			<div>
				<input type="password" placeholder="KATALALUAN" required="required" oninvalid="this.setCustomValidity('Sila masukan KATALALUAN')" onkeypress="this.setCustomValidity('')" id="password" name="j_password"/>
			</div>
			<div>
				<input type="submit" id="submit" value="Log in" style="float: inherit;;" />
			</div>
		</form>
	</section>
</div>
</body>
</html>
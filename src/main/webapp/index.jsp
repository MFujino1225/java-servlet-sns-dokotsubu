<%-- pageディレクティブ --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- テンプレート --%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>どこつぶ</title>
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
	</head>
	<body>
	<div class="container">
		<h1>どこつぶへようこそ</h1>
		
		<form action="Login" method="post">
			ユーザー名<br>
			<input type="text" name="name"><br>
			
			パスワード<br>
			<input type="password" name="pass"><br>
				
			<input type="submit" value="ログイン">
		</form>
	</div>
	</body>
</html>

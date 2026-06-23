<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
//セッションスコープからユーザー情報を取得
User loginUser = (User)session.getAttribute("loginUser");
%>
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
		<h1>どこつぶログイン</h1>
		
		<% if(loginUser != null){ %>
			<p class="message">ログインに成功しました</p>
			<p>ようこそ<%= loginUser.getName() %>さん</p>
			<a href="Main">つぶやき投稿・閲覧へ</a>
		<% }else{ %>
			<p class="error">ログインに失敗しました</p>
			<a href="index.jsp">トップへ</a>
		<% } %>
	</div>
	</body>
</html>

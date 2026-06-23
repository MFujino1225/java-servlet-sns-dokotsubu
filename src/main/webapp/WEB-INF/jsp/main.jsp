<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%
//セッションスコープに保存されたユーザー情報を取得
User loginUser = (User)session.getAttribute("loginUser");

//アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");

//リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String)request.getAttribute("errorMsg");
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
		<h1>どこつぶメイン</h1>
		<p>
			<%= loginUser.getName() %>さん、ログイン中<br>
			<a href="Logout">ログアウト</a>
		</p>
		<p><a href="Main">更新</a></p>
		<form action="Main" method="post">
			<input type="text" name="text">
			<input type="submit" value="つぶやく">
		</form>
		<% if(errorMsg != null){ %>
			<p class="error"><%= errorMsg %></p>
		<% } %>
		
		<div class="timeline">
			<% for(Mutter mutter:mutterList){ %>
    			<div class="mutter">
        			<div class="mutter-user">
            			<%= mutter.getUserName() %>
        			</div>
        			
					<div class="mutter-text">
						<%= mutter.getText() %>
					</div>
				</div>

			<% } %>
		</div>
	</div>
	</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<title>ログイン</title>
</head>
<body>
	<div class="mx-auto" style="width: 300px;">
		<h1 class="mb-3" style="text-align: center">ログイン画面</h1>
		<form action="${pageContext.request.contextPath}/LoginServlet" method="post">
		  <div class="mb-3">
		    <label for="username" class="form-label">ユーザ名</label>
		    <input type="text" class="form-control" id="username" name="username">
		  </div>
		  <div class="mb-3">
		    <label for="email" class="form-label">メールアドレス</label>
		    <input type="text" class="form-control" id="email" name="email">
		  </div>
		  <div class="mb-3">
		    <label for="password" class="form-label">パスワード</label>
		    <input type="password" class="form-control" id="password" name="password">
		  </div>
		  <button type="submit" class="btn btn-primary">ログイン</button>
		</form>
	</div>
</body>
</html>
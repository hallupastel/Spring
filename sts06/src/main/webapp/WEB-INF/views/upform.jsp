<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="/sts06/result" method="post" 
				enctype="multipart/form-data">
	<p>
		<label for="id">id</label>
		<input type="text" name="id" id="id" />
	</p>
	<p>
		<label for="pw">pw</label>
		<input type="password" name="pw" id="pw" />
	</p>
	<p>
		<label for="file">file</label>
		<input type="file" name="file1" id="file" />
	</p>
	<p>
		<button type="submit">전송</button>
	</p>
	</form>
</body>
</html>







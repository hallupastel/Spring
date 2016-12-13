<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style type="text/css">
	.table{
		width: 80%;
		margin: auto;
	}
	.col{
		width: 24%;
		display: inline-block;
	}

</style>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<h1>리스트페이지</h1>
	<div class="table">
	<div>
		<span class="col">사번</span>
		<span class="col">이름</span>
		<span class="col">날짜</span>
		<span class="col">금액</span>
	</div>
	<c:forEach items="${alist }" var="bean">
	<a href="/sts05/guest/detail?idx=${bean.sabun }">
	<div>
		<span class="col">${bean.sabun }</span>
		<span class="col">${bean.name }</span>
		<span class="col">${bean.nalja }</span>
		<span class="col">${bean.pay }</span>	
	</div>
	</a>
	</c:forEach>
	</div>
	<p><a href="/sts05/guest/add">입력</a></p>
</body>
</html>









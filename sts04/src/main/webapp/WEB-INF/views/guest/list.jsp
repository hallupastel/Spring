<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="/sts04/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	body {
		  padding-top: 50px;
		}
</style>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="/sts04/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/sts04/">한빛교육센터</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/sts04/">Home</a></li>
            <li class="active"><a href="/sts04/guest">리스트</a></li>
            <li><a href="/sts04/guest/form">입력</a></li>
            <li><a href="/sts04/login/form">로그인</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

		<div class="jumbotron">
		  <h1>LIST PAGE</h1>
		  <p>guest table list</p>
		  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
		</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ol class="breadcrumb">
				  <li><a href="/sts04/">Home</a></li>
				  <li class="active">List</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
			<table class="table table-hover">
				<tr>
					<th>사번</th>
					<th>이름</th>
					<th>날짜</th>
					<th>금액</th>
				</tr>
				<c:forEach items="${alist }" var="bean">
				<tr>
					<td>
						<a href="/sts04/guest/${bean.sabun }">
						${bean.sabun }
						</a>
					</td>
					<td>
						<a href="/sts04/guest/${bean.sabun }">
						${bean.name }
						</a>
					</td>
					<td>
						<a href="/sts04/guest/${bean.sabun }">
						${bean.nalja }
						</a>
					</td>
					<td>
						<a href="/sts04/guest/${bean.sabun }">
						${bean.pay }
						</a>
					</td>
				</tr>
				</c:forEach>
				
			</table>
			
			</div>
		</div>
	</div>
</body>
</html>












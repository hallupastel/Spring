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
    <script type="text/javascript">
    	$(document).ready(function() {
    		$(".detail").show();
    		$(".edit").hide();
    		$(".btnEdit").click(function() {
    			$(".detail").hide();
    			$(".edit").show();
    			$(".page-header").html("<h1>수정 페이지</h1>");
			});
    		$(".btnDel").click(function() {
    			$.ajax("/sts04/guest/${bean.sabun }",{
    				async:false,
    				type:'DELETE',
    				success: function(data) {
    					window.location.replace("/sts04/guest");
    				}
    			});
				return false;
			});
		});
    
    </script>
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
		  <h1>Detail PAGE</h1>
		  <p>guest table list</p>
		  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
		</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ol class="breadcrumb">
				  <li><a href="/sts04/">Home</a></li>
				  <li><a href="/sts04/guest">List</a></li>
				  <li class="active">Detail</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="page-header">
				  <h1>상세페이지 <small>${bean.sabun }님의 정보</small></h1>
				</div>
			</div>
		</div>
		<div class="row detail">
			<div class="col-xs-12">
			<table class="table">
			<tr>
				<td>사번</td>
				<td>${bean.sabun }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${bean.name }</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${bean.nalja }</td>
			</tr>
			<tr>
				<td>금액</td>
				<td>${bean.pay }</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" class="btn btn-primary btnEdit">수정</button>
					<a class="btn btn-danger btnDel" href="#" role="button">삭제</a>
				</td>
			</tr>
			</table>
			</div>
		</div>
		<div class="row edit">
			<div class="col-xs-12">
				<form method="post" class="form-horizontal">
				<input type="hidden" name="_method" value="put"/>
  <div class="form-group">
    <label for="sabun" class="col-sm-2  control-label">sabun</label>
    <div  class="col-sm-10">
    <input type="text" class="form-control" name="sabun" id="sabun" value="${bean.sabun }">
    </div>
  </div>
  <div class="form-group">
    <label for="name" class="col-sm-2  control-label">name</label>
    <div  class="col-sm-10">
    <input type="text" class="form-control" name="name" id="name" value="${bean.name }">
    </div>
  </div>
  <div class="form-group">
    <label for="pay" class="col-sm-2  control-label">pay</label>
    <div  class="col-sm-10">
    <input type="text" class="form-control" name="pay" id="pay" value="${bean.pay }">
    </div>
  </div>
  <div class="form-group">
  <div class="col-sm-offset-2 col-sm-10">
  <button type="submit" class="btn btn-success">수정</button>
  <button type="reset" class="btn btn-default">취소</button>
  </div>
  </div>
</form>
			</div>
		</div>
	</div>
</body>
</html>










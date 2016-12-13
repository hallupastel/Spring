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
    <script type="text/javascript">
    $(document).ready(function() {
		$("button").click(function() {
			if($(this).text()=="수정"){
				if($(this).attr("type")=="button"){
					$("h1").text("수정페이지");
					$(".nalja").remove();
					$("input").removeAttr("readonly");
					$(this).attr("type","submit");
					return false;
				}
			}else{
				$.post(
						"/sts05/guest/delete"
						,{'idx':'${bean.sabun }'}
						,function(){
							window.location.replace("/sts05/guest/");
						}
				);
			}
		});
	});
    
    </script>
</head>
<body>
	<h1>상세페이지</h1>
	<form action="/sts05/guest/update" method="post">
	<p>
		<label for="sabun">sabun</label>
		<input type="text" value="${bean.sabun }" name="sabun" id="sabun" readonly="readonly"/>
	</p>
	<p>
		<label for="name">name</label>
		<input type="text" value="${bean.name }" name="name" id="name" readonly="readonly"/>
	</p>
	<p class="nalja">
		<label for="nalja">nalja</label>
		<input type="text" value="${bean.nalja }" name="nalja" id="nalja" readonly="readonly"/>
	</p>
	<p>
		<label for="pay">pay</label>
		<input type="text" value="${bean.pay }" name="pay" id="pay" readonly="readonly"/>
	</p>
	<p>
		<button type="button">수정</button>
		<button type="button">삭제</button>
	</p>
	</form>
</body>
</html>











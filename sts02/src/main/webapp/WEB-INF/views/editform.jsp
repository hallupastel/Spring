<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>수정페이지</h1>
	<div>${err }</div>
	<form action="./update">
	<table>
		<tr>
			<td>사번</td>
			<td>
				<input type="text" name="sabun" value="${bean.sabun }"/>
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" value="${bean.name }"/>
			</td>
		</tr>
		<tr>
			<td>금액</td>
			<td>
				<input type="text" name="pay" value="${bean.pay }"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button>수정</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력페이지</h1>
	<div>${err }</div>
	<form action="./insert">
	<table>
		<tr>
			<td>사번</td>
			<td>
				<input type="text" name="sabun"/>
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name"/>
			</td>
		</tr>
		<tr>
			<td>금액</td>
			<td>
				<input type="text" name="pay"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button>입력</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
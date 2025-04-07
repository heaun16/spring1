<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="save" method="post">
<table border="1" width="300px" align="center">
	<caption>스프링 자료 입력 연습폼</caption>
	<tr>	
		<th>이름</th>
		<td><input type="text" name="name"></td>
	</tr>
	
	<tr>	
		<th>국어</th>
		<td><input type="number" name="kor"></td>
	</tr>
	
	<tr>	
		<th>영어</th>
		<td><input type="number" name="eng"></td>
	</tr>
	
	<tr>	
		<th>수학</th>
		<td><input type="number" name="mat"></td>
	</tr>
	
	<tr>	
		<td style="text-align: center; " colspan="2" >
		<input type="submit" value="전송">
		<input type="reset" value="취소"></td>
	</tr>
</table>
</form>
</body>
</html>
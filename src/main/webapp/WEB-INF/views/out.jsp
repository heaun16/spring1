<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="300px" align="center">
	<caption>정보출력</caption>
	<tr>
		<th>이름</th><th>국어</th><th>영어</th><th>수학</th>
	</tr>
	
	<c:forEach items="${list}" var="oo">
	<tr>
		<td>${oo.name}</td>
		<td>${oo.kor}</td>
		<td>${oo.eng}</td>
		<td>${oo.mat}</td>
	</tr>
	</c:forEach>
	
</table>
</body>
</html>
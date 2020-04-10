<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>JSP 환경 설정을 위한 다운로드 페이지</h1>
	<hr>
	
	<form action="responseForm_test.jsp" method="post">
	<select name="subject">
		<option value="Java">JDK</option>
		<option value="JSP">Tomcat</option>
		<option value="XML">Eclipse</option>
	</select>
	<input type="submit" value="이동">
	</form>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성된 글</title>
</head>
<body>

	<jsp:useBean id="a" class="ch10.ActionBean"/>
	
	<jsp:setProperty property="*" name="a"/>
	
	<h1><jsp:getProperty property="title" name="a"/></h1>
	<hr>
	이름: <jsp:getProperty property="name" name="a"/> <br>
	이메일: <jsp:getProperty property="email" name="a"/> <br>
	내용: <jsp:getProperty property="desc" name="a"/> <br>
	비밀번호: <jsp:getProperty property="pwd" name="a"/>

</body>
</html>
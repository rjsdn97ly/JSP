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
	
	<h1>${a.title }</h1>
	<hr>
	이름: ${a.name } <br>
	이메일: ${a.email } <br>
	내용: ${a.desc } <br>
	비밀번호: ${a.pwd }

</body>
</html>
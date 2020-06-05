<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

	table, th, td {
		border: 1px solid black;
	}

</style>

</head>
<body>

	<h2>학생 정보</h2>
	<hr>
	
	<jsp:useBean id="inp" class="ch10.Input" scope="page"/>
	
	<jsp:setProperty property="*" name="inp"/>
	
	<table>
		<tr>
			<td>학번</td>
			<td> ${inp.num} </td>
		</tr>
		<tr>
			<td>이름</td>
			<td> ${pageScope.inp.name} </td>
		</tr>
		<tr>
			<td>학년</td>
			<td> ${pageScope.inp.grade} </td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td> ${pageScope.inp.subject} </td>
		</tr>
	</table>

</body>
</html>
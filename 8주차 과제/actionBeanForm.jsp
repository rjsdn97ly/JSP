<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>

<style type="text/css">

	#division {
		border: 5px solid grey;
		width: 35%;
		margin: 0 auto;
	}
	
	table, h1 {
		margin-left: 12px;
		margin-bottom: 12px;
	}

	table, tr, th {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	th {
		padding: 10px;
	}
	
	.big {
		width: 400px;
	}
	
	.big input, textarea {
		float: left;
	}
	
	a {
		float: right;
	}
	

</style>

</head>
<body>

	<div id="division">

	<h1>글쓰기</h1>

	<form action="actionBeanPro.jsp" method="post" id="info">

	<table>
		<tr>
			<th colspan="2"><a href="#" >글목록</a></th>
		</tr>
		<tr>
			<th>이름</th>
			<th class="big"><input type="text" name="name"></th>
		</tr>
		<tr>
			<th>제목</th>
			<th class="big"><input type="text" name="title"></th>
		</tr>
		<tr>
			<th>이메일</th>
			<th class="big"><input type="text" name="email"></th>
		</tr>
		<tr>
			<th>내용</th>
			<th class="big"><textarea name="desc" form="info" rows="15" cols="50"></textarea></th>
		</tr>
		<tr>
			<th>비밀번호</th>
			<th class="big"><input type="text" name="pwd"></th>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" name="finish" value="글쓰기">
				<input type="reset" name="re" value="다시작성">
				<input type="submit" name="back" value="목록보기">
			</th>
		</tr>
	</table>
	
	</form>
	
	</div>

</body>
</html>
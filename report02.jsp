<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제02</title>

<style>

	table, th, td{
		border: 1px dashed black;
		border-collapse: collapse;
	}
	
	td{
		width: 500px;
	}
	
	th{
		background-color: magenta;
		color: yellow;
		width: 100px;
	}
	
	legend { 
  		display: block;
 		padding-left: 2px;
 		padding-right: 2px;
 		border: none;
	}
	
	#up{
		margin-bottom: 5px;
	}
	
	#relate{
		height: 200px;
	}

</style>
</head>
<body>

	<h2>개인면담 카드</h2>
	<hr>
	<form method="post" action="report02_2.jsp">
	<table id="up">
		<tr>
			<th>소속</th>
			<td><input type="text" name="belong"></td>
		</tr>
		
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
			<th>현주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		
		<tr>
			<th>입사년월일</th>
			<td><input type="text" name="employeement_date" placeholder="연도-월-일"></td>
		</tr>
		
		<tr>
			<th>최종학력</th>
			<td>
				<input type="radio" name="fianlEducation" value="중졸">중졸 &nbsp;
				<input type="radio" name="fianlEducation" value="고졸">고졸 &nbsp;
				<input type="radio" name="fianlEducation" value="전문대졸">전문대졸 &nbsp;
				<input type="radio" name="fianlEducation" value="대졸">대졸
			</td>
		</tr>
	</table>
	
	<table>
		<tr>
			<td colspan='2'>
				<fieldset>
					<legend>자격증</legend>
					<input type="checkbox" name="cetificate" value="자동차2종">자동차2종&nbsp;
		 			<input type="checkbox" name="cetificate" value="정보처리산업기사">정보처리산업기사&nbsp;
		 			<input type="checkbox" name="cetificate" value="컴퓨터활용">컴퓨터활용&nbsp;
		 			<input type="checkbox" name="cetificate" value="기타">기타<br>
				</fieldset>
			</td>
		</tr>
		
		<tr>
			<th>상담내용</th>
			<td><textarea name="Consult" style="margin: 0px; width: 489px; height: 182px;" placeholder="상담내역 입력하기"></textarea></td>
		</tr>
		
		<tr>
			<td colspan='2'>
				<center>
					<input type="submit" value="입력완료" align="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="다시입력" align="middle">
				</center>
			</td>
		</tr>
	</table>
	
	</form>

</body>
</html>
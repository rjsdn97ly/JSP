<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
    
    <%@ page import="java.util.Enumeration" %>
    
    <%  request.setCharacterEncoding("UTF-8");
	
	String belong = request.getParameter("belong");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String employeement_date = request.getParameter("employeement_date");
	String fianlEducation = request.getParameter("fianlEducation");
	String Consult = request.getParameter("Consult");
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>

		table, th, td{
			border: 1px dashed black;
			border-collapse: collapse;
		}		
		
	</style>

</head>
<body>

	<h2>사용자 입력 확인</h2>
	<hr>

	<table>
	
		<tr>
			<th style="width: 100px;">컨트롤 요소</th>
			<th style="text-align: center;width: 300px;">입력값</th>
		</tr>
		
		<tr>
			<td>소속</td>
			<td><%=belong %></td>
		</tr>
		
		<tr>
			<td>성명</td>
			<td><%=name %></td>
		</tr>
		
		<tr>
			<td>현주소</td>
			<td><%=address %></td>
		</tr>
		
		<tr>
			<td>입사연월일</td>
			<td><%=employeement_date %></td>
		</tr>
		
		<tr>
			<td>학력</td>
			<td><%=fianlEducation %></td>
		</tr>
		
		<tr>
			<td>자격증</td>
			<td>
				<%
					String[] cetificate = request.getParameterValues("cetificate");
					for(int i=0; i<cetificate.length; i++){
						out.println(cetificate[i] + ", ");
					}
				%>
			</td>
		</tr>
		
		<tr>
			<td>상담내용</td>
			<td style="width: 300px;"><%=Consult %></td>
		</tr>
		
		<tr>
			<td>각 폼 컨트롤의 이름들</td>
			<td>
				<%
					Enumeration<?> formNames = request.getParameterNames();
					while(formNames.hasMoreElements()){
						String sName = formNames.nextElement().toString();
		            	out.print(sName +" ");
		        	}
				%>
			</td>
		</tr>
				
	</table>

</body>
</html>
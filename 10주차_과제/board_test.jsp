<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
String user = "JSP";
String passwd = "mama8291";

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn = DriverManager.getConnection(url, user, passwd);

String sql = "SELECT * FROM BOARD";

PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();

//String login_id = request.getParameter("id");
//session.setAttribute("id", login_id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<style type="text/css">
body {
	background: #6593e8;
}

.page-link {
	text-decoration: none;
	color: black;
	transition-duration: 0.1s;
}

.container {
	width: 1200px;
	overflow: auto;
	margin-bottom: 100px;
	margin-top: 100px;
	border: 1px solid white;
	box-shadow: 0 0 25px black;
	padding-bottom: 25px;
	background: white;
}
</style>

<title>Insert title here</title>
</head>
<body>

	<form action=""></form>

	<div class="container text-center">

		<br>
		<h2 class="font-weight-bold">게시판 입니다</h2>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>아이디</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>선택</th>
				</tr>
			</thead>

			<tbody>
				<%
					while (rs.next()) {
					String boardId = rs.getString("ID");
					String subject = rs.getString("SUBJECT");
					String content = rs.getString("CONTENT");
					String writer = rs.getString("WRITER");
					String regDate = rs.getString("REGDATE");
				%>


				<tr onClick="location.href='detailPost.jsp?boardId=<%=boardId%>&subject=<%=subject%>&writer=<%=writer%>&content=<%=content%>'">
					<td><%=boardId%></td>
					<td><%=subject%></td>
					<td><%=content%></td>
					<td><%=writer%></td>
					<td><%=regDate%></td>
					<td>
						<input type="checkbox" name="check" value="<%=boardId%>">
					</td>
				</tr>

				<%
					}

				rs.close();
				pstmt.close();
				conn.close();
				%>
			</tbody>

		</table>

		<div class="text-center position-relative">
			<div class="d-flex justify-content-start d-inline float-left">
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#"><</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">></a>
					</li>
				</ul>
			</div>

			<div class="d-flex justify-content-end d-inline float-right">

				<a class="btn btn-outline-dark mx-1" href="insertPost.jsp">게시글 등록</a>

			</div>

		</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	<script type="text/javascript">
		var checkbox = $("input[name=check]:checked");

		var col1 = "";
		var col2 = "";
		var col3 = "";
		var col4 = "";

		checkbox.each(function(i) {
			var tr = checkbox.parent().parent().eq(i); // checkbox 태그의 두 단계 상위 태그가 tr이기 때문에
			var td = tr.children(); // td 태그는 tr 태그의 하위에 있으므로

			col1 = td.eq(1).text(); // 1번째 column(eq(0))은 체크박스 이므로 eq(1)부터 데이터를 받아줌
			col2 = td.eq(2).text();
			col3 = td.eq(3).text();
			col4 = td.eq(4).text();
		});
	</script>

</body>
</html>
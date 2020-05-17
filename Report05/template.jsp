<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>템플릿</title>
	<link rel='stylesheet' href='template.css'>
</head>
<body>

	<!-- **** 상단 **** -->
	<header>
		<jsp:include page='top.jsp' flush='false'/>
	</header>
	
	<div id="image">
		<!-- <img alt="" src="#">  -->
		background image area (later)
	</div>
	
	<hr class="hr_line">


	<!-- **** 중단 **** -->	
	<div id='content'>
		<section id='areaSub'>
			<jsp:include page="left.jsp" flush='false'/>
		</section>
		
		<section id='areaMain'>
			<jsp:include page="content.jsp" flush='false'/>
		</section>
	</div>
		
	
	<!-- **** 하단 **** -->
	<footer>
		<jsp:include page='bottom.jsp' flush='false'/>
	</footer>

</body>
</html>
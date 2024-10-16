<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>board</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.bs-example{ margin:20px;}
.log-small{ color:#f4511e; font-size:50px;}
footer .glyphicon{
	font-size : 20px;
	margin-bottom : 20px;
	color : #f4511e;	
}
</style>
</head>
<body id="myPage">
	<c:import url="nav_top.jsp"></c:import>
	<br><br><br>

	<div id="service" class="container-fluid text-center">
		<h2>스프링 MVC4, 마이바티스3.5, 오라클11 연동 게시판</h2>
		<h4>Spring Framework4 + MyBatis3.5 + Oracle11</h4>
		<br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-off logo-small"></span>
				<h4>
					<c:if test="${not empty user }">
						<a href="logout">LOGOUT</a>					
					</c:if>
					<c:if test="${empty user }">
						<a href="login">LOGIN</a>
					</c:if>				
				</h4>
				<p>로그인</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-heart logo-small"></span>
				<h4><a href="boards">BOARD</a></h4>
				<p>스프링, 마이바티스게시판</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-lock logo-small"></span>
				<h4><a href="boards">추가가능</a></h4>
				<p>내용을 추가해서 사용</p>
			</div>			
		</div>
	</div>
	<br><br><br>
	
	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top">
		<span class="glyphicon glyphicon-chevron-up"></span></a>
		<p>Made By <a href="#" title="#">J.Y , Have a goodday!!</a></p>
	</footer>	
</body>
</html>
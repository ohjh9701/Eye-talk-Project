<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/home.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menu.jsp" />


	<div align="center" class="home-content">
		<h1>
			대한민국 모든 안과의 중심! EYE-TALK!
		</h1>
		<p>${serverTime}</p>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
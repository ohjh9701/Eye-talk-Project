<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code Detail Registration</title>
<link rel="stylesheet" href="/css/register.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menu.jsp" />

	<!-- 메인화면 작업 영역 시작 -->
	<div class="main-wrapper">
		<div class="container">
			<h2>
				코드 상세 등록
			</h2>
			<form:form modelAttribute="codeDetail" action="register" method="post">
				<table>
					<tr>
						<td>그룹코드</td>
						<td><form:select path="groupCode" items="${groupCodeList}"
								itemValue="value" itemLabel="label" /></td>
						<td><font color="red"><form:errors path="groupCode" /></font></td>
					</tr>
					<tr>
						<td>상세코드</td>
						<td><form:input path="codeValue" /></td>
						<td><font color="red"><form:errors path="codeValue" /></font></td>
					</tr>
					<tr>
						<td>상세코드명</td>
						<td><form:input path="codeName" /></td>
						<td><font color="red"><form:errors path="codeName" /></font></td>
					</tr>
				</table>
			</form:form>
			<div>
				<button type="submit" id="btnRegister">
					등록
				</button>
				<button type="submit" id="btnList">
					목록
				</button>
			</div>
		</div>
	</div>
	<!-- 메인화면 작업 영역 끝 -->

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script>
		$(document).ready(function() {
			let formObj = $("#codeDetail");
			$("#btnRegister").on("click", function() {
				formObj.submit();
			});
			$("#btnList").on("click", function() {
				self.location = "list";
			});
		});
	</script>
</body>
</html>
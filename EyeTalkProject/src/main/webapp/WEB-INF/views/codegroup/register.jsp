<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eye-Talk Code Group Registration</title>
<link rel="stylesheet" href="/css/codegroup.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menu.jsp" />
	<div class="container">
		<h2>
			<spring:message code="codegroup.header.register" />
		</h2>


		<form:form modelAttribute="codeGroup" action="/register" method="get">
			<div class="form-group">
				<label for="groupCode"><spring:message code="codegroup.groupCode" /></label>
				<form:input path="groupCode" placeholder="그룹 코드를 입력하세요" />
				<font color="red"><form:errors path="groupCode"/></font>
			</div>

			<div class="form-group">
				<label for="groupName"><spring:message code="codegroup.groupName" /></label>
				<form:input path="groupName" placeholder="그룹 명칭을 입력하세요" />
				<font color="red"><form:errors path="groupName"/></font>
			</div>

			<div>
				<button type="submit" id="btnRegister">
					<spring:message code="action.register" />
				</button>
				<button type="submit" id="btnList">
					<spring:message code="action.list" />
				</button>
			</div>

		</form:form>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	
	<script>
		$(document).ready(function() {
			let formObj = $("#codeGroup");
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
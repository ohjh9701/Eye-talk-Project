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
			코드그룹 등록
		</h2>


		<form:form modelAttribute="codeGroup" action="register" method="post">
			<div class="form-group">
				<label for="groupCode">그룹코드</label>
				<form:input path="groupCode" placeholder="그룹 코드를 입력하세요" />
				<font color="red"><form:errors path="groupCode"/></font>
			</div>

			<div class="form-group">
				<label for="groupName">그룹명</label>
				<form:input path="groupName" placeholder="그룹 명칭을 입력하세요" />
				<font color="red"><form:errors path="groupName"/></font>
			</div>

			<div>
				<button type="submit" id="btnRegister">
					등록하기
				</button>
				<button type="submit" id="btnList">
					목록보기
				</button>
			</div>

		</form:form>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	
	<script>
		$(document).ready(function() {
			let formObj = $("#codeGroup");
			$("#btnRegister").on("click", function() {
				alert("등록이 완료되었습니다.");
				formObj.submit();
			});
			$("#btnList").on("click", function() {
				self.location = "list";
			});
		});
	</script>

</body>
</html>
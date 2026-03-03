<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${codeGroup.groupCode} 그룹명 수정</title>
<link rel="stylesheet" href="/css/detail.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menu.jsp" />

	<!-- 메인화면 작업 영역 시작 -->
	<div class="container">
	<h2>
		${codeGroup.groupCode} 그룹명 수정
	</h2>
	<form:form modelAttribute="codeGroup" action="modify" method="post">
		<table>
			<tr>
				<td>그룹코드</td>
				<td><form:input path="groupCode" readonly="true" /></td>
				<td><font color="red"><form:errors path="groupCode" /></font></td>
			</tr>
			<tr>
				<td>그룹명</td>
				<td><form:input path="groupName" /></td>
				<td><font color="red"><form:errors path="groupName" /></font></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnModify">
			수정
		</button>
		<button type="submit" id="btnList">
			목록
		</button>
	</div>
	</div>

	<!-- 메인화면 작업 영역 끝 -->

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<!-- 이벤트 처리 영역 -->

	<script>
		$(document).ready(function() {
			let formObj = $("#codeGroup");
			$("#btnModify").on("click", function() {
				formObj.submit();
			});
			$("#btnList").on("click", function() {
				self.location = "list";
			});
		});
	</script>
</body>
</html>
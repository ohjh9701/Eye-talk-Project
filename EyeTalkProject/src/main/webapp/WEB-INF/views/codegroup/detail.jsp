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
<title>${codeGroup.groupCode}</title>
<link rel="stylesheet" href="/css/detail.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menu.jsp" />

	<!-- 메인화면 작업 영역 시작 -->
	<div class="container">
	<h2>
		<c:out value="${codeGroup.groupCode}" /> 상세페이지
	</h2>
	<form:form modelAttribute="codeGroup">
		<table>
			<tr>
				<td>코드그룹</td>
				<td><form:input path="groupCode" readonly="true" /></td>
				<td><font color="red"><form:errors path="groupCode" /></font></td>
			</tr>
			<tr>
				<td>그룹명</td>
				<td><form:input path="groupName" readonly="true" /></td>
				<td><font color="red"><form:errors path="groupName" /></font></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnEdit">
			수정
		</button>
		<button type="submit" id="btnRemove">
			삭제
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
			$("#btnEdit").on("click", function() {
				let groupCode = $("#groupCode");
				let groupCodeValue = groupCode.val();
				alert("수정이 완료되었습니다.");
				self.location = "modify?groupCode=" + groupCodeValue;
			});
			$("#btnRemove").on("click", function() {
				formObj.attr("action", "/codegroup/remove");
				formObj.attr("method", "get");
				alert("삭제가 완료되었습니다.");
				formObj.submit();
			});
			$("#btnList").on("click", function() {
				self.location = "list";
			});
		});
	</script>
</body>
</html>
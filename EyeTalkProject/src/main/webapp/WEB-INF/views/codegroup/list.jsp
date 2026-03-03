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
<title>Eye-Talk 코드그룹</title>
<link rel="stylesheet" href="/css/list.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menu.jsp" />

	<!-- 메인화면 작업 영역 시작 -->
	<div class="container">
		<h2>
			코드그룹 리스트
		</h2>
		<a href="register">New CodeGroup</a>
		<table border="1">
			<tr>
				<th align="center" width="160">그룹코드</th>
				<th align="center" width="160">그룹명</th>
				<th align="center" width="180">등록일자</th>
			</tr>
			<c:choose>
				<c:when test="${empty list}">
					<tr>
						<td colspan="3">등록된 코드그룹이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="codeGroup">
						<tr>
							<td align="center">${codeGroup.groupCode}</td>
							<td align="center"><a
								href="/codegroup/detail?groupCode=${codeGroup.groupCode}">${codeGroup.groupName}
							</a></td>
							<td align="center"><fmt:formatDate
									pattern="yyyy-MM-dd HH:mm" value="${codeGroup.regDate}" /></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>


	<!-- 메인화면 작업 영역 끝 -->

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<!-- 이벤트 처리 영역 -->
	<script>
		let result = "${msg}";
		if (result === "SUCCESS") {
			alert("코드그룹 등록이 완료되었습니다.");
		} else if (result === "FAIL") {
			alert("코드그룹 등록에 실패하였습니다.");
		}
	</script>

</body>
</html>
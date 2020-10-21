<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
</head>
<body>
	<div class="cm-com-wrapper">
		<table class="cm-com-table table">
			<thead>
				<tr class="cm-com-thead">
					<th scope="col"></th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">내용</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<!-- TODO : 페이징과 목차 -->
				<c:set var="num" value="0" />
				<c:forEach var="list" items="${comList}">
					<c:set var="num" value="${ num+1 }" />
					<tr class="cm-com-tlists">
						<th scope="row">${ num }</th>
						<!-- TODO : 게시물을 볼 수 있게 링크 연결 -->
						<td>${list.title}</td>
						<td>${list.user}</td>
						<c:set var="content" value="${list.content}" />
						<td>${ fn:substring(content,0,20) } <c:if
								test="${fn:length(content)  gt 20}" var="longcontent">
							...</c:if>
						</td>
						<td><fmt:parseDate var="parseRegDate"
								value="${ list.regDate }" pattern="yyyy-MM-dd HH:mm:ss.S" /> <fmt:formatDate
								var="formatRegDate" value="${parseRegDate}" pattern="yyyy.MM.dd" />
							${formatRegDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="cm-com-btn">
			<a class="cm-btn btn" href="./communityWriteView.jsp">글쓰기</a>
		</div>
	</div>
</body>
</html>

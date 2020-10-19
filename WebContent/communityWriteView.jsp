<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
</head>
<body>
<body>
	<!-- TODO : action 링크 변경하기 -->
	<form action="./mainView.jsp" method="POST" class="cm-community-form"
		name="comunityForm" id="comunityForm">
		<div class="form-group">
			<label for="title">제목</label> <input class="form-control"
				name="title" placeholder="제목을 입력하세요" required>
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" name="content" rows="9" required></textarea>
		</div>
		<div class="form-group">
			<label for="file">첨부파일</label> <input type="file" name="file"
				class="form-control-file">
		</div>
		<div class="form-group cm-community-btns">
			<button class="cm-btn btn">목록</button>
			<button onclick="checkForm()" class="cm-btn btn">등록</button>
		</div>
	</form>
	<script type="text/javascript" src="js/communityWrite.js"></script>
</body>
</html>

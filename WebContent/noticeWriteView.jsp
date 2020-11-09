<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
</head>
<body>
<body>
	<form action="./NoticeWrite" method="POST" class="cm-notice-form"
		name="noticeForm" id="noticeForm">
		<div class="form-group">
			<label for="title">제목</label> 
			<input class="form-control"	name="title" placeholder="제목을 입력하세요" required />
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" name="content" rows="9" required></textarea>
		</div>
		<div class="form-group">
			<label for="file">첨부파일</label> 
			<input type="file" name="file" class="form-control-file">
		</div>
		<div class="form-group cm-notice-btn-area">
			<button class="cm-btn btn" onclick="checkForm()">등록</button>
			<button class="cm-btn btn" onclick="location.href='./noticeListView.jsp'">목록</button>
		</div>
	</form>
</body>
</html>

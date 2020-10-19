function checkForm() {
	const frm = document.comunityForm;
	const title = frm.title;
	const content = frm.content;

	if (title.value.trim() == "") {
		alert("제목을 입력하세요");
		title.focus();
		return;
	}
	
	if (content.value.trim() == "") {
		alert("내용을 입력하세요");
		content.focus();
		return;
	}else{
		if(confirm("등록하시겠습니까?"))
			frm.submit();
	}
}

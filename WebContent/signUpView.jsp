<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="h3 text-center cm-sign-up-title">회원 가입</div>
			<div class="cm-explain-container text-right">
				<span class="cm-necessary-label">*</span>
				<span class="cm-neccessary-explain">필수 입력 항목</span>
			</div>
		</div>
		<div class="container cm-row-contianer">

			<div class="row cm-row">
				<div class="col">
					<span>아이디</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<input type="text" class="form-control"
						placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" />
				</div>
				<div class="col">
					<button type="button" class="btn btn-sm cm-id-btn">중복확인</button>
				</div>
			</div>
			<div class="row cm-row">
				<div class="col-3">
					<span>비밀번호</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<input type="password" class="form-control"
						placeholder="비밀번호를 입력해주세요" />
				</div>
			</div>
			<div class="row cm-row">
				<div class="col-3">
					<span>비밀번호 확인</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<input type="password" class="form-control"
						placeholder="비밀번호를 한번 더 입력해주세요" />
				</div>
			</div>
			<div class="row cm-row">
				<div class="col-3">
					<span>이름</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<input type="text" class="form-control" placeholder="이름을 입력해주세요"
						required />
				</div>
			</div>
			<div class="row cm-row">
				<div class="col">
					<span>이메일</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<input type="text" class="form-control"
						placeholder="예) email@example.com" required />
				</div>
				<div class="col">
					<button type="button" class="btn btn-sm cm-id-btn">중복 확인</button>
				</div>
			</div>
			<div class="row cm-row">
				<div class="col">
					<span>휴대폰</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<input type="number" class="form-control" placeholder="숫자만 입력해주세요"
						required />
				</div>
				<div class="col">
					<!-- <button type="button" class="btn btn-sm cm-id-btn">인증번호 받기</button> TODO 인증번호 api 구현 시 진행 -->
				</div>
			</div>
			<div class="row cm-row">
				<div class="col-3">
					<span>주소</span> <span class="cm-necessary-label">*</span>
				</div>
				<div class="cm-col-mid col-6">
					<button type="button" class="btn btn-block btn-sm cm-id-btn">
						<i class="fa fa-search cm-search-icon"></i>주소 검색
					</button>
				</div>
			</div>
			<div class="row cm-row">
				<div class="col-3">
					<span>성별</span>
				</div>
				<div class="cm-col-mid col-6">
					<div class="cm-radio-area">
						<div
							class="custom-control custom-radio custom-control-inline cm-radio">
							<input type="radio" id="customRadioInline1"
								name="customRadioInline1"
								class="custom-control-input cm-radio-input"> <label
								class="custom-control-label cm-radio-label"
								for="customRadioInline1">남자</label>
						</div>
						<div
							class="custom-control custom-radio custom-control-inline cm-radio">
							<input type="radio" id="customRadioInline2"
								name="customRadioInline1"
								class="custom-control-input cm-radio-input"> <label
								class="custom-control-label cm-radio-label"
								for="customRadioInline2">여자</label>
						</div>
						<div
							class="custom-control custom-radio custom-control-inline cm-radio">
							<input type="radio" id="customRadioInline3"
								name="customRadioInline1"
								class="custom-control-input cm-radio-input"> <label
								class="custom-control-label cm-radio-label"
								for="customRadioInline3">선택</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row cm-row">
				<div class="col-3">
					<span>생년월일</span>
				</div>
				<div class="cm-col-mid col-6">
					<input class="form-control" type="date">
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
   <div class="wrapper">
      <div class="container">
         <div class="h3 text-center cm-sign-up-title">로그인</div>
      </div>
      <div class="container cm-row-contianer">
         <form>
            <div class="form-group">
               <label for="inputId">아이디</label> <input type="email"
                  class="form-control" id="inputId" placeholder="아이디를 입력하세요"
                  required>
            </div>
            <div class="form-group">
               <label for="inputPw">비밀번호</label> <input type="password"
                  class="form-control" id="inputPw" placeholder="비밀번호를 입력하세요"
                  required>
            </div>
            <div class="form-group form-check">
               <input type="checkbox" class="form-check-input" id="keepLogin">
               <label class="form-check-label" for="keepLogin">로그인 상태 유지</label>
            </div>
            <button type="submit" class="cm-btn-login btn">로그인</button>
         </form>
      </div>
   </div>
</body>
</html>

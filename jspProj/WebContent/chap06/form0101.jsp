<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>form 연습</title>
<script type="text/javascript">
	// 1) submit 시 fn_check() 함수 실행 후 true일 때 submit됨
	function fn_check(){
		let password = $("#password").val();
		let memId = $("#memId").val();
		// 2) 비밀번호는 6자리 이상이어야 함
		// 3) 아이디는 3자리 이상이어야 함
		if(password.length >= 6 && memId.length >= 3){
			return true;
		}else{
			alert("아이디 및 비밀번호 길이를 확인해주세요");
			//선택된 요소에 focus
			$("#memId").focus();
			return false;
		}
	}
// 4) form0101_process.jsp로 폼 데이터를 전송하면
//		request 객체에 들어있는 memId, password, remember-me name에 매핑된
//		value를 화면에 출력
</script>
<body>
<div class="card" style="width: 18rem;">
	<div class="card-body">
		<div class="bd-example">
			<form action="form0101_process.jsp" method="post"
			onsubmit="return fn_check()">
			<div class="mb-3">
				<label for="memId" class="form-label">아이디</label>
				<input type="text" class="form-control"
				id="memId" name="memId" aria-describedby="idHelp"
				placeholder="아이디를 입력해주세요" req	uired />
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">비밀번호</label>
				<input type="password" class="form-control"
				id="password" name="password"
				placeholder="아이디를 입력해주세요" req	uired />
			</div>
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="remember-me"
				 name="remember-me" />
				 <label class="form-check-label" for="remember-me">자동 로그인</label>
			</div>
			<button type="submit" class="btn btn-primary">로그인</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>
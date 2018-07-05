<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1 style="text-align: center; color: #444;">회원가입</h1>

<form action="myPageModifyOk" method="post">
	<div id="wrapper">
	
		
		<!-- 비밀번호 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 600px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">비밀번호</label>
				<!-- <span style="color: red; position: relative; top: 13px;">*</span> -->
				<input type="password" name="user_pw" id="user_pw" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 94px;" maxlength="50" required="required" value="${loginUser.user_pw }" />				
				<!-- <p style="position: relative; top: -30px; left: 600px;">최소 10자이상, 영문+숫자 조합</p> -->				
			</div>
		
		<!-- 이름 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 600px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">이름</label>
				<!-- <span style="color: red; position: relative; top: 13px;">*</span> -->
				<input type="text" name="user_name" id="user_name" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 127px;" maxlength="50" required="required" value="${loginUser.user_name }"/>												
			</div>
		
		<!-- 닉네임, 텍스트, 중복버튼 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 600px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">닉네임</label>
				<!-- <span style="color: red; position: relative; top: 13px;">*</span> -->
				<input type="text" name="user_nickname" id="user_nickname" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 111px;" maxlength="50" required="required" value="${loginUser.user_nickname }"/>				
				<!-- <div style="color: white; background-color: #555; border: 1px solid #333; width: 78px; height: 28px; font-size: 1em; text-align: center; position:relative; top: -20px; left: 600px; cursor: pointer;">														
					중복검사
				</div> -->
			</div>
		
		
		<!-- 휴대폰번호 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 600px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">휴대폰번호</label>
				<!-- <span style="color: red; position: relative; top: 13px;">*</span> -->
				<input type="text" name="user_phone" id="user_phone" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 77px;" maxlength="50" required="required" value="${loginUser.user_phone }"/>								
			</div>
		
		
		<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 600px; margin: 0 auto;">		
				<label style="font-size: 1.05em; position: relative; top: 13px;">출생년도</label>
				<!-- <span style="color: red; position: relative; top: 13px;">*</span> -->
				<input type="text" name="user_birth" id="user_birth" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 94px;" maxlength="50" required="required" value="${loginUser.user_birth }"/>
		
	<!-- 지역 -->
					<div style="border-bottom: 1px solid #d5d5d5; height: 100px; width: 600px; margin: 0 auto;">					 
						<label for="join_ca1" style="font-size: 1.05em; position: relative; top: 35px;">지역</label>															
						<input type="text" name="user_loc" id="user_loc" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 35px; left: 127px;" maxlength="50" required="required" value="${loginUser.user_loc }"/>
						<%-- <select name="user_loc" id="user_loc" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 128px;" maxlength="50" required="required"><option value="${loginUser.user_loc }">:: 선택 ::</option>					
								<option value="1/">:: 서울 ::</option>
								<option value="2/">:: 경기 ::</option>
								<option value="3/">:: 강원 ::</option>
								<option value="4/">:: 충청 ::</option>
								<option value="5/">:: 전라 ::</option>
								<option value="7/">:: 제주 ::</option>
								<option value="6/">:: 경상 ::</option>
						</select>&nbsp;
								<span id="ca2_span">
								</span>
								<span id="ca3_span">
								</span> --%>
					</div>
		
		<!-- 프로필사진 -->
					<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 600px; margin: 0 auto;">
						<label style="font-size: 1.05em; position: relative; top: 13px;">프로필사진</label>						
						<input type="file" name="user_prof" id="user_prof" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 75px; width: 340px; border: 2px solid #d5d5d5;" maxlength="50" required="required" value="${loginUser.user_prof }"/>	
						<input type="hidden" name="user_num" value="${loginUser.user_num }" />											
					</div>
					
					<div style="width: 1000px;">
						<div style="padding: 10px 0 0 0; position: relative; width: 600px; margin: 0 auto;">												
							<input type="submit" value="입력" style="text-align: center; width: 45%; max-width: 180px; line-height: 40px; height: 40px; color: #fff; background: #444; font-size: 1.2em; border: 1px solid #444;" id="sub"/>						
							<!-- <div id="res" style=" text-align: center; width: 45%; max-width: 180px; line-height: 39px; height: 40px; color: #fff; background: #444; font-size: 1.2em; border: 1px solid #444; cursor: pointer; vertical-align: top; display: inline-block; height: 38px;">취소</div> -->							
						</div>
					</div>
					
	</div>
</form>

</body>
</html>
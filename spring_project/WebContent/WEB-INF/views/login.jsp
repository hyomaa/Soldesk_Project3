<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="loginOk" name="loginOk">
	<div id="wrapper">
		<div class="top_write" style="padding: 0 0 30px 0;">
			<h1 style="text-align: center; color: #444;">로그인</h1>
				<!-- <p style="margin: 0 auto; padding: 10px 0 0 0; text-align: center;">			
					<span style="color: red;">*</span>
					 표시된 항목은 반드시 입력하셔야 합니다.
				</p> -->
		</div>		
			<!-- 회원정보 입력 태그 -->
			<!--  -->
			<!-- <div style="padding: 8px 10px; font-size: 1.25em; font-weight: bold; color: #fff; background-color: #aaa; margin: 0 auto; width: 1045px;">회원정보 입력</div> -->			
			
			
			<!-- 아이디 , email text , 중복버튼 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 400px; margin: 0 auto;">			
				<label style="font-size: 1.05em; position: relative; top: 11px;">아이디</label>				
				<!-- <span style="color: red; position: relative; top: 11px;">*</span> -->
				<input type="text" name="user_id" id="user_id" style="font: 400 13.3333px Arial; width: 300px; height: 23px; position: relative; top: 11px; left: 30px;" maxlength="50" required="required" />								
				<!-- <div style="cursor:pointer; color: white; background-color: #555; border: 1px solid #333; width: 78px; height: 30px; font-size: 1em; text-align: center; position:relative; top: -20px; left: 600px;" id="re" onclick="openIdChk">																												
					중복검사
				</div> -->
			<!-- 	<input type="hidden" name="idDuplication" value="idUncheck" >	 -->		
			</div>
			
			
			<!-- ----------------------------------------------------------------------------- -->
			
			<!-- 비밀번호 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 400px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">비밀번호</label>				
				<!-- <span style="color: red; position: relative; top: 13px;">*</span> -->
				<input type="password" name="user_pw" id="user_pw" style="font: 400 13.3333px Arial; width: 300px; height: 23px; position: relative; top: 11px; left: 14px;" maxlength="50" required="required" />																
				<!-- <p style="position: relative; top: -30px; left: 600px;">최소 10자이상, 영문+숫자 조합</p> -->				
			</div>		
			
				<div style="width: 100%">				
					<div style="width: 400px; margin: 0 auto; padding-top: 50px;">					
						<input type="submit" value="로그인" style="text-align: center; width: 400px; line-height: 40px; height: 40px; color: #fff; background: #444; font-size: 1.2em; border: 1px solid #444; margin: 0 auto;" id="sub" />
						<!-- <div style="padding: 10px 0 0 0; position: relative; width: 200px; margin: 0 auto;"> -->														
					</div>																											
				</div>
			</div>					
		</div>
	

</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매칭닷컴</title>
<style type="text/css">
	#wrapper{position:relative; width: 100%; height: 945px;}
	#id:hover{background-color: orange; border-color: skyblue;}
	#pw:hover{background-color: orange; border-color: skyblue;}
	#pwr:hover{background-color: orange; border-color: skyblue;}
	#name:hover{background-color: orange; border-color: skyblue;}
	#nick:hover{background-color: orange; border-color: skyblue;}
	#tel:hover{background-color: orange; border-color: skyblue;}
</style>
<!-- ----------------------------------------------------------------------------- -->
			<!-- id 중복검사 -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script type="text/javascript">	
			  // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
	       /*  function checkValue()
	        {
	            if(!document.userInfo.user_id.value){
	                alert("아이디를 입력하세요.");
	                return false;
	            }
	            
	            if(!document.userInfo.user_pw.value){
	                alert("비밀번호를 입력하세요.");
	                return false;
	            }
	            
	            
	            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
	            if(document.userInfo.user_pw.value != document.userInfo.user_rpw.value ){
	                alert("비밀번호를 동일하게 입력하세요.");
	                return false;
	            }
	        }	 */		
	        
	        
	        
	        $(function(){
	        	
	        	$("#re").click(function(){
	        		
	        		var id = $("#user_id").val();
	        		
	        		window.open("idPop?id="+id,"idCheck","width=500,height=100")
	        		
	        		
	        	});	
	        	
	        	
	        	
	        	
	        	
	        });
	        
	        
			</script>
</head>


<body>
	<form action="insertOk" onsubmit="return checkValue()" name="userInfo" method="get">
	<div id="wrapper">
		<div class="top_write" style="padding: 0 0 30px 0;">
			<h1 style="text-align: center; color: #444;">회원가입</h1>
				<p style="margin: 0 auto; padding: 10px 0 0 0; text-align: center;">			
					<span style="color: red;">*</span>
					 표시된 항목은 반드시 입력하셔야 합니다.
				</p>
		</div>		
			<!-- 회원정보 입력 태그 -->
			<!--  -->
			<div style="padding: 8px 10px; font-size: 1.25em; font-weight: bold; color: #fff; background-color: #aaa; margin: 0 auto; width: 1045px;">회원정보 입력</div>			
			
			
			<!-- 아이디 , email text , 중복버튼 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">			
				<label style="font-size: 1.05em; position: relative; top: 11px;">아이디</label>				
				<span style="color: red; position: relative; top: 11px;">*</span>
				<input type="text" name="user_id" id="user_id" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 100px;" maxlength="50" required="required" />								
				<div style="cursor:pointer; color: white; background-color: #555; border: 1px solid #333; width: 78px; height: 30px; font-size: 1em; text-align: center; position:relative; top: -20px; left: 600px;" id="re" onclick="openIdChk">																												
					중복검사
				</div>
			<!-- 	<input type="hidden" name="idDuplication" value="idUncheck" >	 -->	
			</div>
			
			
			<!-- ----------------------------------------------------------------------------- -->
			
			<!-- 비밀번호 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">비밀번호</label>
				<span style="color: red; position: relative; top: 13px;">*</span>
				<input type="password" name="user_pw" id="user_pw" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 83px;" maxlength="50" required="required" />				
				<p style="position: relative; top: -30px; left: 600px;">최소 10자이상, 영문+숫자 조합</p>				
			</div>
			
			<!-- 비밀번호 확인 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">비밀번호 확인</label>
				<span style="color: red; position: relative; top: 13px;">*</span>
				<input type="password" name="user_rpw" id="user_rpw" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 43px;" maxlength="50" required="required"/>							
			</div>
			
			<!-- 이름 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">이름</label>
				<span style="color: red; position: relative; top: 13px;">*</span>
				<input type="text" name="user_name" id="user_name" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 116px;" maxlength="50" required="required"/>												
			</div>
			
			<!-- 닉네임, 텍스트, 중복버튼 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">닉네임</label>
				<span style="color: red; position: relative; top: 13px;">*</span>
				<input type="text" name="user_nicname" id="user_nickname" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 100px;" maxlength="50" required="required"/>
				<div style="color: white; background-color: #555; border: 1px solid #333; width: 78px; height: 28px; font-size: 1em; text-align: center; position:relative; top: -20px; left: 600px; cursor: pointer;">														
					중복검사
				</div>
			</div>
			
			<input type="hidden" name="user_grade" value="B"  required="required"/>
			
			<!-- 휴대폰번호 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">휴대폰번호</label>
				<span style="color: red; position: relative; top: 13px;">*</span>
				<input type="text" name="user_phone" id="user_phone" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 66px;" maxlength="50" required="required"/>								
			</div>
			
			<!-- 출생년도 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
				<label style="font-size: 1.05em; position: relative; top: 13px;">출생년도</label>
				<span style="color: red; position: relative; top: 13px;">*</span>
				<input type="date" name="user_birth" id="user_birth" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 82px;" maxlength="50" required="required"/>				
				
					</div>
					<!-- 지역 -->
					<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;"> 
						<label for="join_ca1" style="font-size: 1.05em; position: relative; top: 13px;">지역</label>			
						<select name="user_location" id="user_location" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 128px;" maxlength="50" required="required"><option value="선택">:: 선택 ::</option>					
								<option value="서울">:: 서울 ::</option>
								<option value="경기">:: 경기 ::</option>
								<option value="강원">:: 강원 ::</option>
								<option value="충청">:: 충청 ::</option>
								<option value="전라">:: 전라 ::</option>
								<option value="제주">:: 제주 ::</option>
								<option value="경상">:: 경상 ::</option>
						</select>&nbsp;
								<span id="ca2_span">
								</span>
								<span id="ca3_span">
								</span>
					</div>
					
		
					
					<!-- 프로필사진 -->
					<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
						<label style="font-size: 1.05em; position: relative; top: 13px;">프로필사진</label>						
						<input type="file" name="user_profile" id="user_prof" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 75px; width: 340px; border: 2px solid #d5d5d5;" maxlength="50" required="required"/>												
					</div>
					<div style="width: 100%;">
						<div style="padding: 10px 0 0 0; position: relative; width: 410px; margin: 0 auto;">						
							<input type="submit" value="확인" style="text-align: center; width: 45%; max-width: 180px; line-height: 40px; height: 40px; color: #fff; background: #444; font-size: 1.2em; border: 1px solid #444;" id="sub"/>
							<div id="res" style=" text-align: center; width: 45%; max-width: 180px; line-height: 39px; height: 40px; color: #fff; background: #444; font-size: 1.2em; border: 1px solid #444; cursor: pointer; vertical-align: top; display: inline-block; height: 38px;">취소</div>							
						</div>
					</div>					
		</div>
	</form>
</body>
</html>
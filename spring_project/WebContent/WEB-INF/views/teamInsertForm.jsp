<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>앙 스포치이</title>
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
			</script>
</head>
<body>

	
	
	<form action="teamInsertOk" method="post">
	<div id="wrapper">
		<div class="top_write" style="padding: 0 0 30px 0;">
			<h1 style="text-align: center; color: #444;">팀등록</h1>
				<p style="margin: 0 auto; padding: 10px 0 0 0; text-align: center;">			
					<span style="color: red;">*</span>
					 표시된 항목은 반드시 입력하셔야 합니다.
				</p>
		</div>		
			
			<!--  -->
			<div style="padding: 8px 10px; font-size: 1.25em; font-weight: bold; color: #fff; background-color: #aaa; margin: 0 auto; width: 1045px;">팀정보 입력</div>			
			
		
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">			
				<label style="font-size: 1.05em; position: relative; top: 11px;">팀 명</label>				
				<span style="color: red; position: relative; top: 11px;">*</span>
				<input type="text" name="team_name" id="team_name" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 100px;" maxlength="50" required="required" />								
				<div style="cursor:pointer; color: white; background-color: #555; border: 1px solid #333; width: 78px; height: 30px; font-size: 1em; text-align: center; position:relative; top: -20px; left: 600px;" id="re" onclick="openIdChk">																												
					중복검사
				</div>
			<!-- 	<input type="hidden" name="idDuplication" value="idUncheck" >	 -->	
			</div>
			
		
			
			
		
			<!-- 지역 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;"> 
				<label for="join_ca1" style="font-size: 1.05em; position: relative; top: 13px;">지역</label>			
				<select name="team_location" id="team_location" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 128px;" maxlength="50" required="required"><option value="">:: 선택 ::</option>					
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
					
			<!-- 종목 -->
			<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;"> 
				<label for="join_first" style="font-size: 1.05em; position: relative; top: 13px;">종목</label>
				<span style="color: red; position: relative; top: 13px;">*</span>			
					<select name="team_event" id="team_event" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 114px;" maxlength="50">
															
									
						<c:choose>
      	
					      	<c:when test= "${param.board_event == '1'}">
					      		<option value="1" selected="selected">:: 축구/풋살 ::</option>
					      	</c:when>
					      	
					      	<c:when test= "${param.board_event == '2'}">
					      	<option value="2" selected="selected">:: 족구 ::</option>
					      	</c:when>
					      	
					      	
					      	<c:when test= "${param.board_event == '3'}">
					      	<option value="3" selected="selected">:: 농구 ::</option>
					      	</c:when>
					      	
					      	<c:when test= "${param.board_event == '4'}">
					      	<option value="4" selected="selected">:: 배구 ::</option>
					      	</c:when>
      	
      					</c:choose>
						
					</select>	
					
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




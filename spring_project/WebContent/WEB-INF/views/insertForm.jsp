<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<input type="text" name="user_nickname" id="user_nickname" style="font: 400 13.3333px Arial; width: 415px; height: 23px; position: relative; top: 11px; left: 100px;" maxlength="50" required="required"/>
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
				<!-- <select name="user_birth" id="user_birth" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 82px;" maxlength="50">								
									<option value="" selected="selected">:: 선택 ::</option>
									<option value="2018">2018년</option>
									<option value="2017">2017년</option>
									<option value="2016">2016년</option>
									<option value="2015">2015년</option>
									<option value="2014">2014년</option>
									<option value="2013">2013년</option>
									<option value="2012">2012년</option>
									<option value="2011">2011년</option>
									<option value="2010">2010년</option>
									<option value="2009">2009년</option>
									<option value="2008">2008년</option>
									<option value="2007">2007년</option>
									<option value="2006">2006년</option>
									<option value="2005">2005년</option>
									<option value="2004">2004년</option>
									<option value="2003">2003년</option>
									<option value="2002">2002년</option>
									<option value="2001">2001년</option>
									<option value="2000">2000년</option>
									<option value="1999">1999년</option>
									<option value="1998">1998년</option>
									<option value="1997">1997년</option>
									<option value="1996">1996년</option>
									<option value="1995">1995년</option>
									<option value="1994">1994년</option>
									<option value="1993">1993년</option>
									<option value="1992">1992년</option>
									<option value="1991">1991년</option>
									<option value="1990">1990년</option>
									<option value="1989">1989년</option>
									<option value="1988">1988년</option>
									<option value="1987">1987년</option>
									<option value="1986">1986년</option>
									<option value="1985">1985년</option>
									<option value="1984">1984년</option>
									<option value="1983">1983년</option>
									<option value="1982">1982년</option>
									<option value="1981">1981년</option>
									<option value="1980">1980년</option>
									<option value="1979">1979년</option>
									<option value="1978">1978년</option>
									<option value="1977">1977년</option>
									<option value="1976">1976년</option>
									<option value="1975">1975년</option>
									<option value="1974">1974년</option>
									<option value="1973">1973년</option>
									<option value="1972">1972년</option>
									<option value="1971">1971년</option>
									<option value="1970">1970년</option>
									<option value="1969">1969년</option>
									<option value="1968">1968년</option>
									<option value="1967">1967년</option>
									<option value="1966">1966년</option>
									<option value="1965">1965년</option>
									<option value="1964">1964년</option>
									<option value="1963">1963년</option>
									<option value="1962">1962년</option>
									<option value="1961">1961년</option>
									<option value="1960">1960년</option>
									<option value="1959">1959년</option>
									<option value="1958">1958년</option>
									<option value="1957">1957년</option>
									<option value="1956">1956년</option>
									<option value="1955">1955년</option>
									<option value="1954">1954년</option>
									<option value="1953">1953년</option>
									<option value="1952">1952년</option>
									<option value="1951">1951년</option>
									<option value="1950">1950년</option>
									<option value="1949">1949년</option>
									<option value="1948">1948년</option>
									<option value="1947">1947년</option>
									<option value="1946">1946년</option>
									<option value="1945">1945년</option>
									<option value="1944">1944년</option>
									<option value="1943">1943년</option>
									<option value="1942">1942년</option>
									<option value="1941">1941년</option>
									<option value="1940">1940년</option>
									<option value="1939">1939년</option>
									<option value="1938">1938년</option>
									<option value="1937">1937년</option>
									<option value="1936">1936년</option>
									<option value="1935">1935년</option>
									<option value="1934">1934년</option>
									<option value="1933">1933년</option>
									<option value="1932">1932년</option>
									<option value="1931">1931년</option>
					</select> -->
					</div>
					<!-- 지역 -->
					<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;"> 
						<label for="join_ca1" style="font-size: 1.05em; position: relative; top: 13px;">지역</label>			
						<select name="user_loc" id="user_loc" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 128px;" maxlength="50" required="required"><option value="">:: 선택 ::</option>					
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
								</span>
					</div>
					
					<!-- 종목 -->
					
				<!-- 	<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;"> 
						<label for="join_first" style="font-size: 1.05em; position: relative; top: 13px;">종목</label>
						<span style="color: red; position: relative; top: 13px;">*</span>			
							<select name="firstevent" id="firstevent" class="join_input" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 114px;" maxlength="50"><option value="">:: 선택 ::</option>														
											<option value="1">:: 축구/풋살 ::</option>
											<option value="9">:: 족구 ::</option>
											<option value="2">:: 농구 ::</option>
											<option value="4">:: 배구 ::</option>
											<option value="5">:: 탁구 ::</option>
											<option value="6">:: 배드민턴 ::</option>
											<option value="7">:: 테니스 ::</option>
											<option value="10">:: 볼링 ::</option>
							</select>					
					</div>		 -->
				
					
					<!-- 프로필사진 -->
					<div style="border-bottom: 1px solid #d5d5d5; height: 54px; width: 1045px; margin: 0 auto;">
						<label style="font-size: 1.05em; position: relative; top: 13px;">프로필사진</label>						
						<input type="file" name="user_prof" id="user_prof" style="font: 400 13.3333px Arial; width: 100px; height: 23px; position: relative; top: 11px; left: 75px; width: 340px; border: 2px solid #d5d5d5;" maxlength="50" required="required"/>												
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
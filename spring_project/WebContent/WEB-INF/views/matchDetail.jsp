<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>매치 신청</title>
<style type="text/css">

*{
	color:#4C4C4C;
}


#contents_wrap {
		width: 1000px;
  	height: 1500px;
  
  	margin: 0 auto;
	

}

#menu_title_wrap{
  	width: 1000px;
  	height: 100px;
  /* 	background-color: yellow; */
  
  }
  
  h1 {
  	text-align: center;
  }
  
  #teaminfo_wrap{
  	
  	float:left;
  	width: 1000px;
  	height: 300px;
  /* 	background-color: pink; */
  
  }
  
  #team_area{
  	width:901px;
  	height: 300px;
  /* 	background-color: fuchsia; */
  	margin: 0 auto;
  	border: 1px solid #d5d5d5;
  
  
  }

	#team_vs{
	
	width:450px;
	height:300px;
	/* background-color: yellow; */
	float: left;
	border-right: 1px solid #d5d5d5;
		
	}
	
	
	#team_info{
	
	width:450px;
	height:300px;
	/* background-color:  green; */
	float: left;
	
	
	}
	
	
	#vs_contents{
	
	width:450px;
	height: 220px;
	margin: 40px 0;
	background-color: #EBF7FF;
	
	/* 	background-color:  red;
	 */
	
	}
	
	.team{
	
	width: 205px;
	height: 220px;
	/* background-color: gray; */
	float:left;
	
	
	}
	
	
	#vs{
	
		width:40px;
		height: 220px;
	/* 	background-color: blue; */
		float:left;
	}
	
	
	.team_img {
		
		width:100px;
		height:100px;
		margin: 0 auto;
		margin-top: 20px;
	
	}
	
	.img{
		width:100px;
		heihgt:100px;
	
	}
	
	.team_name{
	width:205px;
	margin-top: 20px;
	height: 30px;
	
	}
	
	.tname{
		text-align: center;
		font-weight: bold;
		font-size: 19px;
		margin: 0;
	}
	
	.team_record{
		width:205px;
		height:30px;
		
	
	}
	
	.record{
		text-align: center;
		font-size: 17px;
		margin: 0;
		
	}
	
	#vsp{
		margin-top: 80px;
		text-align: center;
		font-weight: bold;
		font-size: 18px;
	}
	
	
	#key_area{
		width: 100px;
		height: 300px;
		border-right: 1px solid #d5d5d5;
		float:left;
	
	
	}
	
	.key{
		width: 100px;
		height: 59px;
		border-bottom:1px solid #d5d5d5;
	
	}
	
	.keyp{
		margin:0;
		color: #4C4C4C;
		font-weight: bold;
		text-align: center;
		padding: 18.7px 0;
	
	}
	

	
	#value_area{
		width: 349px;
		height: 300px;
		/* background-color:pink; */
		float:left;
	
	
	}
	
	
	.value{
		width: 349px;
		height: 59px;
		border-bottom:1px solid #d5d5d5;
	
	
	}
	
	.valuep{
		margin:0;
		color: #4C4C4C;
		
		text-align: center;
		padding: 18.7px 0;
	}
	
	.last{
		border-bottom: none;
	}
	
	
	#btn_wrap{
		margin-top: 50px;
		width:1000px;
		height: 50px;
		float:left;
		
	
	}
	
	
	#btn_area {
		width: 270px;
		height:50px;
		margin: 0 auto;
	
	
	}
	
	
	#btn_list{
		width: 120px;
		height: 50px;
		border: 2px solid #348dc6;
		float: left;
		margin-right: 15px; 
		cursor: pointer;
	
	}
	
	#btn_match{
		width: 120px;
		height: 50px;
		border: 2px solid #348dc6;
		float:left;
		background-color: #348dc6;
		cursor: pointer;
	
	}
	
	#btn_match p{
		color:white;
	}
	
	.btnp{
		
		text-align: center;
		font-weight: bold;
	
	}
	
	
	a{
		text-decoration: none;
	
	}
	
	
	#select_area{
		margin-top: 120px;
		width: 1000px;
		height: 300px;
		float: left;
	
	}
	
	#selectform{
		width: 600px;
		
		border: 1px solid #F6F6F6;
		margin: 0 auto;
		
	
	}
	
	#selectheader{
		width: 600px;
		height: 50px;
		float:left;
		background-color: #F6F6F6;
		
	}
	
	#selectheader p{
		margin-left: 20px;
		font-weight: bold;
	}
	
	.selectlist{
		width: 600px;
		height: 50px;
		float:left;
	 	border-bottom: 1px solid #F6F6F6;
		
	}
	
	.check{
		width: 100px;
		height: 50px;
		float:left;
	
	}
	
	.check input{
			margin: 18.5px 43.5px;
	}
	
	.cteam_name{
		width: 250px;
		height:50px;
		float: left;
	
	}
	
	.cteam_name p {
	
		text-align: center;
		font-size: 15px;
		font-weight: bold;
	}
	
	.cteam_record{
		width: 250px;
		height:50px;
		float: left;
	
	}
	
	.cteam_record p{
		text-align: center;
		font-size: 15px;
		
	}
	
	#submit_area{
		
		width: 600px;
		height: 50px;
		float:left;
	 	
	
	}
	
	#submit_area input{
		margin-top: 5px;
		float:right;
		background-color: white;
		border: 2px solid gray;
	
	}
	
	
	
	

</style>


</head>
<body>

<div id="contents_wrap">
	<div id="menu_title_wrap">
		<h1>매치 신청</h1>
	</div>
	
	<div id="teaminfo_wrap">
		<div id="team_area">
			<div id="team_vs">
				<div id="vs_contents">
					<div class="team">
						<div class="team_img"><img src="resources/img/pic.png" alt="" class="img"/></div>
						<div class="team_name">
							<p class="tname">글쓴팀명</p>
						</div>
						<div class="team_record">
							<p class="record">10전 9승 0무 1패</p>
						</div>
					</div>
					
					<div id="vs"><p id="vsp">VS</p></div>
					
					<div class="team">
						<div class="team_img"><img src="resources/img/pic.png" alt="" class="img"/></div>
						<div class="team_name">
							<p class="tname">도전팀</p>
						</div>
						<div class="team_record">
							<p class="record">도전팀 모집중</p>
						</div>
					</div>
					
				</div>
			</div>
			
			
			
			
			
			<div id="team_info">
				<div id="key_area">
					<div class="key">
						<p class="keyp">지역</p>
					</div>
					<div class="key">
						<p class="keyp">경기장</p>
					</div>
					<div class="key">
						<p class="keyp">날짜</p>
					</div>
					<div class="key">
						<p class="keyp">비용</p>
					</div>
					<div class="key last">
						<p class="keyp">개설자</p>
					</div>
				</div>
				
				
				<div id="value_area">
					<div class="value">
						<p class="valuep">서울시 종로구 관철동</p>
					</div>
					<div class="value">
						<p class="valuep">경기장들어가는곳</p>
					</div>
					<div class="value">
						<p class="valuep">2018년 07월 20일 12:00</p>
					</div>
					<div class="value">
						<p class="valuep">25000원</p>
					</div>
					<div class="value last" >
						<p class="valuep">정은조</p>
					</div>	
				
				
				</div>
				
			</div>
		</div>
	</div>
	
	
	<!-- 내팀의 매치글일때는 등록버튼 안보임 추가하기 -->
	
	<div id="btn_wrap">
		<div id="btn_area">
			<div id="btn_list"><a href="#"><p class="btnp">목록으로</p></a></div>
			<%-- <c:if test="${loginUser==글쓴사람번호비교 }"></c:if> --%>
			<div id="btn_match"><a href="#"><p class="btnp">매치신청</p></a></div>
			<!-- 매치가 성사 되었을때는 
				 <c:if test="match_status로 비교"></c:if>
				<div id="btn_match"><a href="#"><p class="btnp">매치종료</p></a></div>
			 -->
		</div>
	
	</div>
	
	
	<!-- 신청중일때 -->
	<div id="select_area">
		<form action="">
			<div id="selectform">
				<div id="selectheader">
					<p>신청팀 목록</p>
				</div>
				
				
				<!-- 신청팀 들어오는대로  반복문 돌려야됨 -->
				<div class="selectlist">
					<div class="check">
						<input type="checkbox" value="팀번호"/>
					</div>
					<div class="cteam_name">
						<p>신청팀이름1</p>
					</div>
					<div class="cteam_record">
						<p>신청팀전적1</p>
					</div>
				</div>
				
				<!-- 임시로 해둔것 -->
				<div class="selectlist">
					<div class="check">
						<input type="checkbox" value="팀번호"/>
					</div>
					<div class="cteam_name">
						<p>신청팀이름2</p>
					</div>
					
					<div class="cteam_record">
						<p>신청팀전적2</p>
					</div>
					
				</div>
			
				<div id="submit_area">
					<input type="submit" value="선택"/>
				</div>
			
			</div>
		
			</form>
	</div>
	
	
	<!-- 매치 성사되면  -->
	<!-- <div id="select_area">
		
			<div id="selectform">
				<div id="selectheader">
					<p>도전팀</p>
				</div>
				
				
				
				<div class="selectlist">
					<div class="check">
					</div>
					<div class="cteam_name">
						<p>도전팀이름</p>
					</div>
					<div class="cteam_record">
						<p>도전팀전적</p>
					</div>
				</div>
				
				
		
	</div> -->
	





</div>



</body>
</html>
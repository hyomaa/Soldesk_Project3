<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title></title>
 <!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/menu.css" />

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<style type="text/css">
.mybtn {
	margin:0 auto;
	display:block;
    background-color: white; 
    color: black; 
    font-size: 14px;
    border: 2px solid #008CBA;
	}
.mybtn:hover {
    background-color: #008CBA;
    color: white;
	}
.ground_img {
    float: left;
    width: 40%;
    height: 210px;
    border-bottom: 0;
}	



	

</style>	


  
</head>
<body>

	<%
	
	String event = request.getParameter("board_event");
	
	%>


    <div id="top">
      	  <c:if test="${not empty loginUser.user_id}">    
    
      	 <ul>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">${loginUser.user_id} 님 </a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="myPage">마이페이지</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="logout">로그아웃</a>
            </li>
           
            
         </ul> 
        </c:if> 
        <c:if test="${empty loginUser.user_id}">    
         <ul>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">홈</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="insert">회원가입</a>
            </li>
         </ul>
           </c:if>  
      </div>
      
      <div id="img">
       	<c:choose>
      	
	      	<c:when test= "${param.board_event == '1'}">
	      	<img src="./resources/img/soccer.jpg" alt="" />
	      	</c:when>
	      	<c:when test= "${param.board_event == '2'}">
	      	<img src="./resources/img/footvolleyball.jpg" alt="" />
	      	</c:when>
	      	<c:when test= "${param.board_event == '3'}">
	      	<img src="./resources/img/basketball.jpg" alt="" />
	      	</c:when>
	      	<c:when test= "${param.board_event == '4'}">
	      	<img src="./resources/img/volleyball.jpg" alt="" />
	      	</c:when>
      	
      	</c:choose>
      </div>
      
   	  <div id=b-list>
           <ul>
              <li class="dropdown">
                    <a href="#" class="dropbtn">팀</a>
                    <div class="dropdown-sub">
              	 		<a href="teamInfoList?board_event=<%=event%>">팀정보</a>
              	 		<a href="teamInsert?board_event=<%=event%>">팀생성</a>
              	 	 </div> 
              </li>
               <li class="dropdown">
               		<a href="#" class="dropbtn">매치보드</a>
               		<div class="dropdown-sub">
                       <a href="#">매치신청</a>   
                   </div>
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">커뮤니티</a>
                   <div class="dropdown-sub">
                  	 
                  	  
                  	   <a href="boardList?board_event=<%=event %>&board_category=1">공지사항</a>
                        <a href="boardList?board_event=<%=event %>&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=<%=event %>&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=<%=event %>&board_category=4">팀모집게시판</a>
                   	</div>
                   
                  
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                                  <a href="stadiumList?board_event=<%=event %>">경기장안내</a>         
                   </div>
               </li>
           </ul>
       </div> 
 
		
	     <div id="boardlist">
	    <h3>전국 경기장 정보</h3>
      	 </div>
      	 
      	 <div id="teamlist">
      	
      	 <ul>
      	 	<li><a href="stadiumList?board_event=<%=event %>">전체</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=서울">서울</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=경기">경기</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=강원">강원</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=충청">충청</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=전라">전라</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=제주">제주</a></li>
      	 	<li><a href="stadiumLoc?team_event=<%=event %>&team_location=경상">경상</a></li>
      
      	 </ul>
      	 
      	
			
		
        </div>
     
     
     <div id="boardlist">
   <section class="section01">
   		<ul class="ground">
   		 <c:forEach var="s" items="${stadiumlist }">
   			<li>
   				<div>
   					<div class="ground_img">
   						<img src="./resources/stadium/${s.stadium_image}" alt="" />
   					</div>
   					<div class="ground_info">
   						<p><span>경기장명 : </span>${s.stadium_name}</p>
	  					<p><span>지  역 : </span>${s.stadium_location}<p>
	  		 <c:choose>
      			<c:when test= "${s.stadium_event == '1'}">
      				<p>종목 : 축구</p>
      			</c:when>	
      			<c:when test= "${s.stadium_event == '2'}">
      				<p>종목 : 족구</p>
      			</c:when>	
      			<c:when test= "${s.stadium_event == '3'}">
      				<p>종목 : 농구</p>
      			</c:when>	
      			<c:when test= "${s.stadium_event == '4'}">
      				<p>종목 : 배구</p>
      			</c:when>			
	  		</c:choose>	
	  				<p><span>가능요일 : </span>${s.stadium_date}<p>
	  				<p><span>가능시간 : </span>${s.stadium_time}<p>
	  		
   				</div>
   			
   			</li>	
   			
   			
   			
   			
   		
   		</c:forEach> 
   		
   		</ul>
   
   
  	</section>
   
	  	</div>
	  	
  	
  	
      
      <!-- Paging 처리 -->
      <div id="paging">
      	페이징 처리
      </div>
     
   
</body>
</html>


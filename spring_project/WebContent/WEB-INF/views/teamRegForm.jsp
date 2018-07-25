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
	
  .im{
  
  width: 30px;
  height: 30px;
  margin-top: 5px;
  }
  .imlist{
  margin-left: 10px;
  }
  .imlist a{
  padding: 0;
  }

	
</style>	
<script type="text/javascript">

</script>
  
</head>
<body>



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
                <li class="imlist"><a href="soccerMain?board_event=1&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/soccerball.jpg"></a></li>
            <li class="imlist"><a href="soccerMain?board_event=2&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/jokguball.jpg"></a></li>
            <li class="imlist"><a href="soccerMain?board_event=3&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/baseball.jpg"></a></li>
            <li class="imlist"><a href="soccerMain?board_event=4&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/Volleyball.jpg"></a></li>
           
            
         </ul> 
        </c:if> 
        <c:if test="${empty loginUser.user_id}">    
         <ul>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="./">홈</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="insert">회원가입</a>
            </li>
                <li class="imlist"><a href="soccerMain?board_event=1&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/soccerball.jpg"></a></li>
            <li class="imlist"><a href="soccerMain?board_event=2&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/jokguball.jpg"></a></li>
            <li class="imlist"><a href="soccerMain?board_event=3&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/baseball.jpg"></a></li>
            <li class="imlist"><a href="soccerMain?board_event=4&board_category=1"><img class="im" src="resources/img/portfolio/thumbnails/Volleyball.jpg"></a></li>
         </ul>
           </c:if>  
      </div>
      
     <%--  <div id="img">
      <c:choose>
      	
      	<c:when test= "${param.teamevent == '1'}">
      	<img src="./resources/img/soccer.jpg" alt="" />
      	</c:when>
      	<c:when test= "${param.teamevent == '2'}">
      	<img src="./resources/img/footvolleyball.jpg" alt="" />
      	</c:when>
      	<c:when test= "${param.teamevent == '3'}">
      	<img src="./resources/img/basketball.jpg" alt="" />
      	</c:when>
      	<c:when test= "${param.teamevent == '4'}">
      	<img src="./resources/img/volleyball.jpg" alt="" />
      	</c:when>
      	
      	</c:choose>
      </div> --%>
      
   	  <div id=b-list>
           <ul>
              <li class="dropdown">
                    <a href="#" class="dropbtn">팀</a>
                    <div class="dropdown-sub">	
                    
                    
              	 	 <a href="teamInfoList?board_event=${teamreg.teamreg_event }">팀정보</a>
              	 	 <a href="teamInsert?board_event=${teamreg.teamreg_event }">팀생성</a>
              	 	 </div> 
              </li>
               <li class="dropdown">
               		<a href="#" class="dropbtn">매치보드</a>
               		<div class="dropdown-sub">
                        <a href="matchBoard">매치신청</a>  
                   </div>
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">커뮤니티</a>
                   <div class="dropdown-sub">
                  	 
                  	  
                  	   <a href="boardList?board_event=${teamreg.teamreg_event }&board_category=1">공지사항</a>
                        <a href="boardList?board_event=${teamreg.teamreg_event }&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=${teamreg.teamreg_event }&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=${teamreg.teamreg_event }&board_category=4">팀모집게시판</a>
                   	</div>
                   
                  
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                                  <a href="stadiumList?board_event=${teamreg.teamreg_event }">경기장안내</a>         
                   </div>
               </li>
           </ul>
       </div> 
       
<h2>팀 등록하기</h2>


<form action="teamRegOk">
<h3>포지션 선택</h3>
 <c:choose>
      	
      	<c:when test= "${teamreg.teamreg_event == 1}">
      	<h2>종목 : 축구</h2>
      	<select name="teamreg_position" id="">
     	<option value="">------</option>
		<option value="골키퍼">골키퍼</option>
		<option value="수비수">수비수</option>
		<option value="미드필더">미드필더</option>
		<option value="공격수">공격수</option>
		</select>
      	</c:when>
      	<c:when test= "${teamreg.teamreg_event == 2}">
      	<h2>종목 : 족구</h2>
      	<select name="teamreg_position" id="">
      	<option value="">------</option>
      	<option value="우수비">우수비</option>
		<option value="좌수비">좌수비</option>
		<option value="우공격수">우공격수</option>
		<option value="좌공격수">좌공격수</option>
		</select>
      	</c:when>
      	<c:when test= "${teamreg.teamreg_event == 3}">
      	<h2>종목 : 농구</h2>
      	<select name="teamreg_position" id="">
      	<option value="">------</option>
      	<option value="센터">센터</option>
		<option value="가드">가드</option>
		<option value="슈팅가드">슈팅가드</option>
		<option value="포워드">포워드</option>
		<option value="스몰포워드">스몰포워드</option>
		</select>
      	</c:when>
      	<c:when test= "${teamreg.teamreg_event == 4}">
      	<h2>종목 : 배구</h2>
      	<select name="teamreg_position" id="">
      	<option value="">------</option>
      	<option value="세터">세터</option>
		<option value="센터">센터</option>
		<option value="윙 공격수">윙 공격수</option>
		<option value="리베로">리베로</option>
		</select>
      	</c:when>
      	
      	</c:choose>




<input type="submit" value="등록하기" />

</form>

</body>
</html>
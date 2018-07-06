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

	<% 
	
	
	
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
      
      
      
       <div id=b-list>
           <ul>
              <li class="dropdown">
                    <a href="#" class="dropbtn">팀</a>
                    <div class="dropdown-sub">	
                    
                    
              	 	 <a href="teamInfoList?board_event=${myteam.team_event }">팀정보</a>
              	 	 <a href="teamInsert?board_event=${myteam.team_event }">팀생성</a>
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
                  	 
                  	  
                  	   <a href="boardList?board_event=${myteam.team_event }&board_category=1">공지사항</a>
                        <a href="boardList?board_event=${myteam.team_event }&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=${myteam.team_event }&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=${myteam.team_event }&board_category=4">팀모집게시판</a>
                   	</div>
                   
                  
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                                  <a href="stadiumList?board_event=${myteam.team_event }">경기장안내</a>         
                   </div>
               </li>
           </ul>
       </div> 

	<h2>${myteam.team_name } 팀에 등록되었습니다!</h2>

</body>
</html>
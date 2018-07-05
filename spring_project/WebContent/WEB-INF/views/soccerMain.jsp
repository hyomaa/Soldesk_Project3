<%@page import="org.springframework.web.bind.annotation.SessionAttribute"%>
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
  
  
</head>
<body>

	<%
	
	String event = request.getParameter("board_event");
	int category = Integer.parseInt(request.getParameter("board_category"));
	%>
 
 <%-- 	<c:choose>
    		<c:when test="${param.userId == null}"></c:when> --%>
    
    
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
              <a class="nav-link js-scroll-trigger" href="logOut">로그아웃</a>
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
         	<%-- <c:when test="${param.userId != null}"></c:when>
         	<div id="top">
         	<span><%=id %> 님 환영합니다.</span>
         </div>
         </c:choose>
       --%>
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
      
      
      <div id ="wrap">
   	 <div id=b-list>
           <ul>
              <li class="dropdown">
                     <a href="teamInfoList?board_event=${board_event}" class="dropbtn">팀</a> 
                    <div class="dropdown-sub">
              	 	 <a href="teamInfoList?board_event=${board_event}">팀정보</a>
              	 	 <a href="teamInsert?board_event=${board_event}">팀생성</a>
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
                  	   <a href="boardList?board_event=${board_event}&board_category=1">공지사항</a>
                        <a href="boardList?board_event=${board_event}&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=${board_event}&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=${board_event}&board_category=4">팀모집게시판</a>
                   </div>
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                       <a href="stadiumList?board_event=${board_event}">경기장안내</a>            
                   </div>
               </li>
           </ul>
       </div>



	<div id="boardlist">
   <section class="section01">
	   	<div class="websize">

	  		<div class="lt">
  				<p class="btitle">공지사항</p>
	  			<div class="bcontents">
	  			<table>
			  	 <tr>
		            <th width="10%">번호</th>
		            <th width="40%">제목</th>
		            <th width="10%">작성자</th>
		            <th width="20%">작성일</th>
		            <th width="10%">조회</th>
		            <th width="10%">추천</th>
		          </tr>
       
        <c:forEach var="b" items="${boardlist }" end="5" step="1" > 
		
		<tr>
			<td>${b.board_num}</td>
			<td id="title"><a href="boardDetail?no=${b.board_num }&board_category=<%=category%>&board_event=<%=event%>">
						${b.board_title}</a></td>
			<td>${b.board_writer}</td>
			<td>${b.board_date}</td>
			<td>${b.board_hits  }</td>
			<td>${b.board_nomination }</td>
		</tr>
		
		</c:forEach> 
		
	 </table>
	  			 	
	  			
	  			</div>	
	  					
	  		</div>
	  	
	  		<div class="rt">
	  				<p class="btitle">무슨 게시판2</p>	
	  				<div class="bcontents">
	  			
	  			
	  			</div>	
	  		</div>
	  	</div>
  	</section>
  	
  	<section class="section02">
  		<div class="websize">

  		<div class="lt">
  			<p class="btitle">무슨 게시판3</p>	
  			<div class="bcontents">
	  			
	  			
	  			</div>	
  		</div>
  	
  		<div class="rt">
  			<p class="btitle">무슨 게시판4</p>	
  			<div class="bcontents">
	  			
	  			
	  			</div>	
  		</div>
  	</div>
  	
  	
  </section>
  </div>
  </div>
</body>
</html>



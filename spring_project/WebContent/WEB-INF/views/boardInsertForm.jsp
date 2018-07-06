<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/menu.css" />
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
<style type="text/css">
 
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function sendData(){
		
		
	};

	
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
              <a class="nav-link js-scroll-trigger" href="#about">홈</a>
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
      
      <div id="img">
      	<c:choose>
	      	
	      
		    <c:when test= "${board_event == '1'}">
	      	<img src="./resources/img/soccer.jpg" alt="" />
	      	</c:when>
	      	<c:when test= "${board_event == '2'}">
	      	<img src="./resources/img/footvolleyball.jpg" alt="" />
	      	</c:when>
	      	<c:when test= "${board_event == '3'}">
	      	<img src="./resources/img/basketball.jpg" alt="" />
	      	</c:when>
	      	<c:when test= "${board_event == '4'}">
	      	<img src="./resources/img/volleyball.jpg" alt="" />
	      	</c:when>
      	
      	</c:choose>
      </div>
      
   	  <div id=b-list>
           <ul>
              <li class="dropdown">
                    <a href="#" class="dropbtn">팀</a>
                    <div class="dropdown-sub">
              	 	 <a href="teamInfoList?board_event=${board_event }">팀정보</a>
              	 	<a href="teamInsert?board_event=${board_event }">팀생성</a>
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
                  	    <a href="boardList?board_event=${board_event }&board_category=1">공지사항</a>
                        <a href="boardList?board_event=${board_event }&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=${board_event }&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=${board_event }&board_category=4">팀모집게시판</a>
                   </div>
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                        <a href="stadiumList?board_event=${board_event }">경기장안내</a>               
                   </div>
               </li>
           </ul>
       </div> 
 
 
 
	    <div id="boardlist">
	     	
	     <c:choose>
      		<c:when test= "${board_category == 1}">
	      		<h3>공지사항</h3>
	      	</c:when>
	        <c:when test= "${board_category == 2}">
	      		<h3>자유게시판</h3>
	      	</c:when>
	      	<c:when test= "${board_category == 3}">
	      		<h3>팀가입인사</h3>
	      	</c:when>
	      	<c:when test= "${board_category == 4}">
	      		<h3>모집게시판</h3>
	      	</c:when>
      	</c:choose>
	     
	    </div>
       
       
<div class="container">


	<table class="table table-bordered">
      <form action="boardInsertOk" method="post" encType="multiplart/form-data">
        <input type="hidden" name="board_event" value="${board_event }" />
        <input type="hidden" name="board_writer" value="${loginUser.user_name}" />
        <input type="hidden" name="user_num"  value="${loginUser.user_num}"/>
        	<tr>
        		<th>종류 : </th>
        		<td>
        			<select name="board_category">
        			
        			<c:choose>
	      	
	     			 	<c:when test= "${param.category == 1}">
	      					 <option value="1" selected="selected">공지사항</option>
	      					 <option value="2">자유게시판</option>
	      					 <option value="3">팀가입인사</option>
	      					 <option value="4">모집게시판</option>
	      					 
	      				</c:when>
        				<c:when test= "${param.category == 2}">
        					 <option value="1">공지사항</option>
	      					 <option value="2" selected="selected">자유게시판</option>
        					 <option value="3">팀가입인사</option>
	      					 <option value="4">모집게시판</option>
        				</c:when>
        				<c:when test= "${param.category == 3}">
        					 <option value="1">공지사항</option>
	      					 <option value="2">자유게시판</option>
	   						 <option value="3" selected="selected">팀가입인사</option>
	   						  <option value="4">모집게시판</option>
	   					</c:when>
	   					 <c:when test= "${param.category == 4}">
	   						 <option value="1">공지사항</option>
	      					 <option value="2">자유게시판</option>
	      					 <option value="3">팀가입인사</option>
	    					<option value="4" selected="selected">모집게시판</option>
  						</c:when>
  					</c:choose>
  					
  					</select>
  				</td>
        	</tr>
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="board_title" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="30" rows="20" placeholder="내용을 입력하세요. " name="board_contents" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" placeholder="파일을 선택하세요. " name="board_image" class="form-control"/></td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록"  class="pull-right" />
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="목록"  class="mybtn" onclick="javascript:location.href='boardList?board_category=${board_category }&board_event=${board_event }'"/>
                </td>
            </tr>
        </form>
	</table>
</div>
</body>






</body>
</html>


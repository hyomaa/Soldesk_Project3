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
	function prt(){
		alert("매치 등록이 완료되었습니다.");
	}

	
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
      
     
      
   	  <div id=b-list>
           <ul>
              <li class="dropdown">
                    <a href="#" class="dropbtn">팀</a>
                    <div class="dropdown-sub">
              	 	 <a href="teamInfoList?board_event= 이벤트값 ">팀정보</a>
              	 	<a href="teamInsert?board_event= 이벤트값">팀생성</a>
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
                  	    <a href="boardList?board_event= 이벤트 &board_category=1">공지사항</a>
                        <a href="boardList?board_event= 이벤트 &board_category=2">자유게시판</a>
                        <a href="boardList?board_event= 이벤트 &board_category=3">팀가입인사</a>
                        <a href="boardList?board_event= 이벤트 &board_category=4">팀모집게시판</a>
                   </div>
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                        <a href="stadiumList?board_event= 이벤트">경기장안내</a>               
                   </div>
               </li>
           </ul>
       </div> 
 
 
 
	    <div id="boardlist">
	     	
	   <h3>매치등록</h3> 
	     
	    </div>
       
       
<div class="container">


      <form action="matchRegOk" method="post">
        <input type="hidden" name="user_num" id="" value="${loginUser.user_num}" />
        <input type="hidden" name="team_num" id="" value="8" />	
	<table class="table table-bordered">
       
        	<tr>
        		<td>날짜 및 시간</td>
			<th>
				<input type="date" name="matchreg_date" id="" placeholder="날짜를 선택하세요"/>
				<input type="time" name="matchreg_time" id="" />
			</th>
        		<th>종목 : </th>
        		<td>
        			<select name="m_select" id="m_select">
						<option value="0" selected="selected">--선택--</option>
						<option value="1">축구</option>
						<option value="2">족구</option>
						<option value="3">농구</option>
						<option value="4">배구</option>
				</select>
  				</td>
  				
        	</tr>
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="board_title" class="form-control"/></td>
            	<th>경기장 : </th>
        		<td>
        			<input type="text" name="matchreg_stadium" value="1" id="스타디움no" /><input type="button" value="검색" id="stabtn" />
				
  				</td>
            <tr>
                <th>내용: </th>
                <td colspan="3"><textarea cols="30" rows="20" placeholder="내용을 입력하세요. " name="board_contents" class="form-control"></textarea></td>
            </tr>
            
           
            <tr>
                <td colspan="4">
                    <input type="submit" value="등록"  class="pull-right" onclick="prt()"/>
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="목록"  class="mybtn" onclick="javascript:location.href='boardList?board_category=카테고리&board_event=이벤트'"/>
                </td>
            </tr>
	</table>
        </form>
</div>
</body>






<%-- 

<form action="matchRegOk" method="post">
	<table>
		<tr>
			<th>
				<input type="hidden" name="user_num" id="" value="${loginUser.user_num }" />
				<input type="hidden" name="team_num" id="" value="${loginUser.user_num }" />
				
				
			</th>
		</tr>
		
		<tr>
			<td>matchreg_stadium</td>
			<th>
				<input type="text" name="matchreg_stadium" id="" />
			</th>
		</tr>
		
		<tr>
			<td>team_num</td>
			<th>
				<input type="text" name="team_num" id="" />
			</th>
		</tr>
		
		<tr>
			<td>matchreg_event</td>
			<th>
				<!-- <input type="text" name="matchreg_event" id=""/> -->
				<select name="m_select" id="m_select">
					<option value="0" selected="selected">--선택--</option>
					<option value="1">축구</option>
					<option value="2">족구</option>
					<option value="3">농구</option>
					<option value="4">배구</option>
				</select>
			</th>
		</tr>
		
		
		<tr>
			<td>matchreg_date</td>
			<th>
				<input type="date" name="matchreg_date" id="" />
			</th>
		</tr>
		
		<tr>
			<th>matchreg_time</th>
			<td>
				<input type="text" name="matchreg_time" id="" />
			</td>
		</tr>
		

	
		<tr>
			<td colspan="2">
				<input type="submit" value="입력" />
			</td>
		</tr>		
	</table> 
	
	
</form>--%>
</body>
</html>
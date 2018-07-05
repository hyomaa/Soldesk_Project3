<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href='resources/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='resources/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='resources/fullcalendar/lib/moment.min.js'></script>
<script src='resources/fullcalendar/lib/jquery.min.js'></script>
<script src='resources/fullcalendar/fullcalendar.min.js'></script>
<script src="resources/js/json2.js"></script>


<script type="text/javascript">



$(document).ready(function() {
	
	
	var loc = "전체";
	
	
	/* ${data}는  testclass에서 넘어옵니다 */
	

	$(".loc").click(function(){
		
		loc = $(this).attr('id');
		$(".loc").css('border','1px solid #D5D5D5');
		$(this).css('border','1px solid blue');	
	});
	
	
	 $('#calendar').fullCalendar({
	      header: {
	        left: 'prev,next',
	        center: 'title',
	        right: 'month'
	      },
	      defaultDate: '2018-07-12',
	      navLinks: true, 
	      editable: false,
	      selectable: true,
	      eventLimit: true, 
	      events: ${data},           
	      eventClick: function(event) {

	    	  		console.log(loc);
	    	  		console.log(event.start._i);
	    			location.href = "/spring_project/matchBoard?loc="+loc+"&date="+event.start._i;

	    	    
	    	    $('h1').css('color', 'red');

	    	  }
	      
	      
	    });
	    
	
	
	
	
  });//

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    width: 500px;
	float : left;   
  }
  
  #contents_wrap {
  	width: 1000px;
  	height: 1500px;
  	/* background-color: green; */
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


	#select_area {
		width: 460px;
		height: 413.391px;
		float: left;
		margin-right: 40px;
		background-color: #F6F6F6;
	}	
	
	#select_area p{
	
		text-align: center;
		font-size: 15px;
		
	}
	
	#pp{
		color: #353535;
		font-weight: bold;
		margin: 20px 0;
	
	}
	
	
	
	.loc{
		width: 150px;
		height: 50px;
		background-color: white;
		float: left;
		margin: 2px;
		border: 1px solid #D5D5D5;
		cursor: pointer;
	}
	
	#loc_area{
		
		width: 315px;
		height: 250px;
	/* 	border:1px solid black; */
		margin: 0 auto;
	
	}
	
	#match_reg{
	
		width: 315px;
		height: 70px;
		margin: 0 auto;
	
	}
	
	
	
	
	#matchbtn{
		width: 150px;
		height: 50px;
		background-color: #4C4C4C;
		cursor: pointer;
		margin: 10px auto;
		
	
	}
	
	#matchbtn p{
		
		color: white;
		font-weight: bold;
		margin: 0;
		padding: 15px;
	
	}
	

	#list_title{
		width: 1000px;
		float: left;
		margin: 90px 0;
	}
	
	h2{
		text-align: center;
	}
	
	#list_wrap{
		float:left;
		width: 1000px;
	
	}
	
	#list {
		width: 700px;
		margin: 0 auto;
		border-top: 1px solid black;
		border-right: 1px solid black;
		border-left: 1px solid black;
	
	}
	
	
	#listhead{
		width: 700px;
		background-color: #F6F6F6;
		border-bottom: 1px solid gray;
		
	
	
	}
	
	#listhead p {
		margin: 0;
		padding: 10px;
		font-weight: bold;
		
	}
	
	
	
	
	
	.listcontents{
		width: 700px;
		height: 100px;
		border-bottom: 1px solid gray;
	
	}
	
	
	
	.listleft {
		width:230px;
		height:100px;
		float:left;
	
	}
	
	
	.teamname{
		width:230px;
		height: 60px;
	
		
	}
	
	.teamname p{
		font-size: 20px;
		font-weight: bold;
		margin: 0;
		padding: 21.5px 0;
		text-align: center;
	}
	
	
	.teamrecord p{
	
		font-weight: bold;
		margin: 0;
	  text-align: center;
	
		
	}
	
	
	
	.listmid{
		
		width:300PX;
		height:100px;
		
		float:left;
	
	}
	
	.matchdate{
		width: 300px;
		height:100px;
		color:#3a87ad;
	
	}
	
	
	.matchdate p{
		margin: 0;
		text-align: center;
		font-size: 14px;
		padding: 41px 0;
	}
	
	
	.listright{
		width:170px;
		height:100px;
	
		float:left;
	}
	
	
	.matchdetail {
	
		width: auto;
		margin: 41px 0;
		
	
	}
	
	.matchdetail span {
		
		padding: 8px;
		font-weight: bold;
		color: gray;
		border: 2px solid gray;
		margin: 0 38px;
		text-align: center;
		cursor: pointer;
	
	}
	
	
	
	a{
		text-decoration: none;
	}
	

	
</style>
</head>
<body>

<div id="contents_wrap">

	<div id="menu_title_wrap">
	 	<h1>매치신청</h1>
	</div>
	
	
	
	 
	 <div id="select_area">
		 <p id="pp">지역별 검색</p>
		 
		 <div id="loc_area">
			 <div class="loc" id="전체"><p>전체</p></div>
			 <div class="loc" id="서울"><p>서울</p></div>
			 <div class="loc"  id="경기"><p>경기</p></div>
			 <div class="loc" id="강원"><p>강원</p></div>
			 <div class="loc"  id="충북"><p>충북</p></div>
			 <div class="loc"  id="전라"><p>전라</p></div>
			 <div class="loc"  id="경상"><p>경상</p></div>
			 <div class="loc"  id="제주"><p>제주</p></div>
	 	</div>

	  	<div id="match_reg">
	 		<div id="matchbtn"><p>매치등록</p></div>
	 	</div>
	 	
	 </div>
	 	
	 
	 
	  <div id='calendar'></div>
	  
	  
	  <div id="list_title">
	  	<h2>(날짜 넘어오는 부분)의 매치</h2>
	  </div>
	  
	
		<div id="list_wrap">
			<div id="list">
				<div id="listhead"><p>오늘의 매치</p></div>
				
				<!-- 매치 팀정보 들어가는 부분 -->
				<div class="listcontents">
					<div class="listleft">
						<div class="teamname"><p>테스트팀</p></div>
						<div class="teamrecord"><p>10전 9승 0무 1패</p></div>
					</div>
					<div class="listmid">
						<div class="matchdate"><p>2018.07.20 12:00 에 매치합시다</p></div>
					</div>
					<div class="listright">
						<div class="matchdetail"><a href="matchDetail?매칭번호전달"><span>자세히 보기</span></a></div>
					</div>
				</div>
				<div class="listcontents">
					<div class="listleft">
						<div class="teamname"><p>테스트팀</p></div>
						<div class="teamrecord"><p>10전 9승 0무 1패</p></div>
					</div>
					<div class="listmid">
						<div class="matchdate"><p>2018.07.20 12:00 에 매치합시다</p></div>
					</div>
					<div class="listright">
						<div class="matchdetail"><a href="matchDetail"><span>자세히 보기</span></a></div>
					</div>
				</div>
				
			</div>
		
		</div>
	  

	
	  
	 
</div>

</body>
</html>
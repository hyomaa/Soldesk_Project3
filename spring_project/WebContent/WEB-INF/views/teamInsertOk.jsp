<%@page import="kr.co.soldesk.domain.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<


<script type="text/javascript">

<%

int event = Integer.parseInt(request.getParameter("board_event"));
%>
	
	
	window.onload=function(){
		setTimeout(function(){
			alert("팀이 등록되었습니다");
			
			
			location.href="teamInfoList?board_event="+<%=event%>;
		},100);
	}

	
	</script>




</head>
<body>
	



</body>
</html>
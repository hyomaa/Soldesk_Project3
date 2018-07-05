<%@page import="kr.co.soldesk.domain.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<% int event = Integer.parseInt(request.getParameter("board_event")); %>

<script type="text/javascript">



	
	window.onload=function(){
		setTimeout(function(){
			alert("<%=event%>");
			
		/* 	
			location.href="teamInfoList?board_event=1"; */
		},100);
	}

	
	</script>




</head>
<body>
	



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>MatchInfo</h2>
	
	<table>
		<tr>
			<th>매치정보</th>
		</tr>
	
		 <c:forEach var="mi" items="${matchInfo }"> 
		<tr>
			<td>등록번호 : ${mi.matchreg_num}</td>
			<td>팀 번호 : ${mi.team_num }</td>
			<td>경기장 : ${mi.stadium_num }</td>
			<td>종목 : ${mi.matchreg_event }</td>
			<td>매치 날짜 : ${mi.matchreg_date }</td>
			<td>경기시간 : ${mi.matchreg_time }</td>
		</tr>
		
		</c:forEach> 
	
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>matchRegOk.jsp</h2>

<h2>${teamInfoDTO.team_name }팀의<br>
	${loginUser.user_name }님이 매칭을 등록하였습니다.</h2>

	<table>
		<tr>
			<th>매치글</th>
		</tr>
	
		 <c:forEach var="mt" items="${matchReg }"> 
		<tr>
			<td>매칭 번호 : <a href="matchDetail?matchreg_num=${mt.matchreg_num}">${mt.matchreg_num}</a></td>
			<td>팀 번호 : ${mt.team_num }</td>
			<td>유저 번호 : ${mt.user_num }</td>
			<td>구장 번호 : ${mt.stadium_num }</td>
			<td>종목 : ${mt.matchreg_event }</td>
		</tr>
		
		</c:forEach> 
	
	</table>

</body>
</html>
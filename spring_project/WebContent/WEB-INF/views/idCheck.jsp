<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheck</title>
</head>
<body>


 <c:if test="${check == 1 }">
 	<h3>${id } 는 사용 가능 합니다.</h3>
 </c:if>

 <c:if test="${check == 0 }">
 	<h3>${id } 는 중복된 아이디 입니다.</h3>
 </c:if>






</body>
</html>
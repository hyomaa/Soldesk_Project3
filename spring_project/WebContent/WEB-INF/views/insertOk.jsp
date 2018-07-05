<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertOk</title>
</head>
<body>	
	<script type="text/javascript">
	
	window.onload=function(){
		alert("회원가입 되었습니다. 로그인 후 사용해 주세요");
		
		location.href="/spring_project/login";
	}
	
	</script>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="i" value="11"/>
	<c:if test="${i ne 10 }">
		<c:out value="i is not equal to 10"/>
	</c:if>
	<br>=======================<br>
	
	<c:set var="i" value="10"/>
	<c:choose>
		<c:when test="${i eq 5 }">
			<c:out value="i is equal to 5" />
		</c:when>
		<c:when test="${i eq 10 }">
			<c:out value="i is equal to 10" />
		</c:when>
		<c:otherwise >
			<c:out value="i is greater than 10" />
		</c:otherwise>	
	</c:choose>
		
	
</body>
</html>
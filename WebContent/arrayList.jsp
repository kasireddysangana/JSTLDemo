<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList" %>
<%
	ArrayList<String> slist = new ArrayList<String>();
	slist.add("Apple"); slist.add("Banana"); slist.add("Custard"); slist.add("Dragon");
	request.setAttribute("slist", slist);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="s" items="${slist}">
		${s}<br>
	</c:forEach>
	
	<br>================<br>
	<c:forTokens items="kasi,Anu,Adi,Netra" delims="," var="i">
		${i}<br>
	</c:forTokens>
</body>
</html>
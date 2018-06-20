<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@192.168.0.7:1521:xe" user="satya" password="Hanuman1" />

<sql:query dataSource="${ds}" var="rs">
	select * from employee
	</sql:query>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Functions</title>
</head>
<body>
	<table width=40% bgcolor=lightyellow border=1 align=center>
		<tr>
			<td>Employee id</td>
			<td>Employee Name</td>
			<td>Employee Name Length</td>
			<td>Employee deptno</td>
		</tr>
		<c:forEach var="emp" items="${rs.rows}">
		<tr>
			<td>${emp.empid}</td>
			<td>${fn:toUpperCase(emp.ename)}</td>
			<td align="center">${fn:length(emp.ename)}</td>
			<td align="center">${emp.depno}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@192.168.0.7:1521:xe" user="satya" password="Hanuman1" />
<sql:query var="rs" dataSource="${ds}">
	select * from employee where salary>=?
	<sql:param value="5000"/>
</sql:query>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width=40% bgcolor=lightyellow border=1 align=center>
		<tr>
			<td>Employee id</td>
			<td>Employee Name</td>
			<td>Employee Salary</td>
			<td>Employee deptno</td>
		</tr>
		<c:forEach var="emp" items="${rs.rows}">
		<tr>
			<td>${emp.empid}</td>
			<td>${emp.ename}</td>
			<td>${emp.salary}</td>
			<td>${emp.depno}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
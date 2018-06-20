<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@192.168.0.7:1521:xe" user="satya" password="Hanuman1" />

<%--<sql:update dataSource="${ds}" var="count">
	 insert into employee(empid,ename,salary,depno) values(?,?,?,?)
	<sql:param value="116"/>
	<sql:param value="Adilakshmi"/>
	<sql:param value="76000"/>
	<sql:param value="30"/> --%>
	
	<%-- update employee set username=? where ename=?
	<sql:param value="kasireddy"/>
	<sql:param value="kasireddy"/> --%>
	
	<%-- delete from employee where empid=?
	<sql:param value="0"/> 
	</sql:update>
	--%>
	<%-- For Batch update --%>
	<sql:transaction dataSource="${ds}">
		<sql:update>
			insert into employee(empid,ename,salary,depno) values(120,'Arun',35000,20)
		</sql:update>
		<sql:update>
			update employee set salary=salary+1000
		</sql:update>
		<sql:update>
			delete from employee where salary=?
			<sql:param value="5000"/>
		</sql:update>
		
	</sql:transaction>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <c:if test="${count eq 1}">
		<!-- Row Inserted Successfully -->
		<!-- Row Updated Successfully -->
		Row Deleted Successfully
	</c:if> --%>
	Three DML Statements Executed
</body>
</html>
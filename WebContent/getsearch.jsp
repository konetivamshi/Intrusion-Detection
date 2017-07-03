<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.Intrusion.PojoClass.EmpSalaryPojo"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.Intrusion.Connection.ConnectionImpl"%>
<%@page import="org.hibernate.Session"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
    border: 1px solid skyblue;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String sn=request.getParameter("ver");
if(sn.length()>0)
{
System.out.println("Enter name ==="+sn);
EmpSalaryPojo pojo=new EmpSalaryPojo();
Session sessn=ConnectionImpl.getSession();
Transaction transaction=sessn.beginTransaction();
Query query=sessn.createQuery(" FROM  EmpSalaryPojo empn where empn.empname like :emp ");
query.setParameter("emp", "%" + sn + "%");
List list=query.list();

Iterator itr=list.iterator();

while(itr.hasNext())
{
	EmpSalaryPojo	poj=(EmpSalaryPojo)itr.next();
	
	String name= poj.getEmpname();
    String empid=poj.getEmpid();
    String salary=poj.getSalary();
    String month=poj.getMonth();
    String filename=poj.getPayslip();
    
%>
<table><tr>
<th>NAME</th><th>EMP ID</th><th>SALARY</th><th>MONTH</th><th>FILE NAME</th><th>Download</th></tr>
<tr><td>
<%=name %>
</td>
<td>
<%=empid %></td>
<td><%=salary %></td>
<td><%=month  %></td>
<td><%=filename %></td>
<td>
<a href="Download?fname=<%=filename%>" class="download">Download Here</a></td>
</tr>
</table>
             
<%} }else {%>
<tr>
<td></td><td><font color="green" size="4">Enter Query</font></td>	
			</tr>
<%} %>
</body>
</html>
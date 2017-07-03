

<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.criterion.Criterion"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.Intrusion.PojoClass.userRegistrationPojoClass"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Transaction transaction;
Query query;
String keyvalue="";
try
{
	

String key=request.getParameter("key");
userRegistrationPojoClass urpc=new userRegistrationPojoClass();
Session sesion=ConnectionImpl.getSession();
transaction=sesion.beginTransaction();
query=  sesion.createQuery("select pass from TlRegisterPojo where pass=:passs");
query.setParameter("passs", key);
List list=query.list();

Iterator itr=list.iterator();
while(itr.hasNext())
{
	 keyvalue=(String)itr.next().toString();

}

if(key.equals(keyvalue))
{
	%><p id="msg">sucess</p><%
}
else
{%> <p id="msg">unsucess</p><%
		
		

}
%>
<% }catch(Exception e){
e.printStackTrace();
}
%>
<form action="Delete" id="iddelete">
<input type="hidden" name="uname" id="username">

</form>

</body>
</html>
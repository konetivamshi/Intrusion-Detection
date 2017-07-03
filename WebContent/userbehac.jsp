<%@page import="com.Intrusion.PojoClass.TlBehaviour"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.Intrusion.Dao.DaoImplementation"%>
<%@page import="com.Intrusion.Interface.Interfce"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <table class="table table-bordered table-hover tablesorter">
                <head>
                  <tr>
                    <th>Employee Id <i class="fa fa-sort"></i></th>
                    <th>PROJECT VIEW <i class="fa fa-sort"></i></th>
                    <th>SALARY DETAILS VIEW <i class="fa fa-sort"></i></th>
                     <th>PAYSLIP DOWNLOAD <i class="fa fa-sort"></i></th>
                    <th>SALARY DELETE <i class="fa fa-sort"></i></th>
                    <th>PROJECT ALLOCATION <i class="fa fa-sort"></i></th>
                    <th>MEETING VIEW <i class="fa fa-sort"></i></th>
                    <th>USER REPORT VIEW <i class="fa fa-sort"></i></th>
                    <th>USER MODULE VIEW <i class="fa fa-sort"></i></th>
                    
                  </tr>
                </head>
                <%
                Interfce mi=new DaoImplementation();
      List<String> list=         mi.AdminBehaviour();
               Iterator it=list.iterator();
               while(it.hasNext())
               {
            	   TlBehaviour tl=(TlBehaviour)it.next();
            String empid=tl.getEmpid();
            String projectview=tl.getProjectView();
            String salview=tl.getSalaryDetailsView();
            String 	paydown=tl.getPaySlipDownload();
            String 	saldel = tl.getSalaryDelete();
            String 	proall = tl.getProjectAllocation();
            String 	metview = tl.getMeetingsView();
            String  uview  =  tl.getUserReportView();
            String  mview =  tl.getMeetingsView();
            	   %>
            	   <tr>
            	   <td><%=empid %></td>
            	   <td><%=projectview %></td>
            	   <td><%=salview %></td>
            	   <td><%=paydown %></td>
            	   <td><%=saldel %></td>
            	   <td><%=proall %></td>
            	   <td><%=metview %></td>
            	   <td><%=uview %></td>
            	   <td><%=mview %></td>
            	  
            	   </tr>
            	   
              <% }
                
                %>
               
</body>
</html>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Intrusion.PojoClass.TlBehaviour"%>
<%@page import="java.util.List"%>
<%@page import="com.Intrusion.Dao.DaoImplementation"%>
<%@page import="com.Intrusion.Interface.Interfce"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Administrator</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="active"><a href="AdminWelcome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
            <!-- <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i> Charts</a></li>
            <li><a href="TeamInfor.jsp"><i class="fa fa-table"></i> Team Information</a></li>
            <li><a href="AttackerInfor.jsp"><i class="fa fa-edit"></i> Attacker Information</a></li> -->
            <li><a href="UserBehaviour.jsp"><i class="fa fa-font"></i> User Behaviour</a></li>
            <!--<li><a href="bootstrap-elements.html"><i class="fa fa-desktop"></i> Bootstrap Elements</a></li>-->
<!--             <li><a href="bootstrap-grid.html"><i class="fa fa-wrench"></i> Bootstrap Grid</a></li> -->
           <!--  <li><a href="blank-page.html"><i class="fa fa-file"></i> Blank Page</a></li> -->
            <!-- <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Dropdown Item</a></li>
                <li><a href="#">Another Item</a></li>
                <li><a href="#">Third Item</a></li>
                <li><a href="#">Last Item</a></li>
              </ul>
            </li> -->
          </ul>

          <!-- <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown messages-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">7</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">7 New Messages</li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">Hey there, I wanted to ask you something...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">Hey there, I wanted to ask you something...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">Hey there, I wanted to ask you something...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li><a href="#">View Inbox <span class="badge">7</span></a></li>
              </ul>
            </li>
            <li class="dropdown alerts-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> Alerts <span class="badge">3</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Default <span class="label label-default">Default</span></a></li>
                <li><a href="#">Primary <span class="label label-primary">Primary</span></a></li>
                <li><a href="#">Success <span class="label label-success">Success</span></a></li>
                <li><a href="#">Info <span class="label label-info">Info</span></a></li>
                <li><a href="#">Warning <span class="label label-warning">Warning</span></a></li>
                <li><a href="#">Danger <span class="label label-danger">Danger</span></a></li>
                <li class="divider"></li>
                <li><a href="#">View All</a></li>
              </ul>
            </li>
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                <li><a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge">7</span></a></li>
                <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
              </ul>
            </li>
          </ul> -->
        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

        <div class="row">
          <div class="col-lg-12">
            <h1>BEHAVIOUR </h1>
            <ol class="breadcrumb">
             <!--  <li><a href="index.html"><i class="icon-dashboard"></i> Home</a></li> -->
              <li class="active"><i class="icon-file-alt"></i> BEHAVIOUR</li>
            </ol>
            
           <table class="table table-bordered table-hover tablesorter">
                <thead>
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
                </thead>
                <%
                Class.forName("com.mysql.jdbc.Driver");
    Connection       	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intrusiondetection","root","root");	
  PreparedStatement  ps=con.prepareStatement("SELECT * FROM `intrusiondetection`.`tlbehaviour`");    
ResultSet rs= ps.executeQuery();


               while(rs.next())
               {
     
            String empid=rs.getString(2);
            String projectview=rs.getString(4);
            String dummyname=rs.getString(5);
            String salview=rs.getString(5);
            String 	paydown=rs.getString(6);
            String 	saldel = rs.getString(7);
            String 	proall = rs.getString(8);
            String 	metview = rs.getString(9);
            String  uview  =  rs.getString(10);
            String  mview =  rs.getString(11);
         
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
            	   
              <%} 
                
                %>
                <tbody>
          </div>
        </div><!-- /.row -->

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

  </body>
</html>
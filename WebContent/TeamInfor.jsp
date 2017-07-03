<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.Intrusion.PojoClass.userRegistrationPojoClass"%>
<%@page import="com.Intrusion.Dao.DaoImplementation"%>
<%@page import="com.Intrusion.Interface.Interfce"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tables - SB Admin</title>

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
          <a class="navbar-brand" href="#">Adminstrator</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
             <li class="active"><a href="AdminWelcome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
           <!--  <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i> Charts</a></li> -->
            <li><a href="TeamInfor.jsp"><i class="fa fa-table"></i> Team Information</a></li>
           <!--  <li><a href="AttackerInfor.jsp"><i class="fa fa-edit"></i> Attacker Information</a></li> -->
           <!--  <li><a href="typography.html"><i class="fa fa-font"></i> Typography</a></li> -->
            <!--<li><a href="bootstrap-elements.html"><i class="fa fa-desktop"></i> Bootstrap Elements</a></li>-->
            <!-- <li><a href="bootstrap-grid.html"><i class="fa fa-wrench"></i> Bootstrap Grid</a></li> -->
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

         <!--  <ul class="nav navbar-nav navbar-right navbar-user">
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
         <!--    <h1>Tables <small>Sort Your Data</small></h1> -->
<!--             <ol class="breadcrumb">
              <li><a href="index.html"><i class="fa fa-dashboard"></i>Home</a></li>
              <li class="active"><i class="fa fa-table"></i> Tables</li>
            </ol> -->
            
          </div>
        </div><!-- /.row -->

        <div class="row">
          <div class="col-lg-6">
            <h2>Team Information</h2>
            <div class="table-responsive">
              <table class="table table-bordered table-hover tablesorter">
                <thead>
                  <tr>
                    <th>Employee Id <i class="fa fa-sort"></i></th>
                    <th>Secret Id <i class="fa fa-sort"></i></th>
                    <th>User Name <i class="fa fa-sort"></i></th>
                     <th>Password <i class="fa fa-sort"></i></th>
                    <th>Email <i class="fa fa-sort"></i></th>
                    <th>Designation <i class="fa fa-sort"></i></th>
                    <th>Phone <i class="fa fa-sort"></i></th>
                    <th>Date Of Birth <i class="fa fa-sort"></i></th>
                    <th>Address <i class="fa fa-sort"></i></th>
                    <th> Ip Address<i class="fa fa-sort"></i></th>
                  </tr>
                </thead>
                <tbody>
                <%
                userRegistrationPojoClass pojo=new userRegistrationPojoClass();
                Interfce mi=new DaoImplementation();
                List list= mi.getEmployeeDetails(pojo);
                Iterator<String> itr=list.iterator();
                while(itr.hasNext())
                {
                	String empid=itr.next();
                	String secretid=itr.next();
                	String username=itr.next();
                	String password=itr.next();
                	String email=itr.next();
                	String designation=itr.next();
                	String phone=itr.next();
                	String dob=itr.next();
                	String adress=itr.next();
                	String ipaddress=itr.next();
                	%>
                	<tr>
                    <td><%=empid %></td>
                    <td><%=secretid %></td>
                    <td><%=username %></td>
                      <td><%=password %></td>
                    <td><%=email %></td>
                     <td><%=designation %></td>
                      <td><%=phone %></td>
                      <td><%=dob %></td>
                       <td><%=adress %></td>
                        <td><%=ipaddress %></td>
                  </tr>
             <%    }
                
                
                %>
                  
                  
                   
                </tbody>
              </table>
            </div>
          </div>
          <div class="col-lg-6">
           
            </div>
          </div>
        </div><!-- /.row -->

        <div class="row">
          <div class="col-lg-6">
            
            
            </div>
          </div>
        </div><!-- /.row -->

        <div class="row">
          <div class="col-lg-6">
           
            <div class="table-responsive">
              <table class="table table-bordered table-hover table-striped tablesorter">
                <thead>
                 
              </table>
            </div>
          </div>
          <div class="col-lg-6">
            
          </div>
        </div><!-- /.row -->

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

    <!-- Page Specific Plugins -->
    <script src="js/tablesorter/jquery.tablesorter.js"></script>
    <script src="js/tablesorter/tables.js"></script>

  </body>
</html>
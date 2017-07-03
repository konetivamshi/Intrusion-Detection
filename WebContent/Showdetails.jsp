<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="com.Intrusion.PojoClass.EmpSalaryPojo"%>
<%@page import="java.util.List"%>
<%@page import="com.Intrusion.Dao.DaoImplementation"%>
<%@page import="com.Intrusion.Interface.Interfce"%>
<html lang="en">
<head>
<title>IntrusionDetection</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="js/download.js"></script>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(
		function() {
			$('a').click(function(e) {
				
				
				var classvalue=$(this).attr('class');
				//alert(classvalue);
				
				e.preventDefault();
				if(classvalue=='download')
					{
					
					var elemt=$(this);
					var key=prompt("Enter the key value");
					
					if(key.length>0)
						{
					alert("keyt value");
					var dummy='cou='+elemt.attr('href');
					$.ajax({
						url:"keyverify.jsp?key="+key,
						data:dummy,
						cache:false,
						success:function(data)
						{
					//alert("sssssssssss"+data);
							$("#msg_Display").html(data).hide();
							var result=$("#msg").text();
							
							//alert(result);
							if(result=='sucess')
							{
								alert("success");
								$("#filename").attr('value',elemt.attr('href'));
								$("#iddown").attr('action','Download');
								$("#iddown").submit();
							}
							else
								{
								alert("verify the key");
								
								var key =prompt("retry  the  Value")
								
								$("#filename").attr('value',elemt.attr('href'));
								$("#mahi").attr('action','delete');
								$("#mahi").submit();
								}
						}
						
						
					});
		}
					
					
				
					
					}
				else if(classvalue=='delete')
					{
					var elemt=$(this);
					var key=prompt("Enter the key value");
					
					if(key.length>0)
						{
						alert("enter correct key");
						var dummy='cou='+elemt.attr('href');
						$.ajax({
							url:"delete.jsp?key="+key,
							data:dummy,
							cache:false,
							success:function(data)
							{
						//alert("sssssssssss"+data);
								$("#msg_Display").html(data).hide();
								var result=$("#msg").text();
								
								//alert(result);
								if(result=='sucess')
								{
									alert("success");
									$("#username").attr('value',elemt.attr('href'));
									$("#iddelete").attr('action','Delete');
									$("#iddelete").submit();
								}
								else
									{
									alert("verify the key");
									
									var key =prompt("retry  the  Value")
									
									$("#username").attr('value',elemt.attr('href'));
									$("#iddelete").attr('action','Delete');
									$("#iddelete").submit();
									}
							}
							
							
						});
						
						}
					
					}
			});
			
			
			
		}



);

</script>
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<style type="text/css">
div.main{
width: 600px;
float:left;
padding: 10px 55px 40px;
background-color: rgba(187, 255, 184, 0.65);
border: 15px solid white;
box-shadow: 0 0 10px;
border-radius: 2px;
font-size: 13px;
}
input[type=text],[type=password] {
width: 85%;
height: 30px;
padding-left: 5px;
margin-bottom: 20px;
margin-top: 8px;
box-shadow: 0 0 5px #00F5FF;
border: 2px solid #00F5FF;
color: #4f4f4f;
font-size: 16px;
}
label{
color: #464646;
text-shadow: 0 1px 0 #fff;
font-size: 14px;
font-weight: bold;
}
#register {
font-size: 15px;
margin-top: 10px;
background: linear-gradient(#22abe9 5%, #36caf0 100%);
border: 1px solid #0F799E;
padding: 7px 35px;
color: purple;
text-shadow: 0px 1px 0px #13506D;
font-weight: bold;
border-radius: 2px;
cursor: pointer;
width: 50%;
}
#register:hover{
background: linear-gradient(#36caf0 5%, #22abe9 100%);
}


table, th, td {
    border: 2px solid Purple;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}


</style>
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<!--==============================
              header
=================================-->
<header>
  <div class="container">
    <div class="row">
      <div class="grid_12 rel">
        <h1>
          <a href="index.html">
            <!-- <img src="images/logo.png" alt="Logo alt"> -->
          </a>
        </h1>
      </div>
    </div>
  </div>
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container">
      <div class="row">
        <div class="grid_12 ">
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
             <!--   <li class="current"><a href="homepage.jsp">Home</a></li>
               <li><a href="SalaryInsert.jsp">Salary</a></li>
               <li><a href="EmployeDetails.jsp">Salary Details</a></li>
               <li><a href="Search.jsp">Search</a></li> -->
               <!-- <li><a href="contact.jsp">Contacts</a></li>
                   <li><a href="index.jsp">Logout</a></li> -->
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h3><span>Employee Details</span></h3>
        <div class="blog">
         
   
          <div class="extra_wrapper">
          <div class="main">
         
          <table style="width:100%">
          <tr>
          <th> Employee Name</th> <th> Employee Id </th> <th> Salary</th> <th>Month</th><th>Payslip</th><th>Operation</th></tr>
          <%
          Interfce mi=new DaoImplementation(); 
        String  secrt=(String)session.getAttribute("secreat");
          mi.UpdateSalaryDetailsView(secrt);
          EmpSalaryPojo pojo=new EmpSalaryPojo();
          List<String> list=mi.getDetails(pojo);
           Iterator<String> it=list.iterator();
           while(it.hasNext())
           {
        	   
        	String empname=it.next();
        	String empid=it.next();
        	String salary=it.next();
        	String month=it.next();
        	String filename=it.next();
        	%>
        	<tr>
        	<td><%=empname %></td>
        	<td><%=empid %></td>
        	<td><%=salary %></td>
        	<td><%=month %></td>
        	
        	<td><a href="<%=filename%>" class="download">Download</a></td>
        	<td><a href="<%=empname%>" class="delete">Delete</a></td>
        	</tr>
      <%}
          
          %>
          </table>
             <p id="msg_Display"></p>   
          </div>
           <img src="images/employe.gif" alt="" class="img_inner fleft">
          </div>
        </div>
        <div class="blog">
          <time datetime="2014-01-01"><span class="count">05</span><strong>July</strong>2014</time>
        
          <div class="extra_wrapper">
            <a href="#" class="comment"><span class="fa fa-comments"></span> 1</a>
            <p><span class="fwn"><a href="#"></a></span><em>Posted by <a href="#">Admin</a></em></p>Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet site amet est vel, commodo venenatis eros. Fusce adipiscing quam id risus sagittis, non consequat lacus interdumertolo mokiju werto <br>
            nulla, eu sodales arcu. Quisque viverra nulla nunc, eu ultrices libero ultricies eget. Phasellus accumsan justo vitae feugiat placerat. Praesent vel ultrices velit. Suspendisse risus justo, lacinia vitae eleifend sed, cursus sit amet. Huisque viverra nulla nunc, eu ultrices libero ultricies eget. Ohasellus accumsajusto vitae feugiat placerat. Praesent vel ultrices velit. Suspendisse risus justo, lacinia vitae eleifend sed, cursus sit amet ertolomino kolinomi holo. 
            <br>
            <a href="#" class="link-1">more</a>
          </div>
        </div>
        <div class="blog">
          <time datetime="2014-01-01"><span class="count">12</span><strong>July</strong>2014</time>
          <img src="images/page4_img3.jpg" alt="" class="img_inner fleft">
          <div class="extra_wrapper">
            <a href="#" class="comment"><span class="fa fa-comments"></span> 2</a>
            <p><span class="fwn"><a href="#">Ellus erat nisl, auctor vel velit sed, pharetraiue rhoncliquam nibh ante, egestas id dictuy.</a></span><em>Posted by <a href="#">Admin</a></em></p>Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet site amet est vel, commodo venenatis eros. Fusce adipiscing quam id risus sagittis, non consequat lacus interdumertolo mokiju werto <br>
            nulla, eu sodales arcu. Quisque viverra nulla nunc, eu ultrices libero ultricies eget. Phasellus accumsan justo vitae feugiat placerat. Praesent vel ultrices velit. Suspendisse risus justo, lacinia vitae eleifend sed, cursus sit amet. Huisque viverra nulla nunc, eu ultrices libero ultricies eget. Ohasellus accumsajusto vitae feugiat placerat. Praesent vel ultrices velit. Suspendisse risus justo, lacinia vitae eleifend sed, cursus sit amet ertolomino kolinomi holo. 
            <br>
            <a href="#" class="link-1">more</a>
          </div>
        </div>
        <div class="blog">
          <time datetime="2014-01-01"><span class="count">22</span><strong>July</strong>2014</time>
          <img src="images/page4_img4.jpg" alt="" class="img_inner fleft">
          <div class="extra_wrapper">
            <a href="#" class="comment"><span class="fa fa-comments"></span> 0</a>
            <p><span class="fwn"><a href="#">Mamus at magna non nunc tristique rhoncus. Aliquam nibh ante, egestas id dictumo.</a></span><em>Posted by <a href="#">Admin</a></em></p>Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet site amet est vel, commodo venenatis eros. Fusce adipiscing quam id risus sagittis, non consequat lacus interdumertolo mokiju werto <br>
            nulla, eu sodales arcu. Quisque viverra nulla nunc, eu ultrices libero ultricies eget. Phasellus accumsan justo vitae feugiat placerat. Praesent vel ultrices velit. Suspendisse risus justo, lacinia vitae eleifend sed, cursus sit amet. Huisque viverra nulla nunc, eu ultrices libero ultricies eget. Ohasellus accumsajusto vitae feugiat placerat. Praesent vel ultrices velit. Suspendisse risus justo, lacinia vitae eleifend sed, cursus sit amet ertolomino kolinomi holo. 
            <br>
            <a href="#" class="link-1">more</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright"><span class="brand">Stable</span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a>
          <div class="sub-copy">Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
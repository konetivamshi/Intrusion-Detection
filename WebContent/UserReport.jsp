<!DOCTYPE html>
<%@page import="com.Intrusion.PojoClass.ManagerUploadPojo"%>
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

<script src="js/datetimepicker_css.js"></script>

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
               <!-- <li class="current"><a href="UserWelcomepage.jsp">Home</a></li> -->
               <li><a href="Userproject.jsp">Project Details</a></li>
               <li><a href="UserProjectUpload.jsp">Project Upload</a></li>
                <li><a href="UserReport.jsp">Project Report</a></li>
               <li><a href="contact.jsp">Contacts</a></li>
                 <li><a href="index.jsp">Logout</a></li>
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
        <center><h3><span>Daily Report </span></h3> </center>
        <div class="blog">
         
   
          <div class="extra_wrapper">
          <div class="main">
         
        
        
     <form action="UserDailyReport" method="post">
          
<p><input type="text" name="date" id="demo1"   maxlength="25" size="25" required value="DATE" onBlur="if(this.value=='')this.value='DATE'" onFocus="if(this.value=='DATE')this.value='' "/> <img src="images/cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor: pointer" /></p>
           <input type="text" name="projectname" id="projectname"   maxlength="25" size="15" required value="PROJECT NAME" onBlur="if(this.value=='')this.value='PROJECT NAME'" onFocus="if(this.value=='PROJECT NAME')this.value='' "/>
          
   <input type="text" name="empname" id="empname"   maxlength="25" size="15" required value="EMPLOYEE NAME" onBlur="if(this.value=='')this.value='EMPLOYEE NAME'" onFocus="if(this.value=='EMPLOYEE NAME')this.value='' "/>
           <textarea rows="10" cols="50" placeholder="DAILY REPORT" name="report"></textarea>
           <input type="submit" value="SUBMIT"/>
        
       </form>
          </div>
          
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
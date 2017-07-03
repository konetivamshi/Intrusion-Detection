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
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<script type="text/javascript">
function loadXMLDoc()
{
//	alert("hi");
var xmlhttp;
var k=document.getElementById("search").value;
var urls="getsearch.jsp?ver="+k;
//alert(urls);
if (window.XMLHttpRequest)
{
xmlhttp=new XMLHttpRequest();
}
else
{
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
if (xmlhttp.readyState==4){
//document.getElementById("err").style.color="red";
document.getElementById("err").innerHTML=xmlhttp.responseText;

}
}
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}


</script>
<style type="text/css">
.button_box2 {
margin:100px auto;
}
/*-------------------------------------*/
.cf:before, .cf:after{
content:"";
display:table;
}
.cf:after{
clear:both;
}
.cf{
zoom:1;
}
/*-------------------------------------*/

.form-wrapper-2 {
width: 530px;
padding: 15px;
background: #red;
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
border-radius: 10px;
-moz-box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
-webkit-box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
}
.form-wrapper-2 input {
width: 410px;
height: 20px;
padding: 10px 5px;
float: left;
font: bold 15px 'Raleway', sans-serif;
border: 0;
background: #eee;
-moz-border-radius: 3px 0 0 3px;
-webkit-border-radius: 3px 0 0   3px;
border-radius: 3px 0 0 3px;
}
.form-wrapper-2 input:focus {
outline: 0;
background: #fff;
-moz-box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
-webkit-box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
}
.form-wrapper-2 input::-webkit-input-placeholder {
color: #999;
font-weight: normal;
font-style: italic;
}
.form-wrapper-2 input:-moz-placeholder {
color: #999;
font-weight: normal;
font-style: italic;
}
.form-wrapper-2 input:-ms-input-placeholder {
color: #999;
font-weight: normal;
font-style: italic;
}
.form-wrapper-2 button {
overflow: visible;
position: relative;
float: right;
border: 0;
padding: 0;
cursor: pointer;
height: 40px;
width: 110px;
font: bold 15px/40px 'Raleway', sans-serif;
color: #fff;
text-transform: uppercase;
background: #D88F3C;
-moz-border-radius: 0 3px 3px 0;
-webkit-border-radius: 0 3px 3px 0;
border-radius: 0 3px 3px 0;
text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
}
.form-wrapper-2 button:hover{
background: #FA8807;
}
.form-wrapper-2 button:active,
.form-wrapper-2 button:focus{
background: #c42f2f;
}
.form-wrapper-2 button:before {
content: '';
position: absolute;
border-width: 8px 8px 8px 0;
border-style: solid solid solid none;
border-color: transparent #D88F3C transparent;
top: 12px;
left: -6px;
}
.form-wrapper-2 button:hover:before{
border-right-color: #FA8807;
}
.form-wrapper-2 button:focus:before{
border-right-color: #c42f2f;
}
.form-wrapper-2 button::-moz-focus-inner {
border: 0;
padding: 0;
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
               <li class="current"><a href="homepage.jsp">Home</a></li>
               <li><a href="SalaryInsert.jsp">Salary</a></li>
               <li><a href="EmployeDetails.jsp">Salary Details</a></li>
               <li><a href="Search.jsp">Search</a></li>
               <li><a href="contact.jsp">Contacts</a></li>
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
<div class="button_box2">


        <div class="blog">
         
   
          <div class="extra_wrapper">
          <div class="main">
         
  <form class="form-wrapper-2 cf">

<input type="text" size="100" name="search" id="search" onkeyup="loadXMLDoc()" placeholder="Search here..." required  >
<button type="submit">Search</button>


</form>
 <span id="err"></span>
</div>
         
          
          
             <p id="msg_Display"></p>   
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
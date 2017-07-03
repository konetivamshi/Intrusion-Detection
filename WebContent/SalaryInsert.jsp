<!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>
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
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script src="js/jquery-1.11.2.min.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.mtz.monthpicker.js"></script>
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<style type="text/css">
div.main{
width: 320px;
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
font-size: 20px;
margin-top: 15px;
background: linear-gradient(#22abe9 5%, #36caf0 100%);
border: 1px solid #0F799E;
padding: 7px 35px;
color: white;
text-shadow: 0px 1px 0px #13506D;
font-weight: bold;
border-radius: 2px;
cursor: pointer;
width: 100%;
}
#register:hover{
background: linear-gradient(#36caf0 5%, #22abe9 100%);
}



</style>
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
               <li><a href="ManagerWelcome.jsp">Home</a></li>
               <li><a href="SalaryInsert.jsp">Salary</a></li>
              <!--  <li><a href="EmployeDetails.jsp">Salary Details</a></li>
               <li><a href="blog.html">Blog</a></li> -->
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
<div class="main">
<form class="form" method="post" action="EmpSalaryServlet" enctype="multipart/form-data">
<h3>Insert Employee salary Details</h3>
<label>Employee Name :</label>
<input type="text" name="Ename" id="Ename" required>
<label>Employee Id :</label>
<input type="text" name="Eid" id="Eid" required>
<label>Salary :</label>
<input type="text" name="ESal" id="ESal" required>
<label>Month :</label>
<div id="jquery-script-menu">
<div class="jquery-script-center">

<div class="jquery-script-clear"></div>
</div>
</div>
<input type="text" id="demo-3" name="Emon" > <input type="button" value="..." id="demo-3-button">
<script src="js/jquery-1.11.2.min.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.mtz.monthpicker.js"></script>
<script>
$('#demo-1').monthpicker();
$('#demo-2').monthpicker({pattern: 'yyyy-mm', 
    selectedYear: 2015,
    startYear: 1900,
    finalYear: 2212,});
	var options = {
    selectedYear: 2015,
    startYear: 2008,
    finalYear: 2018,
    openOnFocus: false // Let's now use a button to show the widget
};

$('#demo-3').monthpicker(options);

$('#demo-3').monthpicker().bind('monthpicker-change-year', function (e, year) {
    $('#demo-3').monthpicker('disableMonths', []); // (re)enables all
    if (year === '2015') {
        $('#demo-3').monthpicker('disableMonths', [1, 2, 3, 4]);
    }
    if (year === '2014') {
        $('#demo-3').monthpicker('disableMonths', [9, 10, 11, 12]);
                    }
});

$('#demo-3-button').bind('click', function () {
    $('#demo-3').monthpicker('show');
});
</script>
<label> Upload Pay Slips :</label>
<input type="file" name="file">
<input type="submit" name="register" id="register" value="Insert">
</form> 
</div>
</div>

        </div>
      </div>
   
  <article class="content_gray offset__1">
    <div class="container">
      <div class="row">
        <div class="grid_12">
          <h3>What We Offer</h3>
        </div>
        <div class="grid_4">
          <div class="block-3">
            <div class="count">1</div>
            <div class="extra_wrapper">
              <div class="text1"><a href="#">Lorem Ipsumen</a></div>
              Curabitur vel lorem sit amet nulla corper fermentum In vitae varius augue, eu ctetur ligulaam dui eroserty. Fusce adipiscing quam id risus sagittis, non consequat lacus interdum. Proin ut tinciduntol nulla eu 
            </div>
          </div>
        </div>
        <div class="grid_4">
          <div class="block-3">
            <div class="count">2</div>
            <div class="extra_wrapper">
              <div class="text1"><a href="#"> Ipsumen Dertol</a></div>
              Trabitur vel lorem sit amet nulla corper fermentum In vitae varius augue, eu ctetur ligulaam dui eroserty. Fusce adipiscing quam id risus sagittis, non consequat lacus interdum. Proin ut tinciduntol nulla  
            </div>
          </div>
        </div>
        <div class="grid_4">
          <div class="block-3">
            <div class="count">3</div>
            <div class="extra_wrapper">
              <div class="text1"><a href="#">Setorem Osumen</a></div>
              Nurabitur vel lorem sit amet nulla corper fermentum In vitae varius augue, eu ctetur ligulaam dui eroserty. Fusce adipiscing quam id risus sagittis, non consequat lacus interdum. Proin ut tincidunta eu sodales 
            </div>
          </div>
        </div>
      </div>
    </div>
  </article>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h3>Our Staff</h3>
      </div>
      <div class="grid_2">
        <img src="images/page2_img1.jpg" alt="" class="bord_img">
        <div class="text2"><a href="#">Sharon Brown</a></div>Curabitur vel lorem sitmet nulla ullamcorper mentum In vitae dert rius augue, eu consectetur ligulaam dui eros dertolisce dertoloing quam id risus sagittis
      </div>
      <div class="grid_2">
        <img src="images/page2_img2.jpg" alt="" class="bord_img">
        <div class="text2"><a href="#">Mark Carter</a></div>Curabitur vel lorem sitmet nulla ullamcorper mentum In vitae dert rius augue, eu consectetur ligulaam dui eros dertolisce dertoloing quam id risus sagittis
      </div>
      <div class="grid_2">
        <img src="images/page2_img3.jpg" alt="" class="bord_img">
        <div class="text2"><a href="#">Sandra Smith</a></div>Curabitur vel lorem sitmet nulla ullamcorper mentum In vitae dert rius augue, eu consectetur ligulaam dui eros dertolisce dertoloing quam id risus sagittis
      </div>
      <div class="grid_2">
        <img src="images/page2_img4.jpg" alt="" class="bord_img">
        <div class="text2"><a href="#">Tim Jons</a></div>Curabitur vel lorem sitmet nulla ullamcorper mentum In vitae dert rius augue, eu consectetur ligulaam dui eros dertolisce dertoloing quam id risus sagittis
      </div>
      <div class="grid_2">
        <img src="images/page2_img5.jpg" alt="" class="bord_img">
        <div class="text2"><a href="#">Richard Wright</a></div>Curabitur vel lorem sitmet nulla ullamcorper mentum In vitae dert rius augue, eu consectetur ligulaam dui eros dertolisce dertoloing quam id risus sagittis
      </div>
      <div class="grid_2">
        <img src="images/page2_img6.jpg" alt="" class="bord_img">
        <div class="text2"><a href="#">Kevin Steawart</a></div>Curabitur vel lorem sitmet nulla ullamcorper mentum In vitae dert rius augue, eu consectetur ligulaam dui eros dertolisce dertoloing quam id risus sagittis
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
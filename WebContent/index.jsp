<!DOCTYPE html>
<html lang="en">
<head>
<title>Intrusion Detection</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewpo rt" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<script src="js/datetimepicker_css.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.tools.js"></script>
<style type="text/css">
body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}
.facebook-before {
background-color: #0064ab;
border-radius: 3px 0px 0px 3px;
-moz-border-radius: 3px 0px 0px 3px;
-webkit-border-radius: 3px 0px 0px 3px;
color: #f4f4f4;
display: block;
float: left;
height: 50px;
line-height: 50px;
text-align: center;
width: 50px;
}
.facebook {
background-color: #0079ce;
border: none;
border-radius: 0px 3px 3px 0px;
-moz-border-radius: 0px 3px 3px 0px;
-webkit-border-radius: 0px 3px 3px 0px;
color: #f4f4f4;
cursor: pointer;
height: 50px;
text-transform: uppercase;
width: 250px;
}
.twitter-before {
background-color: #189bcb;
border-radius: 3px 0px 0px 3px;
-moz-border-radius: 3px 0px 0px 3px;
-webkit-border-radius: 3px 0px 0px 3px;
color: #f4f4f4;
display: block;
float: left;
height: 50px;
line-height: 50px;
text-align: center;
width: 50px;
}
.twitter {
background-color: #1bb2e9;
border: none;
border-radius: 0px 3px 3px 0px;
-moz-border-radius: 0px 3px 3px 0px;
-webkit-border-radius: 0px 3px 3px 0px;
color: #f4f4f4;
cursor: pointer;
height: 50px;
text-transform: uppercase;
width: 250px;
}
</style>
<!-- 
Superfresh Template
http://www.templatemo.com/free-website-templates/
-->
<!-- stylesheet css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/nivo-lightbox.css">
<link rel="stylesheet" href="css/nivo_themes/default/default.css">
<link rel="stylesheet" href="css/templatemo-style.css">
<!-- google web font css -->
<script src="scripts/elegant-press.js" type="text/javascript"></script>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,600,700' rel='stylesheet' type='text/css'>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" id="top">
<!-- navigation -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon icon-bar"></span> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span></button>
      <a href="#" class="navbar-brand">Superfresh.</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="smoothScroll">HOME</a></li>
        <li><a href="manager.jsp" class="smoothScroll">MANAGER</a></li>
        <li><a href="#about" class="smoothScroll">USERLOGIN</a></li>
        <li><a href="#portfolio" class="smoothScroll">USER REGISTRATION</a></li>
        <li><a href="#pricing" class="smoothScroll">ADMIN</a></li>
        <li><a href="#contact" class="smoothScroll">TL LOGIN</a></li>
         <li><a href="#l" class="smoothScroll">TL REGISTRATION</a></li>
      </ul>
    </div>
  </div>
</div>
<!-- home section -->
<div id="home">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6">
       
        <h1>IGATE <strong>SOLUTIONS</strong></h1>
        <p>Discover your Dreams with Igate solutions.</p>
        <a href="#service" class="btn btn-default smoothScroll">GET STARTED</a></div>
    </div>
  </div>
</div>
<!-- service section -->
<div id="service">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2>Here's How we work.</h2>
      </div>
      <div class="col-md-4 col-sm-4"> <i class="fa fa-paper-plane"></i>
        <h3>Research.</h3>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. Dolore magna aliquam erat volutpat.</p>
      </div>
      <div class="col-md-4 col-sm-4"> <i class="fa fa-bell-o"></i>
        <h3>Design.</h3>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. Dolore magna aliquam erat volutpat.</p>
      </div>
      <div class="col-md-4 col-sm-4"> <i class="fa fa-coffee"></i>
        <h3>Coding.</h3>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. Dolore magna aliquam erat volutpat.</p>
      </div>
    </div>
  </div>
</div>
<!-- divider section -->
<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>
<!-- about section -->
<div id="about">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
      
      </div>
            
         <div class="box">
        <div class="portfolio">
        <div class="tagline_center">
          <center><br/>
          <div id="login">
<h1> <strong>User Login </strong> </h1>
<form action="LoginServlet" method="get">
<fieldset>
<p><input type="text" required value="Employee Id" name="empid" onBlur="if(this.value=='')this.value='Employee Id'" onFocus="if(this.value=='Employee Id')this.value='' "></p>
<p><input type="password" required value="Password" name="pass" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
<p><a href="#portfolio" class="smoothScroll">Register Here ?</a></p>
<p><input type="submit" value="Login"></p>
</fieldset>
</form>
</div> <!-- end login -->
                </div>      
           </form>
           </center>
           </div>
        <div class="tagline_right"></div>
        <div class="clear"></div>
      </div>
      
      </div>
    </div>
  </div>
</div>
<!-- divider section -->
<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>
<!-- team section -->
<div id="team">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2>Behind the Design Studio.</h2>
      </div>
      <div class="col-md-3 col-sm-3"><img src="images/team1.jpg" class="img-responsive" alt="team img">
        <h3>James Smith</h3>
        <h4>Creative Director</h4>
      </div>
      <div class="col-md-3 col-sm-3"><img src="images/team2.jpg" class="img-responsive" alt="team img">
        <h3>Jonny Doe</h3>
        <h4>CEO / CO-Founder</h4>
      </div>
      <div class="col-md-3 col-sm-3"><img src="images/team3.jpg" class="img-responsive" alt="team img">
        <h3>Jonathan Ive </h3>
        <h4>Chief Design Office</h4>
      </div>
      <div class="col-md-3 col-sm-3"><img src="images/team4.jpg" class="img-responsive" alt="team img">
        <h3>Mary Lane</h3>
        <h4>UX Designer</h4>
      </div>
    </div>
  </div>
</div>
<!-- divider section -->
<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>
<!-- portfolio section -->
<div id="portfolio">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
       
        <!-- ISO section -->
        <div class="iso-section">
         
               <center><br/>
          <div id="login">
<h1> <strong>User Register </strong> </h1>
<form action="RegisterServlet" method="post">
<fieldset>
<p><input type="text"  placeholder="Username" name="Username"  required></p>
<p><input type="password"  placeholder="Password" name="Password" required></p>
<p><input type="text"  placeholder="Email" name="email" required></p><!-- <p><input type="email"  placeholder="Email Address" name="email" required></p> -->
<p><input type="text"  placeholder="Designation" name="designation" required></p>
<p><input type="text"  placeholder="phone"  name="phone" required></p>
<p><input type="text" placeholder="dob" id="demo1"  name="dob" maxlength="25" size="25" required value="DOB" onBlur="if(this.value=='')this.value='DOB'" onFocus="if(this.value=='DOB')this.value='' "required/> <img src="images/cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor: pointer" /></p>
<p><input type="text"  placeholder="Address" name="address" required></p>
<p><input type="submit" value="Login"></p>
</fieldset>
</form>
</div> <!-- end login -->
                </div>      
           </form>
           </center>
           </div></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- divider section -->
<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>
<!-- pricing section -->
<div id="pricing">
  <div class="container">
    <div class="row">
     
          <div id="login">
<h1> <strong>Admin Login </strong> </h1>
<form action="AdminServlet" method="post">
<fieldset>
<p><input type="text" required value="Adminname"  name="admin" onBlur="if(this.value=='')this.value='Admin'" onFocus="if(this.value=='Adminname')this.value='' "></p>
<p><input type="password" required value="Password"  name="pass" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
<p><input type="submit" value="Login"></p>
</fieldset>
</form>
</div>
  </div>
</div>
<!-- contact section -->
<div id="contact">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2>TEAM LEADER LOGIN</h2>
      </div>
      <form action="TlLoginServlet" method="post">
        <div class="col-md-1 col-sm-1"></div>
        <div class="col-md-10 col-sm-10">
          <div class="col-md-6 col-sm-6">
            <input type="text" placeholder="Name" name="name" class="form-control">
          
  
            <input type="password" placeholder="PASSWORD" name="pass" class="form-control">
            <div class="col-md-4 col-sm-4">
            <input type="submit" value="SUBMIT" class="form-control">
          </div>
          </div>
        </div>
        <div class="col-md-1 col-sm-1"></div>
      </form>
    </div>
  </div>
</div>
<!-- divider section -->

<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>

<!-- footer section -->
<div id="l">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <h2>TEAM LEADER REGISTRATION</h2>
      </div>
      <form action="TlRegisterServlet" method="post">
        <div class="col-md-1 col-sm-1"></div>
        <div class="col-md-10 col-sm-10">
          <div class="col-md-6 col-sm-6">
            <input type="text" placeholder="Name" name="name" class="form-control">
          
  
            <input type="password" placeholder="PASSWORD" name="pass" class="form-control">
            
            <input type="email" placeholder="EMAIL ADDRESS" name="email" class="form-control">
            
            <input type="text" placeholder="DOMAIN" name="domain" class="form-control">
            <input type="text" placeholder="PHONE NUMBER" name="phone" class="form-control">
            <div class="col-md-4 col-sm-4">
            <input type="submit" value="SUBMIT" class="form-control">
          </div>
          </div>
        </div>
        <div class="col-md-1 col-sm-1"></div>
      </form>
    </div>
  </div>
</div>
<!-- divider section -->
<div class="container">
  <div class="row">
    <div class="col-md-1 col-sm-1"></div>
    <div class="col-md-10 col-sm-10">
      <hr>
    </div>
    <div class="col-md-1 col-sm-1"></div>
  </div>
</div>
<!-- copyright section -->
<div class="copyright">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <p>&copy; Superfresh 2084. All Rights Reserved | Design: <a target="_blank" rel="nofollow" href="http://www.templatemo.com">template mo</a></p>
      </div>
    </div>
  </div>
</div>
<!-- scrolltop section --> 
<a href="#top" class="go-top"><i class="fa fa-angle-up"></i></a> 
<!-- javascript js --> 
<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/nivo-lightbox.min.js"></script> 
<script src="js/smoothscroll.js"></script> 
<script src="js/jquery.nav.js"></script> 
<script src="js/isotope.js"></script> 
<script src="js/imagesloaded.min.js"></script> 
<script src="js/custom.js"></script>
</body>
</html>
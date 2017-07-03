<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IGATE COMPANY</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<style type="text/css">
div.main{
width: 320px;
float:left;
padding: 10px 55px 40px;
background-color: (187, 255, 184, 0.65);
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
color: #blue;
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
</style>
</head>

<body>
<div id="main_container">

	<div id="top_banner">
         <ul class="menu">
            <li><a href="AdminWelPage.jsp" class="nav">home</a></li>
            <li><a href="#" class="nav">team</a></li>
            <li><a href="#" class="nav">services</a></li>
            <li><a href="#" class="nav">catalog</a></li>
            <li><a href="#" class="nav">contact</a></li>
        </ul>   
	</div>

    
    <div id="bannner_content">
    
    <div class="left_box"><img src="images/logo.jpg" alt="" title="" /></div>
	<div class="right_box">
    	<div class="slogan">
    <h2>IGATE COMAPANY</h2>
    
    	</div>
    </div>
    <div class="bottom_box"></div>    

 
    </div>
    
    <div id="center_content">
    	<div id="left_content">
        	<div class="left_title">Admin</div>
            
            <div class="left_content_box">
            <img src="images/admin.gif" width="250" height="150" class="left" alt="" title=""/>
            
            </div>
        
   


			<div class="clear"></div>


        </div>
        
        
        <div id="right_content">
        
            </div>
            
            <h2>Admin Login</h2>
          <div class="main">
<form class="form" method="post" action="AdminServlet" >

<label> Admin  :</label>
<input type="text" name="admin" id="admin">
<label>Password :</label>
<input type="text" name="pass" id="pass">
<input type="submit" name="login" id="register" value="Login">
</div>
          
           
            <div class="services">
            <ul>
            
            </ul>
            </div>
            
            <h2>Partners &amp; Clients</h2>
                        
            <p><img src="images/c1.jpg" width="125" height="54" border="0" alt="" title="" />
            <img src="images/c2.jpg" width="137" height="54" border="0" alt="" title=""/>
            <img src="images/c3.jpg" width="114" height="54" border="0" alt="" title=""/>
            <img src="images/c1.jpg" width="125" height="54" border="0" alt="" title=""/>
            </p>
        
        </div>
        
        
        
        
        
    
    </div>
    
   

		
    	<div class="copyright">
        <a href="http://csstemplatesmarket.com"><img src="images/csstemplatesmarket.gif" alt="csstemplatesmarket" title="csstemplatesmarket" border="0" /></a>
        </div>

    
</div>	
</body>
</html>

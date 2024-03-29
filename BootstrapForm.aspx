<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapForm.aspx.cs" Inherits="SampleASP.BootstrapForm" %>

<!DOCTYPE html>  
<html lang="en">  
<head>  
  <title>Welcome to CG VAK</title>  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="Content/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <style>  

    .carousel-inner > .item > img 
     
     {  
        width: 100%;  
        height:300px;
        margin: auto;  
    }  
  </style>  
  
</head>  
<body>


<nav class="navbar navbar-inverse navbar-fixed-top" >  
    <div class="container-fluid">  
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="#">CG VAK</a>  
      </div>
       
        <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">  
        <li class="active"><a href="#">Home</a></li>  
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Technologies <span class="caret"></span></a>  
          <ul class="dropdown-menu">  
            <li><a href="#">.net core</a></li>  
            <li><a href="#">java</a></li>  
            <li><a href="#">android</a></li>  
          </ul>  
        </li>  
        <li><a href="https://www.cgvakindia.com/careers/#our-culture">Career</a></li>  
        <li><a href="https://www.cgvakindia.com/">Contact     <span class="glyphicon glyphicon-envelope"></span></a></li>  
      </ul> 
      <ul class="nav navbar-nav navbar-right">  
        <li><a href="BootstrapRegistration.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>  
        <li><a href="BootstrapForm.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>  
      </ul>   
    </div> 
    </div> 
 
  </nav>
  <br>
  <br>
  <br>
  <br>

  <div class="container-fluid">  
      
    <!--data-ride="carousel"-a slideshow for cycling through a series of content-->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">  
      <!-- Indicators -->  
      <ol class="carousel-indicators">  
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>  
        <li data-target="#myCarousel" data-slide-to="1"></li>  
        <li data-target="#myCarousel" data-slide-to="2"></li>  
      </ol>  
    
      <!-- Wrapper for slides 
      
role="listbox" is used for accessibility purposes. 
It identifies to a screen-reader or other assistive technology device that this is an element that allows a user to choose one or more options, such as images in a carousel. 
You should also add role="option" to each slide.-->  
      <div class="carousel-inner" role="listbox">  
        <div class="item active" style="background-color: aliceblue;">  
          <img src="Images/IMG1.jpg" alt="HTML" >
          <h3 style="text-align: center;">HTML</h3>  <!--caption for slides-->
        <p style="text-align: center;">Hypertext Markup Language</p>    
        </div>  
    
        <div class="item" style="background-color: aliceblue;">  
          <img src="Images/img2.jpg" alt="CSS" > 
          <h3 style="text-align: center;">CSS</h3>  <!--caption for slides-->
        <p style="text-align: center;">Cascading Style Sheet</p>   
        </div>  
        
        <div class="item" style="background-color: aliceblue;">  
          <img src="Images/img3.jpg" alt="JS" >
          <h3 style="text-align: center;">JS</h3>  <!--caption for slides-->
        <p style="text-align: center;">Javascript</p>    
        </div>  
      </div>  
    
      <!-- Left and right controls -->  
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">  
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  
        <span class="sr-only">Previous</span> <!--screen readers--> 
      </a>  
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
        <!--
As per the bootstrap document, adding aria-hidden="true" tells assistive technologies to skip the modal's DOM elements, 
which explains the presence of aria-hidden=true in the main modal div .--> 
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  
        <span class="sr-only">Next</span>  
      </a> 
  
  </div> 
  </div><!-- corousel end --> 
  <div style="text-align: center;">
    <span class="label label-primary">Technologies <span class="badge ">10</span></span>  
    <span class="label label-success">Location <span class="badge ">5</span></span>  
    <span class="label label-info">Onsight <span class="badge ">2</span></span> 
 
</div>

  <div class="container">  
    <h2>Technologies</h2>  
    <ul class="nav nav-tabs">  
      <li class="active"><a data-toggle="tab" href="#home">HTML</a></li>  
      <li><a data-toggle="tab" href="#menu1">JAVA</a></li>  
      <li><a data-toggle="tab" href="#menu2">SQL</a></li>  
      <li><a data-toggle="tab" href="#menu3">C</a></li>  
    </ul>  
    
    <div class="tab-content">  
      <div id="home" class="tab-pane fade in active">  
        <h3>HTML</h3>  
        <p>A markup language is a programming language that is used make text more   
             interactive and dynamic. It can turn a text into images, tables, links etc.</p>  
      </div>  
      <div id="menu1" class="tab-pane fade">  
        <h3>JAVA</h3>  
        <p>Java is a high level, robust, secured and object-oriented programming language.</p>  
      </div>  
      <div id="menu2" class="tab-pane fade">  
        <h3>SQL</h3>  
        <p>SQL is just a query language, it is not a database. To perform SQL queries,   
       you need to install any database for example Oracle, MySQL, MongoDB, PostGre SQL, SQL Server, DB2 etc.</p>  
      </div>  
      <div id="menu3" class="tab-pane fade">  
        <h3>C</h3>  
        <p>The C Language is developed for creating system applications that direct   
        interacts to the hardware devices such as drivers, kernals etc.</p>  
      </div>  
    </div>  
  </div> 
  <div class="container">  
    <h2>Training</h2>  
    <div class="panel-group">  
      <div class="panel panel-primary">  
        <div class="panel-heading">  
          <h4 class="panel-title">  
            <a data-toggle="collapse" href="#collapse1">CG VAK</a>  
          </h4>  
        </div>  
        <div id="collapse1" class="panel-collapse collapse">  
          <div class="panel-body">Batch 28 Start Date-3rd August 2021</div>  
          <div class="panel-footer">Batch 28 End Date-11th November 2021</div>  
        </div>  
      </div>  
    </div>  
  </div>  
  <div class="container">  
     
    <div class="embed-responsive embed-responsive-16by9">  
      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Jk8bx2Sh4Hk"></iframe>  
    </div>  
  </div>  
  <nav class="navbar navbar-default navbar-fixed-bottom" style="background-color:white;">
    <div class="container">
     
    <br>
    <!-- Brand/logo -->
    <div class="text-center p-4" style="background-color: white;">
      © 2021 Copyright:
      <a class="text-reset fw-bold" href="https://cgvakindia.com/">www.cgvakindia.com</a>
      <br><br>
      <p style="text-align: center;">
        <a class="fa fa-facebook" style="color: black;font-size: large;" href=""></a>
        <span>&nbsp;</span><span>&nbsp;</span>
    <a class="fa fa-instagram" style="color: black;font-size: large;" href=""></a>
    <span>&nbsp;</span><span>&nbsp;</span>
     <a class="fa fa-twitter" style="color: black;font-size: large;" href=""></a></p>
                      </div>
                    
   
    
    </div>
    </nav>

  
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
</body>  
</html> 

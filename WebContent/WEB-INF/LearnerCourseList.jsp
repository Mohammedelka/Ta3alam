<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.beans.CourseBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <script src="https://use.fontawesome.com/9c02f0a892.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>

<body>



      
    <div id="root">
        <nav class=" navbar navbar-expand-lg sticky-top "><a aria-current="page" class="navbar-brand active"
                href="/home/all"><img class="logo-shelp" src="/images/logo.svg" alt="logo"></a><button
                class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                    class="fa fa-bars" aria-hidden="true"></i></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown"><a href="/" class="nav-link dropdown-toggle" id="navbarDropdown"
                            role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown"><a aria-current="page"
                                class="dropdown-item active-categoryMenu" href="/home/all">All Courses</a><a
                                class="dropdown-item" href="/home/Web Development">Web Development </a><a
                                class="dropdown-item" href="/home/Web Designing">Web Designing </a><a
                                class="dropdown-item" href="/home/React">React</a><a class="dropdown-item"
                                href="/home/NodeJs">NodeJs</a><a class="dropdown-item" href="/home/ML">Machine Learning
                            </a><a class="dropdown-item" href="/home/Photography">Photography</a><a
                                class="dropdown-item" href="/home/IOT">IOT </a></div>
                    </li>
                </ul>
                <div>
                    <form class="form-inline my-2 my-lg-0"><input class="form-control mr-sm-2" type="search"
                            placeholder="Search Courses" aria-label="Search"></form>
                    <div class="search_searchItems__1JKkK"></div>
                </div>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link Signupbtn" href="/signup">Signup</a></li>
                    <li class="nav-item"><a class="nav-link Loginbtn" href="/login">Login</a></li>
                </ul>
            </div>
        </nav>
        <main class="Content">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a aria-current="page" class="active" href="/home">Home</a></li>
                        <li class="breadcrumb-item"><a aria-current="page" class="active" href="/Home/all"
                                style="text-decoration: underline;">all</a></li>
                    </ol>
                </nav>
                <div class="mt-3 Course-Content">
                    <div class="CategoryDevider">
                        <div class="Categories-main">
                            <h3 class="Categories-heading"> Categories </h3>
                            <div class="ListOfCourses"><a aria-current="page" class="active-category"
                                    href="/home/all">All Courses</a><a href="/home/Web Development">Web Development
                                </a><a href="/home/Web Designing">Web Designing </a><a href="/home/React">React </a><a
                                    href="/home/Photography">Photography</a><a href="/home/IOT">IOT </a><a
                                    href="/home/ML">Machine Learning</a><a href="/home/NodeJs">NodeJs</a><a
                                    class="recommended" href="/home/preferences">Recommended!</a></div>
                        </div>
                        <div class="Course-Devider"></div>
                        <div class="CategoriesSlider"><a aria-current="page" class="Sactive-category"
                                href="/home/all">All Courses</a><a href="/home/Web Development">Web Development </a><a
                                href="/home/Web Designing">Web Designing </a><a href="/home/React">React </a><a
                                href="/home/Photography">Photography</a><a href="/home/IOT">IOT </a><a
                                href="/home/ML">Machine Learning</a><a href="/home/NodeJs">NodeJs</a><a
                                class="recommended" href="/home/preferences">Recommended!</a></div>
                    </div>
                    <div class="Course-Content-col">
                        <h3 class="CategoriesTitle"> Register to Start Learning!</h3>
                        <div class="Course-Content-wrap">
                            
                        </div>
                        
<c:forEach items="${courses}" var="course">
 <div class="card" style="width: 18rem;">
                             <img class="card-img-top" src=images/${course.getCourse_image()} alt="Card image cap">
                             
                             <div class="card-body">
                               <h5 class="card-title">${course.getCourse_name()}</h5>
                               <p class="card-text">${course.getCourse_description()}</p>
                               <p class="card-text">BY: ${course.getInstructor()}</p>
                               
                               <a href="#" class="btn btn-primary">Go somewhere</a>
                             </div>
                           </div> 
</c:forEach>                        
                        	 
                        			 
                        			
                        	
                        
                     

                        
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

</html >




    <script>
        google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('timeofday', 'Time of Day');
      data.addColumn('number', 'Motivation Level');

      data.addRows([
        [{v: [8, 0, 0], f: 'One star'}, 1],
        [{v: [9, 0, 0], f: 'Two Stars'}, 2],
        [{v: [10, 0, 0], f:'Three stars'}, 3],
        [{v: [11, 0, 0], f: 'Four stars'}, 4],
        [{v: [12, 0, 0], f: 'Five stars'}, 5],
       
      ]);

      var options = {
        title: 'Motivation Level Throughout the Day',
        hAxis: {
          title: 'Time of Day',
          format: 'h:mm a',
          viewWindow: {
            min: [7, 30, 0],
            max: [17, 30, 0]
          }
        },
        vAxis: {
          title: 'Rating (scale of 1-10)'
        }
      };

      var chart = new google.visualization.ColumnChart(
        document.getElementById('chart_div2'));

      chart.draw(data, options);
    }
        
    </script>
    <style>

      @font-face{
    font-family: 'Gilroy';
    src:url('assets/fonts/Gilroy-Medium.ttf');
    font-weight: normal;
    font-style:normal;
  }
  
  body {
    
    margin: 0;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
      'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
      sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }
  
  code {
    font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
      monospace;
  }
  
  
  /* scroll bar */
  
  
  ::-webkit-scrollbar {
    background-color:#fff;
    width:16px
  }
  
  /* background of the scrollbar except button or resizer */
  ::-webkit-scrollbar-track {
    background-color:#fff
  }
  ::-webkit-scrollbar-track:hover {
    background-color:#f4f4f4
  }
  
  /* scrollbar itself */
  ::-webkit-scrollbar-thumb {
    background-color:#babac0;
    border-radius:16px;
    border:5px solid #fff
  }
  ::-webkit-scrollbar-thumb:hover {
    background-color:#a0a0a5;
    border:4px solid #f4f4f4
  }
  
.Content {
    padding-top:60px;
 }
 .Input {
    width:300px;
    padding:0px;
    box-sizing:border-box;
}



.InputElement {
    outline: none;
    border: 1px solid #2D81F7;
    display:block;
    width: 100%;
    height:36px;
    background: #FFFFFF 0% 0% no-repeat padding-box;
    font:normal normal normal 15px/12px Gilroy;
    letter-spacing: 0px;
    color: #707070;
    border-radius: 8px;
    padding: 8px;
    box-sizing: border-box;
    

}

.InputElement:focus {
    outline:none;

    
}

.Invalid{
    border:1px solid red;
    /* color: rgb(155, 34, 34); */
    /* background: rgba(250, 128, 114, 0.815); */
  
}

.Valid{
    border: 1px solid rgb(77, 212, 23);
    /* background:rgba(41, 201, 41, 0.432); */
    color: black;
}

.error-msg{

    line-height:normal;
    padding:6px;
    
}
.glogo {
    width:15px;
    height:15px;
   
}

.logo-shelp{

    width: 151px;
    height: 29px;
    opacity: 1;
    
}  
        
.profile-logo{
    width: 40px;
    height: 20px;
    opacity: 1;
}

.Content-text {
    font: normal normal 400 66px/106px Gilroy;
    letter-spacing: 3.16px;
    line-height: normal;
  }
  
  .heading-1,
  .heading-2,
  .heading-3,
  .heading-4 {
    font-size: 60px;
  }
  .heading-1 {
    color: #3c4852;
  }
  
  .heading-2 {
    color: #3c4852;
  }
  
  .heading-3 {
    color: #2d81f7;
  }
  
  .heading-4 {
    color: #08bd80;
  }
  
  .MainPageback {
  }
  
  .circle1,
  .circle2 {
    position: absolute;
  }
  
  .circle1 {
    width: 150px;
    left: 0px;
    bottom: 0px;
  }
  .circle2 {
    width: 240px;
    bottom: -150px;
    left: -120px;
  }
  
  @media (max-width: 700px) {
    .Content-text {
      display: none;
    }
  }
  .navbar-collapse{
    justify-content: space-around !important;
}


.navbar{
    
    background: #FFFFFF 0% 0% no-repeat padding-box !important; 
    box-shadow: 0px 3px 11px #BAD8FD40 !important;
    margin-bottom:-40px!important;
}


.Navbar nav{
    height:100%;
}


.Logo-specs{
    margin-left:150px;
}

.teachLink{
    font: normal normal 200 17px/23px Gilroy;
    letter-spacing: 0.47px;
    color: #566775;
    border-radius:6px;
    background:rgba(128, 128, 128, 0.192);
    margin-right:30px;
    
  
}
.teacherActive{
    background:white;
    border:1px solid #566775;;
}


.Signupbtn,.Loginbtn,.logoutlink{
    font: normal normal 400 17px/20px Gilroy;
    letter-spacing: 0.47px;
    color: #FFFFFF;
    background: #2D81F7 0% 0% no-repeat padding-box;
    border-radius: 8px;
    opacity: 1;
    margin-left:10px;
}
.fa-heart{
    color:red;
}
#bookmarkNav{
    
    color:rgba(13, 22, 46, 0.76) !important;
    font-weight:bold;
    font: normal normal 200 17px/23px Gilroy;
}

.active-categoryMenu{
    color:black !important;
    font-weight:bolder !important;
    
}

.Loginbtn:hover,
.Signupbtn:hover{
    opacity:0.7;
}

.profileName{
    font: normal normal 200 17px/23px Gilroy;
    color:rgba(13, 22, 46, 0.76) !important;
 
}

.btnactive{
    background: #FCFCFC 0% 0% no-repeat padding-box;
    border: 0.5px solid #2674E2;
    border-radius: 8px;
    font: normal normal 400 17px/20px Gilroy;
    letter-spacing: 0.47px;
    color: #2D81F7;
    margin-left:10px;
}

.dropdown-toggle{
    color: #566775;
}



.dropdown-item{
   
    font: normal normal  17px/20px Gilroy;
    letter-spacing: 0.47px;
    color: #566775;
    opacity:0.7;
   
}

.dropdown-item:active{
    background:#08BD80 !important;
}


.dropdown-item:hover{
  font-weight:bolder!important;
   
}
.dropdown:hover .dropdown-menu{
    display:block;
    margin-top:0;

}



.wishlistlink,.profilelink{
    color: #566775;
}

.linkactive{
    font-weight:bolder!important;
}

.navlink:hover{
    color:#566775!important;
}


.wishlistlink:hover,
.profilelink:hover{

    font-weight:bolder!important;
}



.fa-bars{
    color:#2D81F7;
}

.usere{
    margin-right:20px;
}


@media (max-width:998px){

    .Signupbtn,.Loginbtn,.logoutlink{
        font: normal normal 400 17px/20px Gilroy;
        letter-spacing: 0.47px;
        color: grey;
        background: none;
        border-radius: 8px;
        opacity: 1;
        margin-left:0px;
        border:none;
    }

    .btnactive{
        background:none;       
        border-radius: 8px;
        font: normal normal 400 17px/20px Gilroy;
        letter-spacing: 0.47px;
        color: #2D81F7;
        margin-left:0px;
        border:none;
    }
    
}  
.searchItems {
    position: absolute;
    background: white;
    border-radius: 3px;
    width: auto;
    white-space: nowrap;
  }
  
  .searchItems ul {
    margin: 0 !important;
    padding: 0 !important;
    list-style-type: none;
    margin: 0;
    padding: 10px;
    padding-right: 20px;
    overflow-y: auto;
    overflow-x: hidden;
    max-height: 220px;
    border: 1px solid #8080809e;
    border-radius:4px;
  }
  
  .searchItems ul li {
    /* margin-top: 10px; */
    /* margin-bottom: 10px; */
    border-bottom: 1px solid rgb(202, 199, 199);
    padding-bottom: 20px;
    padding-top: 10px;
    color: #5e6474;
    border-radius: 2px;
    padding-left: 10px;
    padding-right: 10px;
  }
  
  .searchItems ul li:hover {
    cursor: pointer;
    background: #e9ecef;
  }
  
  .name span {
    margin-left: 10px;
    /* opacity: 0.6; */
  }
  .author{
    padding:4px;
    border-radius:12px;
    border:2px solid #2D81F7;
    background:#5d98eb59;
    color:#0000ffc9;
  }
  .Categories-heading {
    font: normal normal 800 22px/31px Gilroy;
    letter-spacing: 0.5px;
    color: #3c4852;
    opacity: 1;
  }
  
  .ListOfCourses > * {
    white-space: nowrap;
    font: normal normal normal 18px/26px Gilroy;
    letter-spacing: 0px;
    color: #3c4852;
    display: block;
    margin-bottom: 20px;
    border-left: 3px solid transparent;
    padding-left: 3px;
  }
  
  .CategoriesSlider {
    display: flex;
    overflow-x: scroll;
    margin: 20px;
  }
  
  .CategoriesSlider > * {
    white-space: nowrap;
    display: inline-block;
    border: 1px solid rgba(128, 128, 128, 0.712);
    border-radius: 20px;
    padding-right: 10px;
    padding-left: 10px;
    padding-top: 4px;
    margin-right: 5px;
    color: rgba(0, 0, 0, 0.849);
  }
  
  .CategoriesSlider > * a {
    text-decoration: none;
  }
  
  .CategoriesSlider > *:active {
    color: rgba(255, 255, 0, 0.267);
  }
  
  .CategoriesSlider::-webkit-scrollbar {
    display: none;
  }
  .Sactive-category {
    border: 1px solid #08bd80;
    background: rgba(8, 189, 129, 0.116);
    color: #08bd80;
  }
  
  .active-category {
    width: 100%;
    background: #08bd80 0% 0% no-repeat padding-box !important;
    border-radius: 8px;
    opacity: 1;
    padding: 4px;
    padding-left: 6px;
    font: normal normal normal 18px/26px Gilroy;
    letter-spacing: 0px;
    color: white;
    opacity: 1;
  }
  .ListOfCourses > *:hover {
    /* opacity: 0.9 !important;*/
    color: grey !important;
    border-left: 3px solid grey;
    padding-left: 3px;
    transition: all ease 0.2s;
  }
  
  /* Cards section */
  .CategoryDevider {
    display: flex;
  }
  
  .Course-Cards {
    display: flex;
    flex-wrap: wrap;
    margin-left: 0px;
    margin-bottom: 40px;
  
    overflow: hidden;
    overflow: hidden;
  }
  
  .CategoriesTitle {
    margin-left: 30px;
  }
  
  .my-card {
    margin-left: 20px;
    display: flex;
    flex-direction: column;
  }
  
  .CategoriesTitle {
    font: normal normal 30px/38px Gilroy;
    letter-spacing: 0px;
    color: #3c4852;
    opacity: 1;
  }
  
  .my-card img {
    width: 290px;
    height: 160px;
    border-radius: 8px;
  }
  
  .Course-Devider {
    height: 100vh;
    border: 1px solid #707070;
    opacity: 0.5;
    margin-left: 30px !important;
  }
  
  .Course-Title {
    padding-top: 12px;
    font: normal normal normal 18px/14px Gilroy;
    letter-spacing: 0px;
    color: #3c4852;
  }
  
  .Course-Teacher,
  .Course-info {
    color: #3c4852;
    font: normal normal 17px/19px Gilroy;
    letter-spacing: 0px;
    color: #3c4852;
  }
  
  .Course-Teacher {
    font-size: 14px;
    opacity: 0.9;
    line-height: 0px;
  }
  
  .Course-info {
    font-size: 14px;
    display: flex;
  }
  
  .Course-rating {
    text-align: left;
    color: #3c4852;
  
  }
  
  .Course-star {
    flex-grow: 0 !important;
    margin-left: 4px;
  }
  
  .CourseTimesUpdated,.Course-Price{
    flex-grow: 1;
    color: #3c4852;
  }
  
  .CourseTimesUpdated {
    text-align: left;
    font-size: 14px;
  }
  
  .Course-Price {
    text-align: right;
  }
  
  .recommended {
    border-radius: 8px;
    background: #007bff !important;
    color: white;
    padding: 5px;
    padding-left: 6px !important;
  }
  .recommended:hover {
    background-color: #08bd80 !important;
    color: white !important;
    transition: all ease 0.2s;
  }
  
  @media (max-width: 992px) {
    .Course-Content {
      display: block !important;
      margin-top: 0px !important;
    }
  
    .Categories-main {
      display: none;
    }
    .Course-Devider {
      display: none;
    }
  
    .CategoriesTitle {
      text-align: center;
    }
  
    .Course-Cards {
      margin-left: 20px;
      margin-bottom: 40px;
    }
  }
  
  @media (min-width: 992px) {
    .CategoriesSlider {
      display: none;
    }
  }
  
  @media (max-width: 440px) {
    .my-card img {
      width: 250px;
      height: 120px;
      border-radius: 8px;
      margin: 0px;
    }
    .my-card {
      margin: 0px;
    }
    .CategoriesTitle {
      font: normal normal 20px/38px Gilroy;
    }
  }
  .BannerSection{
  
    display:flex;
}

.BannerImage{
    position: relative !important;
    width: 100%;
    height:240px;
    background: transparent linear-gradient(270deg, #00000000 0%, #000000 100%) 
    0% 0% no-repeat padding-box;
    border-radius: 16px;
    opacity:1;
    z-index:2;
    background-repeat: no-repeat;
    background-position: top;
    object-fit: fill;

}

.Banner-text{
    position: absolute;
    top:25%;
    left:15%;
    text-align: left;
    font: normal normal 600 55px/76px Gilroy;
    letter-spacing: 1.24px;
    color: #FFFFFF;
    opacity: 1;
    z-index:10;
}

.Teacher-text{

    font: normal normal 47px/75px Gilroy;
    letter-spacing: 1.24px;
    color: #2D81F7;
    opacity: 1;
    z-index:10;
    align-self: center;
    width:700px;
    
}

.Teacher-banner{
    display: flex;
    justify-content: space-around;
    align-items:center;
    flex-wrap:wrap;
    margin:50px;
}

.createCourse{
    
    background: #2D81F7 0% 0% no-repeat padding-box;
    border-radius: 8px;
    opacity: 1;
    width: 250px;
    height: 56px;
    font: normal normal 300 20px/29px Gilroy;
    letter-spacing: 0.96px;
    color: #FFFFFF;
    align-self:center;
}


@media(max-width:1200px){
    .createCourse{
        
        width: 200px;
        height: 55px;
        font: normal normal 300 18px/20px Gilroy;

    }
    .Teacher-text{

        font: normal normal 27px/55px Gilroy;
        letter-spacing: 1.24px;
        color: #2D81F7;
        opacity: 1;
        z-index:10;
        align-self: center;
        width:520px;
        
    }
    
}


@media(max-width:992px){

    .Banner-text{
        font: normal normal 600 45px/76px Gilroy;
    }


    .BannerImage{ 
        height:190px;
    }
    .createCourse{
        
        width: 200px;
        height: 48px;
        font: normal normal 300 18px/20px Gilroy;

    }
    .Teacher-text{

        font: normal normal 27px/55px Gilroy;
        letter-spacing: 1.24px;
        color: #2D81F7;
        opacity: 1;
        z-index:10;
        align-self: center;
        width:400px;
        
    }
    

}

@media (max-width: 690px){
    .Teacher-text{
        display:none;
    }
}

@media (max-width:646px){

    .BannerImage{

        height:160px;
    }
    .Banner-text{
        font: normal normal 600 40px/56px Gilroy;
    }
    .createCourse{
        
        width: 200px;
        height: 48px;
        font: normal normal 300 18px/20px Gilroy;

    }
    .Teacher-text{

        font: normal normal 27px/55px Gilroy;
        letter-spacing: 1.24px;
        color: #2D81F7;
        opacity: 1;
        z-index:10;
        align-self: center;
        width:320px;
        
    }

}

@media (max-width:400px){
    .BannerImage{
        height:130px;
    }
    .Banner-text{
        font: normal normal 600 30px/36px Gilroy;
    }

}

.Course-Content,
.Course-Content-wrap {
  display: flex;
  margin-top: 10px;
}
.Course-Content-wrap {
  flex-wrap: wrap;
}
.Course-Content-col {
  display: flex;
  flex-direction: column;
  margin-left: 30px;
}

.Interest-banner {
  margin-top: 50px;
  margin-left: 30px;
  position: relative;
}

.Interest-banner img {
  display: flex;
  background: transparent linear-gradient(270deg, #00000000 0%, #000000 100%) 0%
    0% no-repeat padding-box;
  height: 145px;
  width: 100%;
  object-fit: cover;
  margin-bottom: 50px;
  opacity: 0.9;
  z-index: 2;
  border-radius: 6px;
}

.Interest-banner p {
  position: absolute;
  top: 20%;
  left: 10%;
  color: white;
  font: normal normal 600 29px/31px Gilroy;
  opacity: 1;
  z-index: 10;
}

.Interest-banner button {
  position: absolute;
  top: 20%;
  left: 75%;
  border-radius: 2px;
  padding: 6px;
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  font: normal normal 15px/22px Gilroy;
  letter-spacing: 0.72px;
  color: #08bd80;
  background: #ffffff 0% 0% no-repeat padding-box;
  border-radius: 8px;
}

.loader {
  margin-top: 10%;
  margin-left: 40%;
}

.productLink {
  text-decoration: none;
}

.productLink:hover {
  opacity: 0.9;
  text-decoration: none;
}

@media (min-width: 1200px) {
  .container {
    max-width: 1300px !important;
  }
}

@media (max-width: 991px) {
  .Interest-banner button {
    left: 65%;
    top: 30%;
  }
  .Interest-banner p {
    font: normal normal 600 19px/31px Gilroy;
  }
  .Course-Content-col {
    margin-left: 0px;
  }
  .my-card {
    margin-left: 0px !important;
  }
  /* .container{ max-width:991px !important;} */

  .Course-Content,
  .Course-Content-wrap {
    justify-content: center;
  }
}

@media (max-width: 550px) {
  .loader {
    /* margin-bottom:100px; */
    margin: 100px auto;
  }

  .Interest-banner button {
    left: 100px;
    top: 100px;
    margin-top: 10px;
    font: normal normal 12px/22px Gilroy;
    width: 150px;
    height: 30px;
  }

  .container {
    padding: 0px !important;
    margin: 0px !important;
  }
  .BannerImage {
    border-radius: 0;
  }
  .CategoriesTitle {
    font: normal normal normal 12px/10px Gilroy;
    padding-top: 0px;
  }

  .Course-Content-col {
    margin-left: 0px;
  }
  .Interest-banner {
    margin: 0;
  }
  .Interest-banner img {
    border-radius: 0;
    margin-bottom: 0px;
  }
}

@media (max-width: 467px) {
  .Interest-banner button {
    left: 60px;
    top: 90px;
    margin-top: 0px;
    left: 30%;
  }

  .Interest-banner p {
    font: normal normal 600 15px/31px Gilroy;
    top: 10%;
    left: 30%;
  }
}
.Preference-buttons{
    display:flex;
    flex-wrap:wrap;
    justify-content: center;
}

.Preference-buttons button{
    width: 200px;
    height:100px;
    border-radius: 10px;
    margin-right:20px;
    margin-bottom:20px;
    border:2px solid #08BD80;
    background-color: white;
    font: normal normal 20px/22px Gilroy;
    letter-spacing: 0.72px; 

}

.SumbitBtn{
   display: flex;
   justify-content: center;
   margin-top: 100px;
  
   

}

.SumbitBtn button{
    width:100px;
    height:50px;
    border-radius: 7px;
    font: normal normal 20px/22px Gilroy;
    letter-spacing: 0.72px;
    background:#08BD80;
    color:white;
   
}

.Preference-buttons button:hover{
   
    background-color: rgba(8, 189, 129, 0.671);
    color:white;

}

.touched{
    background-color: #08BD80!important;
    color:white;

}

.title{
    display:flex;
    justify-content: center;
    margin-bottom:50px;
}


@media(max-width:760px){

        .SumbitBtn{
            margin-top: 40px;
     
        }

        .Preference-buttons button{
            width: 150px;
            height:80px;
            border-radius: 10px;
            margin-right:16px;
            margin-bottom:16px;
          
        }

        
}
.navbar-collapse{
  justify-content: space-around !important;
}


.navbar{
  
  background: #FFFFFF 0% 0% no-repeat padding-box !important; 
  box-shadow: 0px 3px 11px #BAD8FD40 !important;
  margin-bottom:-40px!important;
}


.Navbar nav{
  height:100%;
}


.Logo-specs{
  margin-left:150px;
}

.teachLink{
  font: normal normal 200 17px/23px Gilroy;
  letter-spacing: 0.47px;
  color: #566775;
  border-radius:6px;
  background:rgba(128, 128, 128, 0.192);
  margin-right:30px;
  

}
.teacherActive{
  background:white;
  border:1px solid #566775;;
}


.Signupbtn,.Loginbtn,.logoutlink{
  font: normal normal 400 17px/20px Gilroy;
  letter-spacing: 0.47px;
  color: #FFFFFF;
  background: #2D81F7 0% 0% no-repeat padding-box;
  border-radius: 8px;
  opacity: 1;
  margin-left:10px;
}
.fa-heart{
  color:red;
}
#bookmarkNav{
  
  color:rgba(13, 22, 46, 0.76) !important;
  font-weight:bold;
  font: normal normal 200 17px/23px Gilroy;
}

.active-categoryMenu{
  color:black !important;
  font-weight:bolder !important;
  
}

.Loginbtn:hover,
.Signupbtn:hover{
  opacity:0.7;
}

.profileName{
  font: normal normal 200 17px/23px Gilroy;
  color:rgba(13, 22, 46, 0.76) !important;

}

.btnactive{
  background: #FCFCFC 0% 0% no-repeat padding-box;
  border: 0.5px solid #2674E2;
  border-radius: 8px;
  font: normal normal 400 17px/20px Gilroy;
  letter-spacing: 0.47px;
  color: #2D81F7;
  margin-left:10px;
}

.dropdown-toggle{
  color: #566775;
}



.dropdown-item{
 
  font: normal normal  17px/20px Gilroy;
  letter-spacing: 0.47px;
  color: #566775;
  opacity:0.7;
 
}

.dropdown-item:active{
  background:#08BD80 !important;
}


.dropdown-item:hover{
font-weight:bolder!important;
 
}
.dropdown:hover .dropdown-menu{
  display:block;
  margin-top:0;

}



.wishlistlink,.profilelink{
  color: #566775;
}

.linkactive{
  font-weight:bolder!important;
}

.navlink:hover{
  color:#566775!important;
}


.wishlistlink:hover,
.profilelink:hover{

  font-weight:bolder!important;
}



.fa-bars{
  color:#2D81F7;
}

.usere{
  margin-right:20px;
}


@media (max-width:998px){

  .Signupbtn,.Loginbtn,.logoutlink{
      font: normal normal 400 17px/20px Gilroy;
      letter-spacing: 0.47px;
      color: grey;
      background: none;
      border-radius: 8px;
      opacity: 1;
      margin-left:0px;
      border:none;
  }

  .btnactive{
      background:none;       
      border-radius: 8px;
      font: normal normal 400 17px/20px Gilroy;
      letter-spacing: 0.47px;
      color: #2D81F7;
      margin-left:0px;
      border:none;
  }

}

.Description-main {
  display: flex;
  flex-direction: column;
  margin-right: 10px;
  width: 600px;
}

.Course-Rating-section,
.Course-Teacher-bookmark,
.flex-row {
  display: flex;
}

.Course-title-main {
  font: normal normal 500 28px/34px Gilroy;
  letter-spacing: -0.04px;
  color: #272f36;
}

.Course-Rating-section p {
  font: normal normal 600 15px/19px Gilroy;
  letter-spacing: 0px;
  color: rgb(255, 102, 0);
  padding-top: 11px;
}

.break1,
.break2 {
  width: 30%;
  height: 2px;
  background-color: grey;
  opacity: 0.4;
  margin-bottom: 20px;
}

.Short-Description {
  font: normal normal 17px/23px Gilroy;
  letter-spacing: 0px;
  color: #566775;
}

.break2 {
  width: 20%;
}
.Course-Teacher-bookmark {
  justify-content: space-between;
}
.Course-teacher-name p {
  font: normal normal normal 13px/17px Gilroy;
  letter-spacing: 1.19px;
  color: #6390b4;
}
.Course_live_classes {
  font: normal normal normal 23px/17px Gilroy;
  letter-spacing: 1.19px;
  color: white;
  background: #3a88f7;
  padding: 10px;
  border-radius: 4px;
  margin: 0;
  margin-top: 20px;
  margin-bottom: 10px;
}

.ratingtimesUpdated {
  color: #5c5e5f !important;
  font-size: 14px !important;
}

.Course-teacher-name h2 {
  font: normal normal 400 20px/29px Gilroy;
  letter-spacing: 1.68px;
  color: #0e1f2c;
  box-shadow: 1px 1px 5px rgba(205, 215, 230, 0.6),
    -1px -1px 5px rgba(255, 255, 255, 0.342);
  background-color: white;
  padding: 4px;
  padding-right: 10px;
  border-radius: 4px;
}

.fa-play-circle {
  font-size: 22px;
  color: #0e3c5f !important;
}

.play-btn p,
.Bookmarkbtn p {
  font: normal normal 200 14px/29px Gilroy;
  letter-spacing: 0.5px;
  color: #566775;
  margin-right: 20px;
}

.ratingtimesUpdated {
  color: #5c5e5f !important;
  opacity: 0.8;
}

.Bookmarkbtn i,
.fa-download {
  font-size: 22px;
  color: #0e3c5f;
  cursor: pointer;
}

.fa-bookmark:hover,
.fa-bookmark-o:hover,
.fa-download:hover {
  box-shadow: none;
  border-radius: 50%;
}

.fa-download,
.fa-bookmark,
.fa-bookmark-o {
  margin-left: 20px;
  box-shadow: 1px 1px 5px rgba(140, 161, 190, 0.6),
    -1px -1px 5px rgba(255, 255, 255, 0.342);
  border-radius: 50%;
  padding: 7px;
}

.Breakpoint {
  margin-top: 30px;
  width: 100%;
  height: 2px;
  background-color: grey;
  opacity: 0.4;
}

.bookmarked-color {
  color: rgba(253, 216, 5, 0.966) !important;
}

.RatingStars {
  padding-left: 6px;
}

@media (max-width: 1280px) {
  .Description-main {
    flex-grow: 1;
  }
  .Course-Video {
    text-align: center;
    width: 400px;
    flex-grow: 1;
  }

  .section2part1 {
    width: auto;
    margin: 40px 40px 0 40px;
  }

  .flex-center {
    margin: 40px 40px 0 40px;
  }
}

@media (max-width: 475px) {
  .section2part1 {
    width: 100%;
    flex-shrink: 1;
    margin: 0;
  }

  .flex-center {
    margin: 0;
    width: 100%;
  }
}
.CategoriesTitle {
  text-align: center;
}
.Course-Content,
.Course-Content-wrap {
  display: flex;
  margin-top: 10px;
}
.Course-Content-wrap {
  flex-wrap: wrap;
}
.Course-Content-col {
  display: flex;
  flex-direction: column;
  margin-left: 30px;
}

.Interest-banner {
  margin-top: 50px;
  margin-left: 30px;
  position: relative;
}

.Interest-banner img {
  display: flex;
  background: transparent linear-gradient(270deg, #00000000 0%, #000000 100%) 0%
    0% no-repeat padding-box;
  height: 145px;
  width: 100%;
  object-fit: cover;
  margin-bottom: 50px;
  opacity: 0.9;
  z-index: 2;
  border-radius: 6px;
}

.Interest-banner p {
  position: absolute;
  top: 20%;
  left: 10%;
  color: white;
  font: normal normal 600 29px/31px Gilroy;
  opacity: 1;
  z-index: 10;
}

.Interest-banner button {
  position: absolute;
  top: 20%;
  left: 75%;
  border-radius: 2px;
  padding: 6px;
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  font: normal normal 15px/22px Gilroy;
  letter-spacing: 0.72px;
  color: #08bd80;
  background: #ffffff 0% 0% no-repeat padding-box;
  border-radius: 8px;
}

.loader {
  margin-top: 10%;
  margin-left: 40%;
}

.productLink {
  text-decoration: none;
}

.productLink:hover {
  opacity: 0.9;
  text-decoration: none;
}

@media (min-width: 1200px) {
  .container {
    max-width: 1300px !important;
  }
}

@media (max-width: 991px) {
  .Interest-banner button {
    left: 65%;
    top: 30%;
  }
  .Interest-banner p {
    font: normal normal 600 19px/31px Gilroy;
  }
  .Course-Content-col {
    margin-left: 0px;
  }
  .my-card {
    margin-left: 0px !important;
  }
  /* .container{ max-width:991px !important;} */

  .Course-Content,
  .Course-Content-wrap {
    justify-content: center;
  }
}

@media (max-width: 550px) {
  .loader {
    /* margin-bottom:100px; */
    margin: 100px auto;
  }

  .Interest-banner button {
    left: 100px;
    top: 100px;
    margin-top: 10px;
    font: normal normal 12px/22px Gilroy;
    width: 150px;
    height: 30px;
  }

  .container {
    padding: 0px !important;
    margin: 0px !important;
  }
  .BannerImage {
    border-radius: 0;
  }
  .CategoriesTitle {
    font: normal normal normal 12px/10px Gilroy;
    padding-top: 0px;
  }

  .Course-Content-col {
    margin-left: 0px;
  }
  .Interest-banner {
    margin: 0;
  }
  .Interest-banner img {
    border-radius: 0;
    margin-bottom: 0px;
  }
}

@media (max-width: 467px) {
  .Interest-banner button {
    left: 60px;
    top: 90px;
    margin-top: 0px;
    left: 30%;
  }

  .Interest-banner p {
    font: normal normal 600 15px/31px Gilroy;
    top: 10%;
    left: 30%;
  }
} 
    </style>     
    <!-- <p><a href="./FirstTest">Test Servlet functionality</a></p> -->


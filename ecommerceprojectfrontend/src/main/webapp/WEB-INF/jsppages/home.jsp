<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
    </style>
</head>
<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img  src="<c:url value='/resources/images/a.jpg'></c:url>" alt="first slide" style="width:1366px;height:510px">
                </div>
                <div class="item">
                    <img class="img img-circle" src="<c:url value='/resources/images/d.jpg'></c:url>" alt="Second slide" style="width:1366px;height:510px">
                </div>
                <div class="item">
                    <img class="img-bordered" src="<c:url value='/resources/images/c.jpg'></c:url>" alt="Third slide" style="width:1366px;height:510px">
                </div>
                <div class="item">
                    <img class="img-bordered" src="<c:url value='/resources/images/b.jpg'></c:url>" alt="Third slide" style="width:1366px;height:510px">
                </div>
                <div class="item">
                    <img class="img-bordered" src="<c:url value='/resources/images/e.jpg'></c:url>" alt="Third slide" style="width:1366px;height:510px">
                </div>
                 <div class="item">
                    <img class="img-thumbnail" src="<c:url value='/resources/images/f.jpg'></c:url>" alt="forth slide" style="width:1366px;height:510px">
                </div>
                <div class="item">
                    <img class="img-thumbnail" src="<c:url value='/resources/images/g.jpg'></c:url>" alt="forth slide" style="width:1366px;height:510px">
                </div>
                <div class="item">
                    <img class="img-thumbnail" src="<c:url value='/resources/images/i.jpg'></c:url>" alt="forth slide" style="width:1366px;height:510px">
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel --><br><br>
<div class="row slideanim">     
        <img class="img-thumbnail" src="<c:url value='/resources/images/a1.PNG'></c:url>" alt="forth slide" style="width:1366px;height:510px"><br>
        </div>
        <br>
        <div class="row slideanim">
		<img class="img-thumbnail" src="<c:url value='/resources/images/b1.PNG'></c:url>" alt="forth slide" style="width:1366px;height:510px"><br>
		</div>
		<br>
		<div class="row slideanim">
		<img class="img-thumbnail" src="<c:url value='/resources/images/c1.PNG'></c:url>" alt="forth slide" style="width:1366px;height:510px">
</div>
<script>
$(document).ready(function(){
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 200) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>


</div>
</body>
</html>
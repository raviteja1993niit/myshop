<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
    font-size: 17px;
}

#myVideo {
    position: fixed;
    right: 0;
    bottom:10px;
    top:50px;
    min-width: 100%; 
    min-height: 100%;
}

.content {
    position: fixed;
    bottom: 0;
    background:;
    color:;
    width: 100%;
    padding: 20px;
}

#myBtn {
    width: 200px;
    font-size: 18px;
    padding: 10px;
    border: none;
    background: #000;
    color: #fff;
    cursor: pointer;
}

#myBtn:hover {
    background: #ddd;
    color: black;
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}
</style>
</head>
<body onload="myFunction()" onclick="myFunction()">

<video controls autoplay  loop id="myVideo">
  <source src="<c:url value='/resources/images/video.mkv'></c:url>" type="video/mp4">
  Your browser does not support HTML5 video.
</video>

<div class="content">
  <h1 align="center"><b><h2>NIIT</h2><i>DIGITAL TRANSFORMATION </b></i></h1>
 <!-- <h1 align="center"><b><h2>Fashion.........<i>forever</b></i></h2></h1> -->
</div>
<script>
 var video = document.getElementById("myVideo");
var btn = document.getElementById("myBtn");

function myFunction() {
  if (video.paused) {
    video.play();
  } else {
    video.pause();
  }
} 
</script>
<div class="footer">
         © Copyright 2018, All Rights Reserved <b>NIIT Ecommerce	</b>
      </div>
</body>
</html>
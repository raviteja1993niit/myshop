<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 290px;
  height: 250px;
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 600px;
  height: 300px;
}
</style>
<script>
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);
  /*and also for touch screens:*/
  lens.addEventListener("touchmove", moveLens);
  img.addEventListener("touchmove", moveLens);
  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>
</head>
<body>
<div class="container">
<table class="table table">
<tr>
<div class="img-zoom-container">
<td>
<img id="myimage" src="<c:url value='/resources/images/${productAttr.id}.jpg'></c:url>" height="540px" width="600px"></td>
<td><br><br><br><font color="white"><b><h3>Maginifying Glass</h3></b></font><div id="myresult" class="img-zoom-result"></div></td>
</div>
<br><br><br><br><br><br>
<table align="center" border="1" class="table table-sm">
<tbody>
<tr><td><font color="white">PRODUCT NAME</font></td><td><font color="white">${productAttr.productname}</font></td></tr>
<tr><td><font color="white">PRODUCT DESCRIPTION</font></td><td><font color="white">${productAttr.productdesc}</font></td></tr>
<tr><td><font color="white">PRODUCT PRICE</font></td><td><font color="white">${productAttr.price}</font></td></tr>
<tr><td><font color="white">PRODUCT IN STOCK</font></td><td><font color="white">${productAttr.quantity}</font></td></tr>
<tr><td><font color="white">PRODUCT CATEGORY</font></td><td><font color="white">${productAttr.category.categoryname}</font></td></tr>
<c:if test="${productAttr.quantity > 0 }">
<security:authorize access="hasRole('ROLE_USER')">
<form action="<c:url value='/cart/addtocart/${productAttr.id}'></c:url>">
<tr><td><font color="white">ENTER QUANTITY</font></td><td><input type="number" name="requestedQuantity" min="1" max="${productAttr.quantity} " value=0></td></tr>
<tr>
<td>
<a href="<c:url value='#'></c:url>">
<button class="btn btn-sm btn-active">ADD TO CART</button></a></td></form>
</security:authorize>
</c:if>
<td><a href="<c:url value='/all/getallproducts/'></c:url>">
<button class="btn btn-sm btn-active">BACK TO PREVIOUS PAGE</button></a></td>
</tr>
</tbody>
</table>
</div>
<script>
// Initiate zoom effect:
imageZoom("myimage", "myresult");
</script>
</body>
</html>
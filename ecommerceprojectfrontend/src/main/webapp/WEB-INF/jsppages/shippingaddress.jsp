<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$('#form').validate({
		rules:{
	"apartmentnumber":{required:true},
	"streetname":{required:true},
	"state":{required:true},
	"city":{required:true},
	"country":{required:true},
	"zipcode":{required:true,number:true}
		}
	})
})
</script>
</head>
<body>
<div class="container">
<c:url var="url" value="/cart/createorder"></c:url>
<form:form modelAttribute="shippingaddress" action="${url }" id="form"> 
<p align="center"><b>SHIPPING ADDRESS</b>
<form:hidden path="shippingAddressId"/>
<form:label path="apartmentnumber" align="left">ENTER APARTMENT NUMBER</form:label>
<form:input path="apartmentnumber" id="apartmentnumber"/>
<form:label path="streetname" align="left">ENTER STREETNAME</form:label>
<form:input path="streetname" id="streetname"/>
<form:label path="state" align="left">ENTER STATE</form:label>
<form:input path="state" id="state"/>
<form:label path="country" align="left">ENTER COUNTRY</form:label>
<form:input path="country" id="country"/>
<form:label path="zipcode" align="left">ENTER ZIPCODE</form:label>
<form:input path="zipcode" id="zipcode"/>
<input type="submit" value="NEXT">
</p>
</form:form>
</div>
</body>
</html>
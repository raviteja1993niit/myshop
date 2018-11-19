<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="header.jsp" %>
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LIST OF PRODUCTS</title>
<script type="text/javascript">
$(document).ready(function()
		{
			var searchCondition = '${searchCondition}'
			$('.table').DataTable({
				"lengthMenu":[[2,5,-1],[2,5,"All"]],
				"oSearch":{
				"sSearch":searchCondition
				}
			})
		}
		)
</script>
<style type="text/css">
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   height:4%;
   background-color: #333333;
   color: white;
   text-align: center;
}
</style>
</head>
<body ><%-- background="<c:url value='/resources/images/1.jpg'></c:url>" --%>
<div class="container">
<font color="white">
<table align="center" class="table"><!-- table-responsive -->
<caption><h2><center><font color="white">LIST OF PRODUCTS</font></center></h2></caption>
<thead>

<tr><th><font color="white">PRODUCT ID</font></th><th><font color="white">PRODUCT NAME</font></th><!-- <th><font color="white">PRODUCT DESCRIPTION</font></th><th><font color="white">PRODUCT QUANTITY</font></th> --><th><font color="white">PRODUCT PRICE</font></th><th><font color="white">CATEGORY</font></th><th><font color="white">ACTION</font></th></tr></thead>

<tbody>
<c:forEach items="${product }" var="p">
<tr><td> <img src="<c:url value='/resources/images/${p.id}.jpg'></c:url>" height="150px" width="250px"></td><td><font color="black"><c:out value="${p.productname}"></c:out></font></td><%-- <td><font color="white"><c:out value="${p.productdesc}"></c:out></font></td><td><font color="white"><c:out value="${p.quantity}"></c:out></font></td> --%><td><font color="black"><c:out value="${p.price}"></c:out></font></td>
<td><font color="black"><c:out value="${p.category.categoryname}"></c:out></td>
<td>
<a href="<c:url value='/all/getproducts?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-info-sign"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;
<security:authorize access="hasRole('ROLE_ADMIN')">
<a href="<c:url value='/admin/deleteproduct?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<c:url value='/admin/getupdateproductform?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-pencil"></span></a>
</security:authorize>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</font>
</div>

</body>
</html>
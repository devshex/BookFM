<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.List"%>
<%@ page import="com.db.DBConnect"%>
<%@ page import="com.dao.BookDAO"%>
<%@ page import="com.dao.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<%
	int bid1 = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookbyid(bid1);
	%>


	<div class="container">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="Book/<%=b.getPhotoName()%>"
					style="height: 150px; width: 100px"> <br>
				<h4 class="mt-3">
					Book Name :<span class="text-success"><%=b.getBookName()%></span>
				</h4>
				<h4>
					Narrated by: <span class="text-success"><%=b.getNarrator()%></span>
				</h4>
				<h4>
					Category: <span class="text-success"><%=b.getBookCategory()%></span>
				</h4>

			</div>
			<div class="col-md-6  text-center p-5 border bg-white">

				<h4><%=b.getBookName()%></h4>
				<br>
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-money-bill fa-3x"></i>
						<p>Secured Payment</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-bolt fa-3x"></i>
						<p>Instant Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-arrow-rotate-left fa-3x"></i>
						<p>30 Days Return</p>
					</div>

				</div>


				<div class="text-center p-3">

					<a href="" class="btn btn-primary"><i
						class="fa-solid fa-cart-shopping"></i>Add to Cart</a> <a href=""
						class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i>200</a>
					 <a href ="" class="btn btn-primary"><i class="fa-solid fa-money-bill-wave"></i>Pay Online</i></a>

				</div>

			</div>
		</div>
	</div>
</body>
</html>
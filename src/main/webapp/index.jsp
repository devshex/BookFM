<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.List"%>
<%@ page import="com.db.DBConnect"%>
<%@ page import="com.dao.BookDAO"%>
<%@ page import="com.dao.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="com.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">
.back-img {
	background: url("img/ssb.jpeg");
	background-repeat: no-repeat;
	height: 400px;
	background-size: cover;
	background-position: center;
	align-item: center;
	text-align: center;
	clip-path: polygon(100% 0, 93% 50%, 100% 99%, 0% 100%, 7% 50%, 0% 0%);
}
</style>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Delicious+Handrawn&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Alkatra&family=Delicious+Handrawn&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Alkatra&family=Delicious+Handrawn&family=Raleway:ital,wght@1,300&display=swap')
	;
</style>




</head>

<!-- -->



<body style="background-color: #FEFEFF; margin: 0px; padding: 0px;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<!--navbar ke liye hai-->
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid mr-auto">
		<div class="container-fluid back-img"></div>
	</div>




	<hr>


	<!-- START recent book -->

	<div class="container-fluid">

		<h3 class="Rtext text-center">Newly Added</h3>

		<div class="row mx-auto">



			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-auto my-auto">
				<div class="crd-ho card">

					<div class="card-body text-center">

						<img alt="Responsive image" src="Book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-fluid">

						<div class="text1 text-left">
							<p>
								E-Book Name:<%=b.getBookName()%></p>
							<p>
								Narrated By:<%=b.getNarrator()%></p>
							<p>
								Price:Rs.<%=b.getPrice()%></p>
						</div>


						<div class="row1 row">

							<%
							if (u == null) {
							%>
							<a href="Login.jsp" class="btn btn-outline-dark btn-sm ml-2 mr-2">
								<i class="fa-solid fa-cart-shopping"></i> Add Cart
							</a>
							<%
							} else {
							%>
							<a
								href="new_cart?bid=<%=b.getBookId()%>&&uid=<%=u.getUser_id()%>"
								class="btn btn-outline-dark btn-sm ml-2 mr-2"> <i
								class="fa-solid fa-cart-shopping"></i> Add Cart
							</a>
							<%
							}
							%>
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-outline-dark btn-sm mr-2"> View Details</a>

						</div>
					</div>

				</div>
			</div>

			<%
			}
			%>





		</div>
		<div class="text-center mt-3 container">
			<a href="all_new_book.jsp"
				class="btn btn-outline-dark btn-md text-black"> View All </a>
		</div>

	</div>

	<!-- end recent book -->

	<hr>

	<!-- START New book -->

	<div class="container-fluid">
		<h3 class="Rtext text-center mt-2">Popular E-book</h3>
		<div class="row">

			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getPopularBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-auto my-auto">
				<div class="crd-ho card ">

					<div class="card-body text-center">

						<img alt="Responsive image" src="Book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-fluid">

						<div class="text1 text-left">
							<p>
								E-Book Name:<%=b.getBookName()%></p>
							<p>
								Narrated By:<%=b.getNarrator()%></p>
							<p>
								Price:Rs.<%=b.getPrice()%></p>
						</div>


						<div class="row1 row">

							<%
							if (u == null) {
							%>
							<a href="Login.jsp" class="btn btn-outline-dark btn-sm ml-2 mr-2">
								<i class="fa-solid fa-cart-shopping"></i> Add Cart
							</a>
							<%
							} else {
							%>
							<a
								href="popular_cart?bid=<%=b.getBookId()%>&&uid=<%=u.getUser_id()%>"
								class="btn btn-outline-dark btn-sm ml-2 mr-2"> <i
								class="fa-solid fa-cart-shopping"></i> Add Cart
							</a>
							<%
							}
							%>

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-outline-dark btn-sm mr-2"> View Details</a>

						</div>
					</div>

				</div>
			</div>

			<%
			}
			%>

		</div>

		<div class="text-center mt-3 container">
			<a href="all_popular_book.jsp"
				class="btn btn-outline-dark btn-md text-black"> View All </a>
		</div>

	</div>

	<!-- end New book -->

	<hr>

	<!-- START old book -->

	<div class="container-fluid">
		<h3 class="Rtext text-center mt-2">Vintage Releases</h3>
		<div class="row mx-auto">


			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao.getVintageBook();
			for (BookDtls b : list3) {
			%>
			<div class="col-auto my-auto">
				<div class="crd-ho card ">

					<div class="card-body text-center">

						<img alt="Responsive image" src="Book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-fluid">

						<div class="text1 text-left">
							<p>
								E-Book Name:<%=b.getBookName()%></p>
							<p>
								Narrated By:<%=b.getNarrator()%></p>
							<p>
								Price:Rs.<%=b.getPrice()%></p>
						</div>


						<div class="row1 row">

							<%
							if (u == null) {
							%>
							<a href="Login.jsp" class="btn btn-outline-dark btn-sm ml-2 mr-2">
								<i class="fa-solid fa-cart-shopping"></i> Add Cart
							</a>
							<%
							} else {
							%>
							<a
								href="vintage_cart?bid=<%=b.getBookId()%>&&uid=<%=u.getUser_id()%>"
								class="btn btn-outline-dark btn-sm ml-2 mr-2"> <i
								class="fa-solid fa-cart-shopping"></i> Add Cart
							</a>
							<%
							}
							%>
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-outline-dark btn-sm mr-2"> View Details</a>

						</div>
					</div>

				</div>
			</div>

			<%
			}
			%>







		</div>
		<!-- div row -->

		<div class="text-center mt-3 container">
			<a href="all_vintage_book.jsp"
				class="btn btn-outline-dark btn-md text-black"> View All </a>
		</div>

	</div>
	<!-- div container -->

	<!-- end old book -->

	<hr>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>
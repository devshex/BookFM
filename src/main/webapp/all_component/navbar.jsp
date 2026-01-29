<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false" %> 
<div class="container-fluid p-3  " style="background-color: #F7CD46">
	<div class="row">
		<div class="col-md-3 text-white">

			<div class="hh">
				<h3>
					<i class="fa-sharp fa-solid fa-headphones"></i> BOOKFM
				</h3>
			</div>


		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="nav-text btn btn-outline-dark my-2 my-sm-0"
					type="submit">Search</button>
			</form>
		</div>

              <c:if test ="${not empty userobj}">
             <div class="node" style="margin-top: 16px">
            <a href="checkout.jsp"> <i class="fas fa-cart-plus fa-2x "></i></a>
         	<a href="Login.jsp" class="nav-text btn btn-outline-dark">
			<i class="fa-solid fa-user-plus"></i>${userobj.name}</a>
				
		    <a href="logout" 
		    class="nav-text btn btn-outline-dark text-black">
		    <i class="fa-solid fa-right-to-bracket"></i>Logout</a>
	</div>

</c:if>

<c:if test="${empty userobj }">
<div class="node" style="margin-top: 16px">

		
			<a href="Login.jsp" class="nav-text btn btn-outline-dark"><i
				class="fa-solid fa-right-to-bracket"></i> Login</a> <a
				href="Register.jsp" class="nav-text btn btn-outline-dark text-black"><i
				class="fa-solid fa-user-plus"></i> Register</a>
		</div>
</c:if>

		
	</div>
</div>



<!-- 

-->

<nav class="navbar navbar-expand-lg navbar-#BCE784 bg-custom">
	<a class="navbar-brand" href="#"></a>



	<ul class="navbar-nav mr-auto">
		<li class="nav-item"><a class="nav-text nav-link" href="index.jsp"><i
				class="fa-sharp fa-solid fa-house"></i> Home<span class="sr-only">(current)</span></a>
		</li>


		<li class="nav-text nav-item active"><a class="nav-link" href="all_new_book.jsp"><i
				class="fa-solid fa-book-open"></i> Newly Added </a></li>
		<li class="nav-text nav-item active"><a class="nav-link" href="all_popular_book.jsp"><i
				class="fa-solid fa-book-open"></i> Popular E-book </a></li>
		<li class="nav-text nav-item active"><a class="nav-link" href="all_vintage_book.jsp"><i
				class="fa-solid fa-book-open"></i> Vintage Releases </a></li>

	</ul>

	<form class="form-inline my-2 my-lg-0">
		<a href="setting.jsp" class="nav-text btn btn-outline-dark my-2 my-sm-0"
			type="submit">
			<i class="fa-solid fa-bars"></i> Manage your Profile
		</a>
		<button class="nav-text btn btn-outline-dark my-2 my-sm-0 ml-1"
			type="submit">
			<i class="fa-solid fa-address-book"></i> Contact Us
		</button>

	</form>

</nav>
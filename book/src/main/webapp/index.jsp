<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookstore Homepage</title>
<link type="text/css" rel="stylesheet" href="static/css/style.css" >
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
			<span class="wel_word">Online Bookstore</span>
			<div>
				<a href="pages/user/login.jsp">Login</a> |
				<a href="pages/user/regist.jsp">Register</a> &nbsp;&nbsp;
				<a href="pages/cart/cart.jsp">Cart</a>
				<a href="pages/manager/manager.jsp">Backend Managment</a>
			</div>
	</div>
	<div id="main">
		<div id="book">
			<div class="book_cond">
				<form action="" method="get">
					Price：<input id="min" type="text" name="min" value=""> usd -
						<input id="max" type="text" name="max" value=""> usd
						<input type="submit" value="query" />
				</form>
			</div>
			<div style="text-align: center">
				<span>There are 3 books in your cart</span>
				<div>
					You just add <span style="color: red">Brief History of Time</span> into your cart
				</div>
			</div>
			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">Book:</span>
						<span class="sp2">Brief History of Time</span>
					</div>
					<div class="book_author">
						<span class="sp1">Author:</span>
						<span class="sp2">Stephen William Hawking</span>
					</div>
					<div class="book_price">
						<span class="sp1">Price:</span>
						<span class="sp2">$30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">Quantity sold:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">Stock:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>Add to cart</button>
					</div>
				</div>
			</div>

			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">Book:</span>
						<span class="sp2">Brief History of Time</span>
					</div>
					<div class="book_author">
						<span class="sp1">Author:</span>
						<span class="sp2">Stephen William Hawking</span>
					</div>
					<div class="book_price">
						<span class="sp1">Price:</span>
						<span class="sp2">$30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">Quantity sold:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">Stock:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>Add to cart</button>
					</div>
				</div>
			</div>

			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">Book:</span>
						<span class="sp2">Brief History of Time</span>
					</div>
					<div class="book_author">
						<span class="sp1">Author:</span>
						<span class="sp2">Stephen William Hawking</span>
					</div>
					<div class="book_price">
						<span class="sp1">Price:</span>
						<span class="sp2">$30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">Quantity sold:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">Stock:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>Add to cart</button>
					</div>
				</div>
			</div>

			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">Book:</span>
						<span class="sp2">Brief History of Time</span>
					</div>
					<div class="book_author">
						<span class="sp1">Author:</span>
						<span class="sp2">Stephen William Hawking</span>
					</div>
					<div class="book_price">
						<span class="sp1">Price:</span>
						<span class="sp2">$30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">Quantity sold:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">Stock:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>Add to cart</button>
					</div>
				</div>
			</div>
		
		<div id="page_nav">
		<a href="#">Home</a>
		<a href="#">Previous Page</a>
		<a href="#">3</a>
		【4】
		<a href="#">5</a>
		<a href="#">Next Page</a>
		<a href="#">Last Page</a>
		10 pages，30 records to <input value="4" name="pn" id="pn_input"/> page
		<input type="button" value="go">
		</div>
	
	</div>
	
	<div id="bottom">
		<span>
			Copyright &copy;2020
		</span>
	</div>
</body>
</html>
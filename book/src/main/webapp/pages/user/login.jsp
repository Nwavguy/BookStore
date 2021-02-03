<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
	<%--include the base tag, css style and jquery file--%>
	<%@ include file="/pages/common/head.jsp"%>
</head>
<body>
		<div id="login_header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">Welcome</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>Login</h1>
								<a href="pages/user/regist.jsp">Sign up</a>
							</div>
							<div class="msg_cont">
								<b></b>
								<span class="errorMsg">
									<%=request.getAttribute("msg")==null?"Enter username and password":request.getAttribute("msg")%>
								</span>
							</div>
							<div class="form">
								<form action="userServlet" method="post">
									<input type="hidden" name="action" value="login" />
									<label>Username：</label>
									<input class="itxt" type="text" placeholder="username" autocomplete="off" tabindex="1" name="username"
										   value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>" />
									<br />
									<br />
									<label>Password：</label>
									<input class="itxt" type="password" placeholder="password" autocomplete="off" tabindex="1" name="password" />
									<br />
									<br />
									<input type="submit" value="login" id="sub_btn" />
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<%--include footer content --%>
		<%@include file="/pages/common/footer.jsp"%>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Membership Login</title>
	<%--include the base tag, css style and jquery file--%>
	<%@ include file="/pages/common/head.jsp"%>

	<script type="text/javascript">
		//After the page is loaded
		$(function () {
			// Bind the click event to the registration
			$("#sub_btn").click(function () {
				// Authentication user name: It must be composed of letters, numbers and underscores, and the length is 5 to 12 digits

				//1 Get the content in the username input box
				var usernameText = $("#username").val();
				//2 Create a regular expression object
				var usernamePatt = /^\w{5,12}$/;
				//3 Use test method to verify
				if (!usernamePatt.test(usernameText)) {
					//4 Prompt result to user
					$("span.errorMsg").text("Username is illegal");
					return false;
				}
				$("span.errorMsg").text("");

				// Verification password: It must be composed of letters, numbers and underscores, and the length is 5 to 12 digits
				//1 Get the content in the password input box
				var passwordText = $("#password").val();
				//2 Create a regular expression object
				var passwordPatt = /^\w{5,12}$/;
				//3 Use test method to verify
				if (!usernamePatt.test(passwordText)) {
					//4 Prompt result to user
					$("span.errorMsg").text("Password is illegal");
					return false;
				}
				$("span.errorMsg").text("");


				// verify the confirmation password: the same as the password
				//1 get confirmation password content
				var repwdText = $("#repwd").val()
				//2 compare with password
				if (repwdText != passwordText) {
					//3 Prompt result to user
					$("span.errorMsg").text("Password didn't match");
					return false
				}
				$("span.errorMsg").text("");


				// verify email：xxxxx@xxx.com
				// only verify the verfication is not null for now
				//1 Get the content in the username input box
				var emailText = $("#email").val();
				//2 Create a regular expression object
				var emailPatt = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
				//3 use test method to verify
				if (!emailPatt.test(emailText)) {
					//4 Prompt result to user
					$("span.errorMsg").text("Email is not valid");
					return false;
				}
				$("span.errorMsg").text("");

				var codeText = $("#code").val();

				//trim the verification code
				codeText = $.trim(codeText);
				if (codeText == null || codeText == "") {
					$("span.errorMsg").text("verification code is empty");
					return false;
				}
			})
		})
	</script>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>
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
					<div class="regist_form">
						<div class="regist_box">
							<div class="tit">
								<h1>Sign Up</h1>
								<span class="errorMsg">
									${ requestScope.msg}
								</span>
							</div>
							<div class="form">
								<form action="userServlet" method="post">
									<input type="hidden" name="action" value="regist">
									<input class="itxt" type="text" placeholder="Username"
										   value="${requestScope.username}"
										   autocomplete="off" tabindex="1" name="username" id="username" />
									<br />
									<br />
									<input class="itxt" type="password" placeholder="password"
										   autocomplete="off" tabindex="1" name="password" id="password" />
									<br />
									<br />
									<input class="itxt" type="password" placeholder="confirmed password"
										   autocomplete="off" tabindex="1" name="repwd" id="repwd" />
									<br />
									<br />
									<input class="itxt" type="text" placeholder="email"
										   value="${requestScope.email}"
										   autocomplete="off" tabindex="1" name="email" id="email" />
									<br />
									<br />
									<input class="itxt" type="text" placeholder="verification code" name="code" style="width: 150px;" id="code"/>
									<img alt="" src="static/img/code.bmp" style="float: right; margin-right: 40px">
									<br />
									<br />
									<input type="submit" value="sign up" id="sub_btn" />
									
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
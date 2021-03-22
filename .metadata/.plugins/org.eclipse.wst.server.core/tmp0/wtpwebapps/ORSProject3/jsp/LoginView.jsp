<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="in.co.rays.proj3.ctl.LoginCtl"%>
<%@page import="in.co.rays.proj3.util.DataUtility"%>
<%@page import="in.co.rays.proj3.util.ServletUtility"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!--    favicon-->
    <link rel="shortcut icon" href="/ORSProject3/theam_wel/image/fav-icon.png" type="image/x-icon">
<title>Login</title>
</head>
<body class="img-responsive" background="/ORSProject3/image/login2.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%;">
	<%@ include file="Header.jsp"%>
	
	<form action="<%=ORSView.LOGIN_CTL%>" method="post">
	

	<jsp:useBean id="dto" class="in.co.rays.proj3.dto.UserDTO"
		scope="request"></jsp:useBean>

	<input type="hidden" name="uri"
		value="<%=request.getAttribute("uri")%>">
	<input type="hidden" name="id" value="<%=dto.getId()%>">
	<input type="hidden" name="createdBy" value="<%=dto.getCreatedBy()%>">
	<input type="hidden" name="modifiedBy" value="<%=dto.getModifiedBy()%>">
	<input type="hidden" name="createdDatetime"
		value="<%=DataUtility.getTimestamp(dto.getCreatedDatetime())%>">
	<input type="hidden" name="modifiedDatetime"
		value="<%=DataUtility.getTimestamp(dto.getModifiedDatetime())%>">

	<div class="container">

		<div align="center">
			<div class="alert alert-success" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 136% ; margin-bottom: 5px;"
				<%=ServletUtility.getSuccessMessage(request).equals("") ? "hidden" : ""%>>
				<b> <%=ServletUtility.getSuccessMessage(request)%></b>
			</div>
			<div class="alert alert-danger" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 140%; margin-bottom: 5px;"
				<%=ServletUtility.getErrorMessage(request).equals("") ? "hidden" : ""%>>
				<b><%=ServletUtility.getErrorMessage(request)%></b>
			</div>

			<%
				String message = (String) request.getAttribute("message");

				if (message != null) {
			%>

			<div class="alert alert-danger" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 150%;"
				<%=message.equals("") ? "hidden" : ""%>>
				<b><%=message%></b>
			</div>


		</div>
		<%
			}
		%>
		<br>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="well login-box">
					<legend>
						<font size="5"><b>Login</b></font>
					</legend>

					<div class="form-group" align="left">
						<label for="username-email">Login Id</label><font color="red">
							*</font>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input
								placeholder="Enter LoginId" type="text" class="form-control"
								name="login"
								value="<%=DataUtility.getStringData(dto.getLogin())%>">
						</div>
						<font color="red"><%=ServletUtility.getErrorMessage("login", request)%></font>
					</div>

					<div class="form-group" align="left">
						<label for="password">Password</label><font color="red"> *</font>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input name="password"
								placeholder="Enter Password" type="password"
								class="form-control"
								value="<%=DataUtility.getStringData(dto.getPassword())%>">
						</div>
						<font color="red"><%=ServletUtility.getErrorMessage("password", request)%></font>
					</div>

					<div class="form-group" align="left">
						<a href="<%=ORSView.FORGET_PASSWORD_CTL%>"> <b><font
								size="3"><u>Forget password</u></font></b></a>
					</div>

					<div class="form-group text-center">
						<input type="submit" class="btn btn-success" name="operation"
							value="<%=LoginCtl.OP_SIGN_IN%>">
							

						<button class="btn btn-danger btn-cancel-action" name="operation"
							value="<%=LoginCtl.OP_RESET%>">Reset</button>

					</div>
				</div>
			</div>
		</div>

	</div>

	</form>

</body>
<%@ include file="Footer.jsp"%>
</html>

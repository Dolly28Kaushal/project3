<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="in.co.rays.proj3.ctl.ChangePasswordCtl"%>
<%@page import="in.co.rays.proj3.util.DataUtility"%>
<%@page import="in.co.rays.proj3.util.ServletUtility"%>


<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
 <!--    favicon-->
    <link rel="shortcut icon" href="/ORSProject3/theam_wel/image/fav-icon.png" type="image/x-icon">


<style type="text/css">

body {
	background-image: url("/ORSProject3/image/bg_theam.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
}


</style>
</head>

<body>
	<form action="<%=ORSView.CHANGE_PASSWORD_CTL%>" method="post">
		<%@ include file="Header.jsp"%>

		<jsp:useBean id="dto" class="in.co.rays.proj3.dto.UserDTO"
			scope="request"></jsp:useBean>

		<div class="container-fluid">
<div class="row">
		<div class="col-xs-12 col-md-6 col-sm-12 col-lg-4 col-md-offset-4">
			<div class="panel panel-primary" style="margin-top:10px; background-color: #DCDCDC;">
				<div class="panel-heading" style="background-color:gainsboro;" align="center">
		
	 <b><h1>Change Password</h1></b>
		
		</div>
			<div class="panel-body">
			<div align="center">
			<div class="alert alert-success" role="alert"
				style="width: 90%; margin-left: 0%; font-size: 150%"
				<%=ServletUtility.getSuccessMessage(request).equals("") ? "hidden" : ""%>>
				<b> <%=ServletUtility.getSuccessMessage(request)%></b>
			</div>
			<div class="alert alert-danger" role="alert"
				style="width: 90%; margin-left: 0%; font-size: 150%;"
				<%=ServletUtility.getErrorMessage(request).equals("") ? "hidden" : ""%>>
				<b><%=ServletUtility.getErrorMessage(request)%></b>
			</div>
		</div>
            
       <br>     
            <input type="hidden" name="id" value="<%=dto.getId()%>">
            <input type="hidden" name="createdBy" value="<%=dto.getCreatedBy()%>">
            <input type="hidden" name="modifiedBy" value="<%=dto.getModifiedBy()%>"> 
            <input type="hidden" name="createdDatetime" value="<%=DataUtility.getTimestamp(dto.getCreatedDatetime())%>">
            <input type="hidden" name="modifiedDatetime" value="<%=DataUtility.getTimestamp(dto.getModifiedDatetime())%>">




            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-12">
			
			
	 <div class="form-group" style="margin-left: 10%;">
	 <label align="left" class="control-label text-info col-md-6">
	 Old Password<span style="color: red;">*</span></label>

	 <div class="col-md-12" style="margin-bottom: 10px;">
	 <div class="input-group">
	 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
	 <input type="password" class="form-control" name="oldPassword" placeholder="Enter Old Password"
	 value="<%=DataUtility.getString(request.getParameter("oldPassword") == null ? ""
                       : DataUtility.getString(request.getParameter("oldPassword")))%>">
	 </div>
	 <label class="control-label text-danger"  for="inputError1">
	 <%=ServletUtility.getErrorMessage("oldPassword", request)%></label>
	 </div>
	 </div>


	 <div class="form-group" style="margin-left: 10%;">
	 <label align="left" class="control-label text-info col-md-6">
	 New Password<span style="color: red;">*</span></label>

	 <div class="col-md-12" style="margin-bottom: 10px;">
	 <div class="input-group">
	 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
	 <input type="password" class="form-control" name="newPassword" placeholder="Enter New Password"
	 value="<%=DataUtility.getString(request.getParameter("newPassword") == null ? ""
                       : DataUtility.getString(request.getParameter("newPassword")))%>">
	 </div>
	 <label class="control-label text-danger"  for="inputError1">
	 <%=ServletUtility.getErrorMessage("newPassword", request)%></label>
	 </div>
	 </div>
	 
			 
	 <div class="form-group" style="margin-left: 10%;">
	 <label align="left" class="control-label text-info col-md-6">
	 Confirm Password<span style="color: red;">*</span></label>

	 <div class="col-md-12">
	 <div class="input-group">
	 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
	 <input type="password" class="form-control" name="confirmPassword" placeholder="Enter Confirm Password"
	 value="<%=DataUtility.getString(request.getParameter("confirmPassword") == null ? ""
                       : DataUtility.getString(request.getParameter("confirmPassword")))%>">
	 </div>
	 <label class="control-label text-danger"  for="inputError1">
	 <%=ServletUtility.getErrorMessage("confirmPassword", request)%></label>
	 </div>
	 </div>
                    
      	<div class="form-group" align="center">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"  style="padding-left: 54px;">
		<br>
		<button type="submit" class="btn btn-primary" name="operation"
		value="<%=ChangePasswordCtl.OP_SAVE%>"><span class="glyphicon glyphicon-check"></span> Save</button>&emsp;
		<button type="submit" class="btn btn-warning" name="operation" style="width: 178px;"
		value="<%=ChangePasswordCtl.OP_CHANGE_MY_PROFILE%>"><span class="glyphicon glyphicon-erase"></span> Change My Profile</button>
		
		
					</div>
					</div>
					</div>
					</div>
					</div>
					</div>
			</div>
			<br>
			</div>
           
    </form>
    <br><br><br>
   
    <%@ include file="Footer.jsp"%>
</body>
</html>

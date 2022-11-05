<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>

.inbox{ background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);}
</style>


	

	

	
</head>

<body>
   

 <div class="container col-md-5">
		<div class="card">
		<div class="inbox">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit Event
            		</c:if>
						<c:if test="${user == null}">
            			Add New Event
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				<form>

				<fieldset class="form-group">
					<label>Event Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="email"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email" required="required" >
				</fieldset>
						<fieldset class="form-group">
					<label>Event Date</label> <input type="date"
						value="<c:out value='${user.date}' />" class="form-control"
						name="date" required="required" >
				</fieldset>
				

				<fieldset class="form-group">
					<label>Event Description</label> <input type="text"
						value="<c:out value='${user.description}'  />" class="form-control"
						name="description" required="required" >
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
		</div>
	</div>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="allCssJs.jsp" %>

<title>Add Notes</title>
</head>
<body>

<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<br>
		<h2 class="text-uppercase text-center" style="color:purple;">Add Notes</h2>
</div>
	
<div class="mx-auto" style="width: 90em;">
	
	<form action = "SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" required placeholder="Enter title">
  </div>
  <div class="form-group">
    <label for="content">Note</label>
	<textarea id = "content" name="content" class = "form-control" required placeholder="Enter Notes Here" style="height:200px;"></textarea>
  </div>
<button type="submit" class="btn btn-lg btn-block ">Save Note</button>
</form>
</div>
</body>
</html>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ include file="allCssJs.jsp" %>

<title>Note Taker Home</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
	</div><br>
	
	<div class="card mx-auto" >
  <img src="Images/note.png" style="height:200px; width:200px;" class="img-fluid mx-auto" alt="...">
  <div class="container text-center"><br>
    <h2 class="text-uppercase text-center" style="color: purple;">Ready to Take Some Notes?</h2>
		<br>
    <a href="addNote.jsp" class="btn btn-primary text-center">Let's Start!!</a>
  </div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file ="all_js_css.jsp"%>
</head>
<body>
 <div class="container-fluid p-0 m-0">
  <%@include file ="navbar.jsp"%>
  <h1 class="dm-block d-none">Fill Your Note Detail</h1>
   <h5 class="dm-none d-block" style="padding-top: 60px">Fill Your Note Detail</h5>
  </div>
  <!--this is add form-->
  
  
  <form action="SaveNoteServlet" method="post">
  <div class="form-group m-3">
    <label for="title" >Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Contant</label>
    <textarea id="contant" name="contant" placeholder="Enter Your Content Here" class="form-control" style="height:300px" required></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary ">Add</button>
  </div>
</form>
  
  
  
  
</body>
</html>
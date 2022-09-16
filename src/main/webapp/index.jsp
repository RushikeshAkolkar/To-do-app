<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Note Taker : Home Page</title>
    <%@include file ="all_js_css.jsp"%>
  </head>
  
  <body>
  <div class="container-fluid p-0 m-0">
  <%@include file ="navbar.jsp"%>
  <h1 style="padding-top: 100px;display:abstract;" class="d-none dm-block">THIS IS HOME PAGE</h1>
</div>
<div class="container">
<div class="row">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://www.zebrapen.com/wp-content/uploads/2019/10/10_24_NotesBlog-e1570723912946.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://www.the-learning-agency.com/wp-content/uploads/2021/03/when-should-our-students-use-technology-for-note-taking_orig.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://www.yorku.ca/scld/wp-content/uploads/sites/36/2020/08/pexels-ketut-subiyanto-4126743.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
</div>
  </body>
</html>
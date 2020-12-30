<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="Watch Movies online. Links to watch full movie">
    <meta name="author" content="Watch Movies online. Links to watch full movie">
    <meta property="og:title" content="Watch Movies online. Links to watch full movie">
    <meta property="og:description" content="Watch Movies online. Links to watch full movie">
    <meta property="og:url" content="http://myvotes.in/movie">
    <title>Watch Movies online. Links to watch full movie</title>
    <link rel="stylesheet" href="/css/myvotes.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                $('.dropdown-toggle').dropdown();
            });
    </script>
    <!-- Favicons -->
        <meta
              name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no, maximum-scale=1.0"
            />
    <meta name="theme-color" content="#7952b3">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
  </head>
  <body>
        <jsp:include page="header.jsp"/>
        <main>

            <div class="main-container">
             <hr class="mb-3" style="visibility: hidden;">
             <!--<div class="btn-group">
               <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                 Language
               </button>
               <ul class="dropdown-menu">
                 <li><a class="dropdown-item" href="#">Any</a></li>
                 <li><hr class="dropdown-divider"></li>
                 <li><a class="dropdown-item" href="#">Hindi</a></li>
                 <li><a class="dropdown-item" href="#">Malayalam</a></li>
                 <li><a class="dropdown-item" href="#">Tamil</a></li>
               </ul>
             </div>
             <button type="button" class="btn btn-light">Comedy</button>
             <button type="button" class="btn btn-light">Action</button>
             <button type="button" class="btn btn-light">Thriller</button>
             <button type="button" class="btn btn-light">Horror</button>
             <button type="button" class="btn btn-light">Drama</button>
             <button type="button" class="btn btn-light">Romance</button>
             <button type="button" class="btn btn-light">Fantasy</button>-->
  <!--               <hr class="mb-3" style="visibility: hidden;">
                 <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    myvotes.in is one humble attempt to list down movies which I found very interesting and must watch. I hope you will find it interesting as well.
                 </div> -->

                 <c:forEach items="${videos}" var="video">
                 <div class="video-panel">
                   <div class="video-header">
                      <a href="/watch/${video.id}/${video.title}">${video.title} (${video.year})</a>
                   </div>
                   <div class="description">
                    <p>${video.description}</p>
                    <div class="tags">${video.comedy ? "#comedy" : ""} ${video.action ? "#action" : ""} ${video.thriller ? "#thriller" : ""} ${video.horror ? "#horror" : ""} ${video.horror ? "#horror" : ""} ${video.drama ? "#drama" : ""}
                     ${video.romance ? "#romance" : ""} ${video.fantasy ? "#fantasy" : ""} ${video.mystery ? "#mystery" : ""} ${video.family ? "#family" : "18+"}
                    </div>
                   </div>
                   <div class="video">
                    <iframe class="video-frame"
                    src="https://www.youtube.com/embed/${video.url.substring(video.url.indexOf('v=')+2)}?autoplay=0&mute=1" allowFullScreen="allowFullScreen" and frameBorder="0" >
                    </iframe>
                   </div>
                 </div>
                 </c:forEach>
            </div>
        </main>

        <script>

        </script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-9F3NYKL17S"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'G-9F3NYKL17S');
        </script>
  </body>
</html>

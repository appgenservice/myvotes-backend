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

            <div class="container">
             <hr class="mb-3" style="visibility: hidden;">
             <div class="btn-group">
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
                  <button type="button" class="btn btn-light">Fantasy</button>
             <hr class="mb-3" style="visibility: hidden;">
             <div class="alert alert-warning alert-dismissible fade show" role="alert">
                 <h5 class="alert-heading">Disclaimer!</h5>
                  We don't own any video content. We just help you to search video content in the internet easily!
             </div>

              <ul>
                 <c:forEach items="${videos}" var="video">
                    <li>
                        <a href="/watch/${video.id}/${video.title}">${video.title} (${video.year})</a>
                    </li>
                 </c:forEach>
              </ul>
            </div>
        </main>


        <script>
          // Load the IFrame Player API code asynchronously.
          var tag = document.createElement('script');
          tag.src = "https://www.youtube.com/player_api";
          var firstScriptTag = document.getElementsByTagName('script')[0];
          firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

          // Replace the 'ytplayer' element with an <iframe> and
          // YouTube player after the API code downloads.
          var playerWidth = $( window ).width() > 700 ? '640' : $( window ).width() - 50;
          var player;
          function onYouTubePlayerAPIReady() {
            player = new YT.Player('ytplayer', {
              height: '360',
              width: playerWidth,
              videoId: 'yjaFvFuQ-QM',
              playerVars: {rel: 0, showinfo: 0, ecver: 2}
            });
          }

          function playVideo(youtubeURL) {
            var videoId = youtubeURL.substring(youtubeURL.indexOf("v=") + 2);
            player.loadVideoById(videoId);
          }
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
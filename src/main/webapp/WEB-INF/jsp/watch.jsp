<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="${movie.title}">
    <meta name="author" content="${movie.title}">
    <meta property="og:title" content="${movie.title}">
    <meta property="og:description" content="${movie.title}">
    <meta property="og:url" content="http://myvotes.in/movie">
    <title>${movie.title}</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            Disclaimer! We don't own any video content. We just help you to search video content in the internet easily!
         </div>
        <main>
              <div class="container">
                <button type="button" class="btn btn-outline-secondary">Movie</button>
                <button type="button" class="btn btn-outline-secondary">Malayalam</button>
                <c:if test="${video.comedy}">
                    <button type="button" class="btn btn-outline-secondary">Comedy</button>
                </c:if>
                <c:if test="${video.action}">
                    <button type="button" class="btn btn-outline-secondary">Action</button>
                </c:if>
                <c:if test="${video.thriller}">
                    <button type="button" class="btn btn-outline-secondary">Thriller</button>
                </c:if>
                <c:if test="${video.horror}">
                    <button type="button" class="btn btn-outline-secondary">Horror</button>
                </c:if>
                <c:if test="${video.drama}">
                    <button type="button" class="btn btn-outline-secondary">Drama</button>
                </c:if>
                <c:if test="${video.romance}">
                    <button type="button" class="btn btn-outline-secondary">Romance</button>
                </c:if>
                <c:if test="${video.fantasy}">
                    <button type="button" class="btn btn-outline-secondary">Fantasy</button>
                </c:if>
                <c:if test="${video.year != null}">
                    <button type="button" class="btn btn-outline-secondary">${video.year}</button>
                </c:if>
              </div>
              <hr class="mb-3" style="visibility: hidden;">
              <div id="ytplayer"></div>
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
            var youtubeURL = '${video.url}';
            var videoId = youtubeURL.substring(youtubeURL.indexOf("v=") + 2);
            player = new YT.Player('ytplayer', {
              height: ($(window).height() - ($(window).height() * 10 / 100)) ,
              width: $(window).width(),
              videoId: videoId,
              playerVars: {rel: 0, showinfo: 0, ecver: 2, 'autoplay': 1 },
              events: {
               'onReady': onPlayerReady
              }
            });
          }
          function onPlayerReady(event) {
            event.target.playVideo();
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

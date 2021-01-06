<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="${video.description}">
    <meta name="author" content="${video.title}">
    <meta property="og:title" content="${video.title}">
    <meta property="og:description" content="${video.description}">
    <meta property="og:url" content="http://myvotes.in/watch/${video.id}/${video.title}e">
    <title>${video.title}</title>
    <link rel="stylesheet" href="/css/myvotes.css">
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
              <div class="main-container">
                <div class="video-panel">
                  <div class="tags">
                      <span class="badge badge-info">${video.comedy ? "comedy" : ""}</span>
                      <span class="badge badge-info">${video.blackComedy ? "Black Comedy" : ""}</span>
                      <span class="badge badge-info">${video.action ? "action" : ""}</span>
                      <span class="badge badge-info">${video.thriller ? "thriller" : ""}</span>
                      <span class="badge badge-info">${video.horror ? "horror" : ""}</span>
                      <span class="badge badge-info">${video.drama ? "drama" : ""}</span>
                      <span class="badge badge-info">${video.romance ? "romance" : ""}</span>
                      <span class="badge badge-info">${video.fantasy ? "fantasy" : ""}</span>
                      <span class="badge badge-info">${video.mystery ? "mystery" : ""}</span>
                      <span class="badge badge-${video.family ? "info" : "warning"}">${video.family ? "family" : "12+"}</span>
                      <span class="badge badge-dark">${video.rating} / 10</span>
                  </div>
                </div>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="Together we can make a change. Express your opinion">
    <meta name="author" content="We the people, for the people">
    <meta property="og:title" content="My Vote, My Opinion. Public Opinion on current affairs">
    <meta property="og:description" content="My Vote, My Opinion. Public Opinion on current affairs">
    <meta property="og:url" content="http://myvotes.in">
    <title>My Vote, My Opinion. People opinion on current affairs</title>
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
        <main>
          <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h3>Your opinion matters. Together we can make a change</h3>
          </div>
          <div class="album py-0">
            <div class="container">
                  <c:forEach items="${polls}" var="poll">
                       <hr class="mb-3" style="visibility: hidden;">
                       <div class="card">
                           <div class="card-body">
                             <div class="card-title">
                               <a href="/poll/${poll.id}/${poll.title}" onClick="gtag('event', 'polllist', {'event_category': 'poll','event_label': 'click'});">${poll.question}</a>
                             </div>
                             <div class="card-description">${poll.description}</div>
                           </div>
                       </div>
                  </c:forEach>
            </div>
          </div>
        </main>

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

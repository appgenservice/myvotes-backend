<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="${pollTopic.question}">
    <meta name="author" content="We the people, for the people">
    <meta property="og:title" content="${pollTopic.question}">
    <meta property="og:description" content="${pollTopic.question}">
    <meta property="og:url" content="${pollTopic.pageURL}">
    <meta property="og:image" content="${pollTopic.imageURL}">
    <title>${pollTopic.question}</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="/js/myvotes.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="/css/myvotes.css">
    <meta
          name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no, maximum-scale=1.0"
        />
    <!-- Favicons -->
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
        <header>
          <div class="collapse bg-dark" id="navbarHeader">
            <div class="container">
              <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                  <h4 class="text-white">About</h4>
                  <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                  <h4 class="text-white">Contact</h4>
                  <ul class="list-unstyled">
                    <li><a href="#" class="text-white">Follow on Twitter</a></li>
                    <li><a href="#" class="text-white">Like on Facebook</a></li>
                    <li><a href="#" class="text-white">Email me</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="navbar navbar-dark bg-dark shadow-sm">
            <div class="container">
              <a href="/" class="navbar-brand d-flex align-items-center">
                <svg class="bi bi-alert-triangle text-success" width="40px" height="40px" viewBox="0 0 20 15" class="bi bi-puzzle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path d="M4.605 2.5V2v.5zM3.61 3.6l.498-.043V3.55l-.498.05zM7 2.5h.5A.5.5 0 0 0 7 2v.5zm-.676 1.454l.304.397-.304-.397zm3.352 0l-.304.397.304-.397zM9 2.5V2a.5.5 0 0 0-.5.5H9zm3.39 1.1l-.498-.05v.007l.498.043zM12.1 7l-.498-.043a.5.5 0 0 0 .498.543V7zm1.854-.676l.397.304-.397-.304zm0 3.352l.397-.304-.397.304zM12.1 9v-.5a.5.5 0 0 0-.498.542L12.1 9zm.29 3.4l-.498.043v.007l.498-.05zM9 13.5h-.5a.5.5 0 0 0 .5.5v-.5zm.676-1.454l-.304-.397.304.397zm-3.352 0l.304-.397-.304.397zM7 13.5v.5a.5.5 0 0 0 .5-.5H7zm-2.395 0V13v.5zm-.995-1.1l.498.05v-.007L3.61 12.4zM3.9 9l.498.042A.5.5 0 0 0 3.9 8.5V9zm-1.854.676l-.397-.304.397.304zm0-3.352l-.397.304.397-.304zM3.9 7v.5a.5.5 0 0 0 .498-.543L3.9 7zm.705-5a1.5 1.5 0 0 0-1.493 1.65l.995-.1A.5.5 0 0 1 4.605 3V2zM7 2H4.605v1H7V2zm.5.882V2.5h-1v.382h1zm-.872 1.469c.375-.287.872-.773.872-1.469h-1c0 .195-.147.42-.48.675l.608.794zM6.5 4.5l.001-.006a.113.113 0 0 1 .012-.025.459.459 0 0 1 .115-.118l-.608-.794c-.274.21-.52.528-.52.943h1zM8 5c-.491 0-.912-.1-1.19-.24a.86.86 0 0 1-.271-.194.213.213 0 0 1-.039-.063V4.5h-1c0 .568.447.947.862 1.154C6.807 5.877 7.387 6 8 6V5zm1.5-.5v.003a.213.213 0 0 1-.039.064.86.86 0 0 1-.27.193C8.91 4.9 8.49 5 8 5v1c.613 0 1.193-.123 1.638-.346.415-.207.862-.586.862-1.154h-1zm-.128-.15c.065.05.099.092.115.119.008.013.01.021.012.025L9.5 4.5h1c0-.415-.246-.733-.52-.943l-.608.794zM8.5 2.883c0 .696.497 1.182.872 1.469l.608-.794c-.333-.255-.48-.48-.48-.675h-1zm0-.382v.382h1V2.5h-1zm2.895-.5H9v1h2.395V2zm1.493 1.65A1.5 1.5 0 0 0 11.395 2v1a.5.5 0 0 1 .498.55l.995.1zm-.29 3.392l.29-3.4-.996-.085-.29 3.4.996.085zm.284-.542H12.1v1h.782v-1zm.675-.48c-.255.333-.48.48-.675.48v1c.696 0 1.182-.497 1.469-.872l-.794-.608zm.943-.52c-.415 0-.733.246-.943.52l.794.608a.459.459 0 0 1 .118-.115.113.113 0 0 1 .025-.012L14.5 6.5v-1zM16 8c0-.613-.123-1.193-.346-1.638-.207-.415-.586-.862-1.154-.862v1h.003l.01.003a.237.237 0 0 1 .053.036.86.86 0 0 1 .194.27c.14.28.24.7.24 1.191h1zm-1.5 2.5c.568 0 .947-.447 1.154-.862C15.877 9.193 16 8.613 16 8h-1c0 .491-.1.912-.24 1.19a.86.86 0 0 1-.194.271.214.214 0 0 1-.063.039H14.5v1zm-.943-.52c.21.274.528.52.943.52v-1l-.006-.001a.113.113 0 0 1-.025-.012.458.458 0 0 1-.118-.115l-.794.608zm-.675-.48c.195 0 .42.147.675.48l.794-.608c-.287-.375-.773-.872-1.469-.872v1zm-.782 0h.782v-1H12.1v1zm.788 2.858l-.29-3.4-.996.084.29 3.401.996-.085zM11.395 14a1.5 1.5 0 0 0 1.493-1.65l-.995.1a.5.5 0 0 1-.498.55v1zM9 14h2.395v-1H9v1zm.5-.5v-.382h-1v.382h1zm0-.382c0-.195.147-.42.48-.675l-.608-.794c-.375.287-.872.773-.872 1.469h1zm.48-.675c.274-.21.52-.528.52-.943h-1l-.001.006a.113.113 0 0 1-.012.025.459.459 0 0 1-.115.118l.608.794zm.52-.943c0-.568-.447-.947-.862-1.154C9.193 10.123 8.613 10 8 10v1c.492 0 .912.1 1.19.24.14.07.226.14.271.194a.214.214 0 0 1 .039.063v.003h1zM8 10c-.613 0-1.193.123-1.638.346-.415.207-.862.586-.862 1.154h1v-.003l.003-.01a.214.214 0 0 1 .036-.053.859.859 0 0 1 .27-.194C7.09 11.1 7.51 11 8 11v-1zm-2.5 1.5c0 .415.246.733.52.943l.608-.794a.459.459 0 0 1-.115-.118.113.113 0 0 1-.012-.025L6.5 11.5h-1zm.52.943c.333.255.48.48.48.675h1c0-.696-.497-1.182-.872-1.469l-.608.794zm.48.675v.382h1v-.382h-1zM4.605 14H7v-1H4.605v1zm-1.493-1.65A1.5 1.5 0 0 0 4.605 14v-1a.5.5 0 0 1-.498-.55l-.995-.1zm.29-3.393l-.29 3.401.996.085.29-3.4-.996-.086zm-.284.543H3.9v-1h-.782v1zm-.675.48c.255-.333.48-.48.675-.48v-1c-.696 0-1.182.497-1.469.872l.794.608zm-.943.52c.415 0 .733-.246.943-.52l-.794-.608a.459.459 0 0 1-.118.115.112.112 0 0 1-.025.012L1.5 9.5v1zM0 8c0 .613.123 1.193.346 1.638.207.415.586.862 1.154.862v-1h-.003a.213.213 0 0 1-.064-.039.86.86 0 0 1-.193-.27C1.1 8.91 1 8.49 1 8H0zm1.5-2.5c-.568 0-.947.447-1.154.862C.123 6.807 0 7.387 0 8h1c0-.492.1-.912.24-1.19a.86.86 0 0 1 .194-.271.213.213 0 0 1 .063-.039H1.5v-1zm.943.52c-.21-.274-.528-.52-.943-.52v1l.006.001a.112.112 0 0 1 .025.012c.027.016.068.05.118.115l.794-.608zm.675.48c-.195 0-.42-.147-.675-.48l-.794.608c.287.375.773.872 1.469.872v-1zm.782 0h-.782v1H3.9v-1zm-.788-2.858l.29 3.4.996-.085-.29-3.4-.996.085z"/>
                </svg>
                <strong>&nbsp;myvotes.in</strong>
              </a>
            </div>
          </div>
        </header>

        <main>
        <div class="album py-5">
            <div class="container">
              <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
                <h3>${pollTopic.question}</h3>
                <h5>${pollTopic.description}</h5>
              </div>
              <hr class="mb-3" style="visibility: hidden;">
                <div class="row">
                        <div class="col-md-12 mb-6">
                            <h4 class="display-6">Your opinion matters. </h4>
                             <hr class="mb-3">
                        </div>

                        <div class="col-md-8 mb-6">
                          <c:if test="${not empty pollTopic.opinion1}">
                              <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio1" name="opinion" class="custom-control-input" value="1" onClick="opinionSelected();">
                                <label class="custom-control-label" for="customRadio1">${pollTopic.opinion1}</label>
                              </div>
                          </c:if>
                          <c:if test="${not empty pollTopic.opinion2}">
                            <hr class="mb-3" style="visibility: hidden;">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio2" name="opinion" class="custom-control-input" value="2" onClick="opinionSelected();">
                                <label class="custom-control-label" for="customRadio2" >${pollTopic.opinion2}</label>
                            </div>
                          </c:if>
                          <c:if test="${not empty pollTopic.opinion3}">
                            <hr class="mb-3" style="visibility: hidden;">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio3" name="opinion" class="custom-control-input" value="3" onClick="opinionSelected();">
                                <label class="custom-control-label" for="customRadio3" >${pollTopic.opinion3 }</label>
                            </div>
                          </c:if>
                          <c:if test="${not empty pollTopic.opinion4}">
                            <hr class="mb-3" style="visibility: hidden;">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio4" name="opinion" class="custom-control-input" value="4" onClick="opinionSelected();">
                                <label class="custom-control-label" for="customRadio4" >${pollTopic.opinion4 }</label>
                            </div>
                          </c:if>
                          <c:if test="${not empty pollTopic.opinion5}">
                            <hr class="mb-3" style="visibility: hidden;">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio5" name="opinion" class="custom-control-input" value="5" onClick="opinionSelected();">
                                <label class="custom-control-label" for="customRadio5" >${pollTopic.opinion4 }</label>
                            </div>
                          </c:if>
                           <hr class="mb-3" style="visibility: hidden;">
                            <div class="row hidden" id="emailDiv">
                              <div class="col-md-6 mb-3">
                                <label for="lastName">Email Address</label>
                                <input type="text" class="form-control" id="email" placeholder="" value="" oninput="validateEmail('email');">
                                <div class="invalid-email">
                                  Please enter a valid email address
                                </div>
                              </div>
                            </div>
                            <div class="row hidden" id="consent">
                                 <div class="col-md-8 mb-3">
                                    <input type="checkbox" class="form-check-input" id="consentCheck" onClick="consentChange();">
                                    <label class="form-check-label" for="exampleCheck1" ><small>I agree myvotes.in to use my email address for further communication<small></label>
                                </div>
                            </div>
                            <hr class="mb-3" style="visibility: hidden;">
                            <div class="row hidden" id="voteDiv">
                              <div class="col-md-6 mb-3">
                                <button class="btn btn-outline-info btn-sl btn-block" type="submit" onClick="submitVote(${pollTopic.id});">VOTE</button>
                              </div>
                            </div>
                        </div>
            </div>
             <c:forEach items="${opinionCount}" var="oC">
                <c:set var="property" value="opinion${oC[0]}" />
                <input type="hidden" name="chartData" value="${pollTopic[property]}|${oC[1]}"/>
             </c:forEach>
             <hr class="mb-3">
             <div id="piechart_3d" style="margin: auto; width: 90%; padding: 10px;; height: 300px;"></div>
        </div>

        </main>
        <script type="text/javascript">
          google.charts.load("current", {packages:["corechart"]});
          google.charts.setOnLoadCallback(drawChart);
          function drawChart() {
            var dataArray = [['Opinion', 'Count']];
            for(var i = 0 ; i < document.getElementsByName("chartData").length; i++){
                var data = document.getElementsByName("chartData")[i].value.split('|');
                data[1] = parseInt(data[1]);
                dataArray.push(data);
            }
           var data = google.visualization.arrayToDataTable(dataArray);

            var options = {
              title: 'What others think?'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
          }
        </script>
        <script>
        var x = document.getElementById("demo");

        function getLocation() {
          if (navigator.geolocation) {
            navigator.geolocation.watchPosition(showPosition, error);
          } else {
            function seconds_with_leading_zeros(dt)
            {
              return /\((.*)\)/.exec(new Date().toString())[1];
            }

            dt = new Date();
            localStorage.setItem('location', seconds_with_leading_zeros(dt));
          }
        }

        function showPosition(position) {
            if(position) {
                localStorage.setItem('location', position.coords.latitude +", " + position.coords.longitude);
            }else {
                function seconds_with_leading_zeros(dt)
                {
                  return /\((.*)\)/.exec(new Date().toString())[1];
                }

                dt = new Date();
                localStorage.setItem('location', seconds_with_leading_zeros(dt));
            }
        }
        function error(err) {
          console.warn('ERROR(' + err.code + '): ' + err.message);
        }

        showPosition();
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

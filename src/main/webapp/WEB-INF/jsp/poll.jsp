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
  <jsp:include page="header.jsp"/>
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
                                <label class="custom-control-label" for="customRadio5" >${pollTopic.opinion5 }</label>
                            </div>
                          </c:if>
                          <c:if test="${not empty pollTopic.opinion6}">
                              <hr class="mb-3" style="visibility: hidden;">
                              <div class="custom-control custom-radio">
                                  <input type="radio" id="customRadio6" name="opinion" class="custom-control-input" value="6" onClick="opinionSelected();">
                                  <label class="custom-control-label" for="customRadio6" >${pollTopic.opinion6 }</label>
                              </div>
                          </c:if>
                        <c:if test="${not empty pollTopic.opinion7}">
                            <hr class="mb-3" style="visibility: hidden;">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio7" name="opinion" class="custom-control-input" value="7" onClick="opinionSelected();">
                                <label class="custom-control-label" for="customRadio7" >${pollTopic.opinion7 }</label>
                            </div>
                        </c:if>
                      <c:if test="${not empty pollTopic.opinion8}">
                          <hr class="mb-3" style="visibility: hidden;">
                          <div class="custom-control custom-radio">
                              <input type="radio" id="customRadio8" name="opinion" class="custom-control-input" value="8" onClick="opinionSelected();">
                              <label class="custom-control-label" for="customRadio8" >${pollTopic.opinion8 }</label>
                          </div>
                      </c:if>
                    <c:if test="${not empty pollTopic.opinion9}">
                        <hr class="mb-3" style="visibility: hidden;">
                        <div class="custom-control custom-radio">
                            <input type="radio" id="customRadio9" name="opinion" class="custom-control-input" value="9" onClick="opinionSelected();">
                            <label class="custom-control-label" for="customRadio9" >${pollTopic.opinion9 }</label>
                        </div>
                    </c:if>
                    <c:if test="${not empty pollTopic.opinion10}">
                        <hr class="mb-3" style="visibility: hidden;">
                        <div class="custom-control custom-radio">
                            <input type="radio" id="customRadio10" name="opinion" class="custom-control-input" value="10" onClick="opinionSelected();">
                            <label class="custom-control-label" for="customRadio10" >${pollTopic.opinion10}</label>
                        </div>
                    </c:if>
                    <hr class="mb-3" style="visibility: hidden;">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio11" name="opinion" class="custom-control-input" value="11" onClick="opinionSelected();">
                        <label class="custom-control-label" for="customRadio11" >Non of the above</label>
                    </div>
                    <hr class="mb-3" style="visibility: hidden;" >
                    <div class="input-group mb-3 hidden" id="customopinion">
                        <input type="text" class="form-control" placeholder="Please mention your choice" aria-label="Username" id="custom" aria-describedby="basic-addon1" style="width: 100%;">
                    </div>
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

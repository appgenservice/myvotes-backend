
function opinionSelected() {
      var opinion = document.querySelector('input[name="opinion"]:checked').value;
      if(opinion == 11){
        document.getElementById("customopinion").style.display = 'block';
      }else {
         $( "#customopinion" ).hide();
      }
    document.getElementById("emailDiv").style.display = 'block';
    var emailFromLS = localStorage.getItem('email');
    if(emailFromLS) {
        document.getElementById("email").value = emailFromLS;
        validateEmail("email");
    }
}

function validateEmail(_id) {
   var email = document.getElementById(_id).value;
   var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
   if(filter.test(email)) {
      $( ".invalid-email" ).hide();
      $( "#consent" ).show();
     if($( "#consentCheck" ).is(":checked")) {
        $( "#voteDiv" ).show();
     }
   }else {
      $( ".invalid-email" ).show();
      $( "#consent" ).hide();
      $( "#voteDiv" ).hide();
   }
}

function consentChange() {
    if($( "#consentCheck" ).is(":checked")) {
        $( "#voteDiv" ).show();
    }else {
        $( "#voteDiv" ).hide();
    }
}

function submitVote(_id) {
    if(document.getElementById("email") && document.querySelector('input[name="opinion"]:checked').value) {
      var email = document.getElementById("email").value;
      var custom = document.getElementById("custom").value;
      localStorage.setItem('email', email);
      var opinion = document.querySelector('input[name="opinion"]:checked').value;
      var consent = $( "#consentCheck" ).is(":checked");
      var location = localStorage.getItem('location');
      const dataToSend = JSON.stringify({"email": email, "opinion": opinion, "pollId": _id, "consent": consent, "location": location, "custom": custom});
      if(email && opinion){
        var requestString = encodeURI("/vote");
        console.log(requestString);
        var xhr = new XMLHttpRequest();
        xhr.open("POST", requestString, true);
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.send(dataToSend);
        xhr.onload = function() {
          console.log(this.responseText);
          window.location = "/?vote=success";
        }

      }
  }
}


 function borderChange(){
  var header = document.getElementsByTagName("h1");
   header[0].style.border = "2px solid red";
   header[0].style.color = "black";
 }

var button = document.getElementById("button");
button.addEventListener("click", borderChange);

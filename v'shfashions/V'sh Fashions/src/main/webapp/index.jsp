<!DOCTYPE html>
<html lang="en">
<head>
<title>V'sh Fashions & Beauty</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
</head>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">V'sh Fashions & Beauty</a>
    <a href="#band" class="w3-bar-item w3-button w3-padding-large w3-hide-small">AboutUs</a>
         <a href="Adminlogin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Admin</a>
  <a href="Userlogin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Customer</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Contact</a>
    <div class="w3-dropdown-hover w3-hide-small">
      
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">BAND</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">MERCH</a>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
   
    <img width="600" height="500" src="images/woman.jpg" alt='Image can't display'/>
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    <br> <br>  <h3 style= "color:#000000","text-align:left">V'sh Fashions & Beauty</h3>
    <h3 style= "color:#000000"> </h3></br>
       

       
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img width="500" height="500" src="images/2.png" >
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
          <h3 style= "color:#000000">We Provide services</h3>
    <h3 style= "color:#000000">We can help you to make your busy life better! </h3>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img width="500" height="500" src="images/imgggggg1.avif">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3 style= "color:#000000">online</h3>
      
      <h4 style= "color:#000000"> <b>Best Service, Right Time, Right People</b></h4>
    </div>
  </div>

  <!-- The About Us Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide">About Us</h2>
    <p class="w3-opacity"><i>Welcome to V'sh Fashions, your one-stop-shop for personalized jewelry, custom dresses, and natural beauty products. We believe that fashion is an expression of your unique style and personality, and that's why we offer a wide range of customizable options to make your fashion dreams come true.
Our customized jewelry and dresses are handcrafted with the finest quality materials, ensuring that you get a product that is not only stylish but also durable. We take pride in our craftsmanship, attention to detail, and dedication to customer satisfaction. Our design team works closely with you to create a piece that fits your personal style and preferences, making your purchase a truly unique experience.
    </i></p>
    <p class="w3-justify">At V'sh Fashions, we believe in supporting small businesses and promoting diversity in the fashion industry. That's why we collaborate with small selling shops to bring their products to a wider audience.</p>
    <p>Our mobile app offers in-app purchases and a seamless shopping experience, making it easier for you to browse, customize, and purchase your favorite products. We also have a strong return policy that guarantees your satisfaction with every purchase.</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p>Shopping</p>
        <img src="images/img12.jpg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:80%">
      </div>
      <div class="w3-third">
        <p>Customization</p>
        <img src="images/customization.webp" class="w3-round w3-margin-bottom" alt="Random Name" style="width:80%" height="">
      </div>
      <div class="w3-third">
        <p>Natural SkinCare</p>
        <img src="images/skincare.avif" class="w3-round" alt="Random Name" style="width:80%">
      </div>
    </div>
  </div>
  
  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACT</h2>
    <p class="w3-opacity w3-center"><i>Fan? Drop a note!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> Vijayawada,Andhrapradesh<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone:9988936556<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: V'shFashions@gmail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
          <button class="w3-button w3-black w3-section w3-right" type="submit">SEND</button>
        </form>
      </div>
    </div>
  </div>
  
<!-- End Page Content -->
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">V'sh fashions</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>

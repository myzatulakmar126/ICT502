<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Homepage</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
  background-color: #fdfdfd;
}
.mySlides {
    display: none;
}

img {
    background-position: center;
    background-size: cover;
    font-family: sans-serif;
}

/* MENU BAR STYLE START HERE */
.menu-bar {
    background: black;
    text-align: center;
}

.menu-bar ul{
    display: inline-flex;
    list-style: none;
    color: #fff;
}

.menu-bar ul li {
    width: 120px;
    margin: 15px;
    padding: 15px;
}

.menu-bar ul li a {
    text-decoration: none;
    color: #fff;
}

.active, .menu-bar ul li:hover {
    background: #9fc7d1 ;
    border-radius: 8px ;
}

/* Menu bar in menu bar */
.sub-menu-1 {
    display: none;
}

.menu-bar ul li:hover .sub-menu-1 {
    display: block;
    position: absolute;
    background: rgb(0, 0, 0);
    margin-top: 15px;
    margin-left: -15px;
}

.menu-bar ul li:hover .sub-menu-1 ul {
    display: block;
    margin: 10px;
}

.menu-bar ul li:hover .sub-menu-1 ul li {
    width: 150px;
    padding: 10px;
    border-bottom: 1px dotted #fff;
    background: transparent;
    border-radius: 0;
    text-align: left;
}

.menu-bar ul li:hover .sub-menu-1 ul li:last-child {
    border-bottom: none;
}

.menu-bar ul li:hover .sub-menu-1 ul li a:hover {
    color: #51868f;
}

/* SLIDE SHOW BACKGROUND START HERE*/
.slideshow-container {
  max-width: 2000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #0151fc;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

/* ROW AND COLUMN FOR IMAGE PRODUCT */
.row {  
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  -ms-flex: 30%; /* IE10 */
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
}

.column {
  float: left;
  width: 20%;
  padding: 20px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

h4{
    text-align: center;
}

p{
    text-align: center;
    font-size: 20px;
}

/*CONTAINER SHAPE PRODUCT IMAGE*/
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 15px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 10px;
}

.card button:hover {
  opacity: 0.7;
}

/*FOOTER*/
footer{
    bottom: 0;
    left: 0;
    right: 0;
    background: #111;
    height: auto;
    width: 100vw;
    font-family: "Open Sans";
    padding-top: 40px;
    color: #fff;
}
.footer-content{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
}
.footer-content h3{
    font-size: 1.8rem;
    font-weight: 400;
    text-transform: capitalize;
    line-height: 3rem;
}
.footer-content p{
    max-width: 500px;
    margin: 10px auto;
    line-height: 28px;
    font-size: 14px;
}
.socials{
    list-style: none;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 1rem 0 3rem 0;
}
.socials li{
    margin: 0 10px;
}
.socials a{
    text-decoration: none;
    color: #fff;
}
.socials a i{
    font-size: 1.1rem;
    transition: color .4s ease;

}
.socials a:hover i{
    color: aqua;
}

.footer-bottom{
    background: #000;
    width: 100vw;
    padding: 20px 0;
    text-align: center;
}
.footer-bottom p{
    font-size: 14px;
    word-spacing: 2px;
    text-transform: capitalize;
}
.footer-bottom span{
    text-transform: uppercase;
    opacity: .4;
    font-weight: 200;
}

/*GO TO UP BUTTON*/
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: rgb(0, 0, 0);
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}

input[type=text] {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
  margin-left: 45px;
}

input[type=text]:focus {
  width: 100%;
}


</style>
</head>

<body>
  <!-- GO TO TOP BUTTON -->
  <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-level-up"></i></button>

    <!-- SLIDE SHOW BACKGROUND AND MENU BAR -->
    <div class="slideshow-container">
        <div class ="menu-bar">
            <ul>
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">About Us</a>
                    <div class="sub-menu-1">
                        <ul>
                            <li><a href="#">Vision</a></li>
                            <li><a href="#">Mission</a></li>
                            <li><a href="#">Teams</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="#"><i class="fa fa-user"></i></a>
                    <div class="sub-menu-1">
                        <ul>
                            <li><a href="#">Update Account</a></li>
                            <li><a href="#">Log Out</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
        </div>

        <!-- SLIDE SHOW BACKGROUND -->
        <div class="mySlides fade">
          <div class="numbertext">1 / 3</div>
          <img src="nyah.jpg" style="width:100%">
          <div class="text">Channel summer 2011</div><br>
        </div>
        
        <div class="mySlides fade">
          <div class="numbertext">2 / 3</div>
          <img src="over.jpg" style="width:100%">
          <div class="text">Dior with Kim Jisso yaa</div><br>
        </div>

        <div class="mySlides fade">
          <div class="numbertext">3 / 3</div>
          <img src="nyah3.png" style="width:100%">
          <div class="text">Blackpink in your areaaaa</div><br>
        </div>
        
        <br>

        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>
    </div><br><br>
 
    <!--SEARCH BAR-->
    <form>
      <input type="text" name="search" placeholder="Search..">
    </form><br><br><br>

    <!-- PRODUCT IMAGE -->
    <div class="row">
        <div class="card">
            <img src="1p.png" alt="Denim Jeans" style="width:100%" class="image">
            <h5>Friends</h5>
            <p class="price">RM 19.99</p>
            <p>Thank you for being a friend! It goes without saying that friendships are sources of joy and laughter</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="2p.png" alt="Denim Jeans" style="width:100%">
            <h5>The Flash</h5>
            <p class="price">$19.99</p>
            <p>Barry the fastest man alive, but even those who have his power are often running from their past. </p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="3p.png" alt="Denim Jeans" style="width:100%">
            <h5>Crop Top</h5>
            <p class="price">$19.99</p>
            <p>The woman is the most perfect doll that we have dressed with delight and admiration.</p>
            <p><button>Add to Cart</button></p>
        </div>

        <div class="card">
            <img src="4p.png" alt="Denim Jeans" style="width:100%">
            <h5>Gummy Bear</h5>
            <p class="price">$19.99</p>
            <p>Bears are a symbol of strength and grace, but they also symbolize family and healthy.</p>
            <p><button>Add to Cart</button></p>
        </div>
      </div><br><br>
      
      <div class="row">
        <div class="card">
            <img src="5p.png" alt="Denim Jeans" style="width:100%">
            <h5>Blue Universe</h5>
            <p class="price">$19.99</p>
            <p>The universe is seeming really huge right now. I need something to hold on to.</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="6p.png" alt="Denim Jeans" style="width:100%">
            <h5>Blue Smoke</h5>
            <p class="price">$19.99</p>
            <p>True love is like ghosts, which everyone talks about and few have seen.</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="17p.png" alt="Denim Jeans" style="width:100%">
            <h5>The Sunny</h5>
            <p class="price">$19.99</p>
            <p>Sending you a day full of sunshine, and a pocket full of dreams.</p>
            <p><button>Add to Cart</button></p>
        </div>

        <div class="card">
            <img src="8p.png" alt="Denim Jeans" style="width:100%">
            <h5>Snail Shell</h5>
            <p class="price">$19.99</p>
            <p>Definition of the Holocene has to do with the extinction of a snail species in Sicily.</p>
            <p><button>Add to Cart</button></p>
        </div>
      </div><br><br>

      <div class="row">
        <div class="card">
            <img src="9p.png" alt="Denim Jeans" style="width:100%">
            <h5>Black Shark</h5>
            <p class="price">$19.99</p>
            <p>Sharks are beautiful creatures, with an unfair reputation for being vicious, that rule the blue waters.</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="10p.png" alt="Denim Jeans" style="width:100%">
            <h5>Orangeyy</h5>
            <p class="price">$19.99</p>
            <p>Orange is a bright and vivid color that occurs between red and yellow in the visible spectrum.</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="11p.png" alt="Denim Jeans" style="width:100%">
            <h5>Love Blue Sexy</h5>
            <p class="price">$19.99</p>
            <p>Blue is a popular favorite color around the world and is beloved across a variety of cultures.</p>
            <p><button>Add to Cart</button></p>
        </div>

        <div class="card">
            <img src="12p.png" alt="Denim Jeans" style="width:100%">
            <h5>Grey Pink</h5>
            <p class="price">$19.99</p>
            <p>As long as there is pink in the world, it will always be a better place.</p>
            <p><button>Add to Cart</button></p>
        </div>
      </div><br><br>

      <div class="row">
        <div class="card">
            <img src="13p.png" alt="Denim Jeans" style="width:100%">
            <h5>Colourfull</h5>
            <p class="price">$19.99</p>
            <p>And like a colorful bloom of temporary lights in the sky, you will shine.</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="14p.png" alt="Denim Jeans" style="width:100%">
            <h5>Half Colourfull</h5>
            <p class="price">$19.99</p>
            <p>Life is like a rainbow. You need both rain and sun to make its colors appear.</p>
            <p><button>Add to Cart</button></p>
        </div>
        
        <div class="card">
            <img src="15p.png" alt="Denim Jeans" style="width:100%">
            <h5>Sad Colourfull</h5>
            <p class="price">$19.99</p>
            <p>For to be Happy in Life, choose Self the Colors of Life full rainbows.</p>
            <p><button>Add to Cart</button></p>
        </div>

        <div class="card">
            <img src="16p.png" alt="Denim Jeans" style="width:100%">
            <h5>Blue Green</h5>
            <p class="price">$19.99</p>
            <p>Blue's spirit can wander but in green it can rest.</p>
            <p><button>Add to Cart</button></p>
        </div>
      </div><br><br>

      <!-- FOOTER -->
      <footer>
        <div class="footer-content">
            <h3>Taka Cast-Off Teams</h3>
            <p>Taka Cast Off Sendirian Berhad</p>
            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>copyright &copy;2022. designed by <span>TakaCast-Off</span></p>
        </div>
    </footer>

    <script>
        //SCRIPT FOR SLIDE SHOW BACKGROUND
        var slideIndex = 0;
        showSlides();
        
        function showSlides() {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
          }
          slideIndex++;
          if (slideIndex > slides.length) {slideIndex = 1}    
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
          setTimeout(showSlides, 9000); // Change image every 9 seconds
        }

        //SCRIPT GO TOP BUTTON
        //Get the button
        var mybutton = document.getElementById("myBtn");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};

        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
          } else {
            mybutton.style.display = "none";
          }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
    </script>

</body>
</html>
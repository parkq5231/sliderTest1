<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}

	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	function showSlides(n){
		
	$(function() {
	var i;
	var slides =$(".mySlides");
	var dots= $(".dot");
	if(n> slides.length){
		slideIndex=1
	}
	if(n<1){
		slideIndex = slides.length
	}
	for(i=0;i<slides.length;i++){
		slides[i].style.display="none";
	}
	for(i=0;i<dots.length;i++){
		dots[i].addClass(" active")
	}
	slides[slideIndex-1].style.display = "block";
	dots[slideIndex-1].addClass(" active");
	});//end of jQuery
}
</script>
</head>
<body>
	<div class="slideshow-container">
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img src="./img/12333.png" style="width: 100%">
			<div class="text">Caption Text</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<img src="./img/123.png" style="width: 100%">
			<div class="text">Caption Two</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<img src="./img/12345.png" style="width: 100%">
			<div class="text">Caption Three</div>
		</div>

		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<!--  -->
		<a class="next" onclick="plusSlides(1)">&#10095;</a>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot" onclick="currentSlide(1)"></span>
		<!--  -->
		<span class="dot" onclick="currentSlide(2)"></span>
		<!--  -->
		<span class="dot" onclick="currentSlide(3)"></span>
		<!--  -->
	</div>
</body>
</html>

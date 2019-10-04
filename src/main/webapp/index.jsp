<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Notable|Varela+Round&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/main_door.css">
<script type="text/javascript">
	$(function(){
		var b = $("#boy");
		var g = $("#girl");
		var wrap = $("#wrap"); 
		
		$(b).mouseenter(function(){
			$(wrap).animate(
					{opacity : 0}, 'fast', function(){
					$(this).css({"background-image" : "url(img/boy/ex_2.jpg)"}).
					animate({opacity : 1});
					
			});
			$(g).css({"opacity" : ".4"});
		});
		
		$(b).mouseleave(function(){
			$(g).css({"opacity" : "1"});
		});
		
		$(g).mouseenter(function(){
			$(wrap).animate(
					{opacity : 0}, 'fast', function(){
					$(this).css({"background-image" : "url(img/girl/ex_1.jpg)"}).
					animate({opacity : 1});
			});
			$(b).css({"opacity" : ".4"});
		});
		
		$(g).mouseleave(function(){
			$(b).css({"opacity" : "1"});
		});
		
		$(".select_text").mouseleave(function(){
			$(wrap).animate(
					{opacity : 0}, 'fast', function(){
					$(this).css({"background-image" : "url(img/maindoor.jpg)"}).
					animate({opacity : 1});
					
			});
		});
	});
</script>
</head>
<body>
	<div id="wrap" class="wrap">
	</div>
	<div class="select_text">
		<a href="b_main.jsp">
			<div id="boy" class="boys">
				<p>Boys</p>
			</div>
		</a>
		<a href="g_main.jsp">
			<div id="girl" class="girls">
				<p>Girls</p>
			</div>		
		</a>
	</div>
</body>
</html>
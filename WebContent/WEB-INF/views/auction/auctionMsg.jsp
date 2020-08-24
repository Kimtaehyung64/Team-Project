<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	yoyo
	<input type="hidden" name="msg" id="msg" value="${msg}">
	<input type="hidden" name="url" id="url" value="${url}">
	<script>
		$(document).ready(function() {
			
			document.location.href = $('#url').val();
		});
	</script>
</body>
</html>

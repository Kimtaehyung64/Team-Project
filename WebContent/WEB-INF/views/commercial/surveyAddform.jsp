<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>surveyAddform</title>
</head>
<body>
<div id="container">
 <form method="post" action="addsurvey" enctype="multipart/form-data">
 <table>  
  <thead>
   <tr><th colspan="2">Tboard 글작성 폼</th></tr>
  </thead>
  <tbody>
   <tr><th>제목</th><td><input type="text" name="sub" id="sub"></td></tr>
   <tr><th>문항수</th><td><input type="number" name="code" id="code"></td></tr>
   <tr><th>설문문항1</th><td><input type="text" name="surveytitle" id="surveytitle"></td></tr>
   <tr><th>설문문항2</th><td><input type="text" name="surveytitle" id="surveytitle"></td></tr>
   <tr><th>설문문항3</th><td><input type="text" name="surveytitle" id="surveytitle"></td></tr>
   <tr><th>설문문항4</th><td><input type="text" name="surveytitle" id="surveytitle"></td></tr>
   <tr><th>설문문항5</th><td><input type="text" name="surveytitle" id="surveytitle"></td></tr>
  </tbody>
  <tfoot>
  <tr><th colspan="2"><input type="submit" value="send"></th></tr>
  </tfoot>
 </table>
 </form>
 </div>
</body>
</html> 
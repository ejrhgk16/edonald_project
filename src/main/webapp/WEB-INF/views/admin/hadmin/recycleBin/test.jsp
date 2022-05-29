<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8" />
    <title>Title</title>
  </head>
  <body>
    <h1>File Upload Example</h1>
    <form method="POST" action="/menu/save" enctype="multipart/form-data">
      <input type="file" name="mainUploadFile" />
      <input type="file" name="subUploadFile" />
      <input type="submit" value="submit" />
    </form>
  </body>
</html>
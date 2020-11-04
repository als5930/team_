<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
         <c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
</head>
    <style>
      section {
        width: 30%;
        margin: 30px auto;
        display: flex;
        box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);
      }
      div {
        margin: 5px;
        padding: 10px;
        border-bottom: 2px solid #ddd;
        text-align: center;
      }
      h2 {
        text-align: center;
        color: violet;
      }
      input {
        padding: 3px;
        margin: 10px;
      }
      #team-button-box {
        width: 50%;
        margin: 10px 38%;
      }

      #team-button-box button {
        background-color: skyblue;
        margin: 10px;
        padding: 10px 18px;
        color: white;
        font-weight: bold;
      }
    </style>
  </head>
  <body>
    <h2>MyPage</h2>
    <section>
      <article>
        <div>아이디<input /></div>
        <div>비밀번호<input /></div>
        <div>비밀번호확인<input /></div>
      </article>
    </section>
    <div id="team-button-box">
      <button class="btn">저장</button>
    </div>
  </body>
</html>
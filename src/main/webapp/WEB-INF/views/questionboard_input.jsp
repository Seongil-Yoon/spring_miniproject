<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>질문 게시판 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <style>
      body {
        background-color: #ffffff;
      }

      section {
        text-align: center;
      }

      .section {
        display: flex;
        flex-direction: column;
        justify-content: center;
        text-align: center;
        transform: translateY(10%);
      }

      h3 {
        display: inline-block;
        margin-right: 20px;
      }

      #title {
        width: 960px;
        height: 30px;
        overflow: scroll;
        margin-bottom: 10px;
      }

      #contents {
        width: 960px;
        height: 500px;
        vertical-align: top;
        resize: none;
      }

      #button_div {
        margin: 20px auto;
      }

      #input:hover {
        background-color: gray;
      }

      input[type="submit"] {
        background-color: rgb(230, 150, 80);
        border-color: rgb(230, 150, 80);
        width: 80px;
        height: 40px;
      }
    </style>

    <script>
      $(document).ready(function () {
        $("#wrap").on("submit", function (e) {
          alert("게시물이 등록되었습니다.");
        });
      });
    </script>
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <section class="section">
      <div id="header">
        <h2>질문 작성</h2>
      </div>

      <form id="wrap" action="question">
        <div id="title_div">
          <h3>제목</h3>
          <input type="text" id="title" name="title" required /><br />
        </div>
        <div id="contents_div">
          <h3>내용</h3>
          <textarea id="contents" name="contents" required></textarea><br />
        </div>
        <div id="button_div">
          <input type="submit" id="input" value="등록" />
        </div>
      </form>
    </section>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>

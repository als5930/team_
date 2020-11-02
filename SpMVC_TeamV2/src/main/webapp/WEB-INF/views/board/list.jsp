<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
  font-family: "맑은 고딕";
  font-size: 0.9em;
  color: #666;
}
h2 {
  text-align: center;
  margin: 3%;
}
table {
  margin-left: auto;
  margin-right: auto;

  width: 80%;
  border-collapse: collapse;
  border-top: 2px solid #8d8d8d;
}
th {
  padding: 10px 8px; /*padding: vertical horizontal;*/
  background: #f9f9f9;
  color: #666;
  border-bottom: 1px solid #8d8d8d;
}

td {
  padding: 10px 8px; /*padding: vertical horizontal;*/
  text-align: center;
  line-height: 1.25em;
  color: #666;
  border-bottom: 1px solid #8d8d8d;
}
#title {
  text-decoration: none;
  color: #09f;
  cursor: pointer;
}

.container {
  height: 20px;

  margin: 30px -50px;
  position: relative;
  top: 450%;
  left: 45%;
}

.container ul {
  list-style: none;
  float: left;
  display: inline;
}
.container ul li {
  float: left;
}
.container ul li a {
  float: left;
  padding: 4px;
  margin-right: 3px;
  width: 15px;
  color: #000;
  font: bold 12px tahoma;
  border: 1px solid #eee;
  text-align: center;
  text-decoration: none;
}
.container ul li a:hover,
.container ul li a:focus {
  color: #fff;
  border: 1px solid #f40;
  background-color: #f40;
}

.btn {
  height: 20px;
  width: 100px;
  margin: 10px -50px;
  position: relative;
  top: 88%;
  left: 88%;
}

.btn button {
  display: inline-flex;

  justify-content: center;
  font-weight: bold;
  cursor: pointer;

  border: none;
  background: rgb(18, 184, 134);
  color: white;
  border-radius: 6px;
  padding: 10px 1.25rem;
  height: 2rem;
  font-size: 1rem;
}

.btn button :hover {
  background-color: honeydew;
  color: black;
  border-bottom: 2px solid rgb(4, 247, 234);
}

</style>


<body>
    <table class="table-striped">
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>날짜</th>
          <th>조회수</th>
        </tr>
      </thead>
    <tbody>
		<c:if test="${empty BOARD}">
			<tr>
				<td colspan="5">데이터가 없습니다</td>
			</tr>
		</c:if>
		<c:forEach items="${BOARD}" var="vo" varStatus="i">
			<tr class="bor-tr" data-seq="${vo.b_seq}">
				<td>${vo.b_seq}</td>
				<td>${vo.b_date}</td>
				<td>${vo.b_time}</td>
				<td>${vo.b_writer}</td>
				<td>${vo.b_subject}</td>
				<td>${vo.s_subject}</td>
				<td>${vo.b_content}</td>
				<td>${vo.b_count}</td>
				
				<td data-seq="${vo.b_seq}" class="bor-subject">
				</td>
			</tr>
			
     
      </c:forEach>
		
	</tbody>
</table>
<div>
	<button id="bor-write">작성하기</button>
</div>
    <div class="btn">
      <button id="g-save"><a href="g_input.html">작성</a></button>
    </div>
  </body>

</body>
</html>
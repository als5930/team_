<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
h2 {
	text-align: center;
	color: skyblue;
	padding: 20px
}

form#write-form {
	width: 80%;
	margin: 10px auto;
}

form#write-form fieldset {
	border: 1px solid purple;
	border-radius: 10px;
}

form#write-form legend {
	color: purple;
	margin: 5px;
	padding: 5px;
}

form#write-form label {
	display: inline-block;
	width: 15%;
	padding: 4px;
	margin: 4px;
	color: purple;
	text-align: right;
	font-weight: bold;
}

form#write-form input {
	display: inline-block;
	width: 75%;
	padding: 4px;
	margin: 4px;
}

form#write-form textarea {
	display: inline-block;
	width: 75%;
	padding: 4px;
	margin: 4px;
}

div.button-box {
	width: 90%;
	text-align: right;
}

div.button-box button {
	font-weight: bold;
	cursor: pointer;
	border: none;
	background: rgb(18, 184, 134);
	color: white;
	border-radius: 6px;
	padding: 10px 20px;
	font-size: 1rem;
}

div.button-box button:hover {
	background-color: #aaa;
	color: black;
}
.hidden {
	display: none;
}
</style>
<script type="text/javascript">
	var csrf_header = '${_csrf.headerName}'
	var csrf_token = '${_csrf.token}'
</script>
<h2>게시판 작성</h2>
<form method="POST" id="write-form">
	<div>
		<label>작성자</label> <input name="b_writer" value="${NotVO.n_writer}" />
	</div>

	<div>
		<label>날짜</label> <input name="n_date" value="${NotVO.n_date}" />
	</div>
	<div>
		<label>시각</label> <input name="n_time" value="${NotVO.n_time}" />
	</div>
	<div>
		<label>제목</label> <input name="n_subject" value="${NotVO.n_subject}" />
	</div>
	<div>
		<label></label>
		<textarea id="n_content" name="n_content" rows="5" cols="20">${NotVO.n_content}</textarea>
	</div>
	<div>
		<input class="hidden" type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}">
	</div>
	<div class="button-box">
		<button id="g-save">저장</button>
	</div>
</form>
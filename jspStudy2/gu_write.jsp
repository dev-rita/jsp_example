<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 글쓰기</title>
<script src="../js/jquery.js"></script>
<script>
	function w_check() {
		if ($.trim($("#writer").val()).length == 0) {
			alert("작성자를 입력하세요!");
			$("#writer").val("").focus();
			return false;
		}

		if ($.trim($("#title").val()) == '') {
			alert("글 제목을 입력하세요!");
			$('#title').val('').focus();
			return false;
		}

		if ($.trim($("#cont").val()) == '') {
			alert("글 내용을 입력하세요!");
			$("#cont").val('').focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form method="post" action="gu_ok.jsp" onsubmit="return w_check();">
		<table border="1">
			<tr>
				<th colspan="2">방명록 글쓰기</th>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" id="writer" size="16" /></td>
			</tr>
			<tr>
				<th>글제목</th>
				<td><input type="text" name="title" id="title" size="36" /></td>
			</tr>
			<tr>
				<th>글내용</th>
				<td><textarea name="cont" id="cont" rows="10" cols="36"></textarea></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" value="저장" /> 
				<input type="reset" value="취소" onclick="$('#writer').focus();">
		</table>
	</form>
</body>
</html>
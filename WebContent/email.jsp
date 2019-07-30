<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri = "/struts-tags" %>

<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Email form</title>
</head>

<body>
	<div class="headertop"></div>
		<div id="header">
			<div id="nav">

			<s:if test="#session.login_user_id == null">
				<s:form action="UserCreateAction">
					<s:submit value="新規登録" class="button2" theme="simple" />
				</s:form>
			</s:if>

				<s:if test="#session.login_user_id != null">
					<s:form action="LogoutAction">
						<s:submit  value="ログアウト" class="button2" theme="simple"/>
					</s:form>
				</s:if>

				<s:if test="#session.login_user_id == null">
					<s:form action="LoginAction">
						<s:submit  value="ログイン" class="button2"  theme="simple"/>
					</s:form>
				</s:if>

				<s:if test="#session.login_user_id != null">
					<s:form action="MyPageAction">
						<s:submit  value="マイページ" class="button2" theme="simple"/>
					</s:form>
				</s:if>

				<s:form action="ItemListAction">
					<s:submit  value="TOP" class="button2" theme="simple"/>
				</s:form>

				<s:if test="#session.login_user_id != null">
					<s:form action="ItemCreateAction">
						<s:submit  value="出品" class="button2" theme="simple"/>
					</s:form>
				</s:if>

				<s:if test="#session.login_user_id != null">
					<a href='./email.jsp' class="button2">お問い合わせ</a>
				</s:if>

				<img src="${pageContext.request.contextPath }/pic/urucar_logo.png" class="urucarlogo">

			</div>
		</div>


		<div id="main">
			<div id="top">
				<h1>お問い合わせ</h1>
			</div>
					<div>
						<form action = "emailer" method="post">

							<label for = "from" style="font-size: 16px;">アドレス入力</label><br/>
							<input type = "text" name = "from" size="60"/><br/>
							<br>
							<label for = "password" style="font-size: 16px">Gmailパスワード</label><br/>
							<input type="password" name="password" size="60"/><br/>
							<br>
							<label for = "to" style="font-size: 16px;">送信先メールアドレス</label><br/>
							<input type = "text" name="to" size="60"/><br/>
							<br>
							<label for ="subject" style="font-size: 16px;">件名</label><br/>
							<input type = "text" name = "subject" size="60"/><br/>
							<br>
							<label for = "body" style="font-size: 16px;">お問い合わせ内容</label><br/>
							<input type = "text" name = "body" style="width:500px; height: 100px;" /><br/>
							<br>
							<br>
							<input type = "submit" value = "メールを送信" class="button3"/>
							<br>
							<br>
						</form>

					</div>
			</div>
		</div>

		<div id="footer">
			<div id="pr">
				<p class="copyright">Copyright © 2019 UruCar All Rights Reserved.</p>
			</div>
		</div>


</body>
</html>
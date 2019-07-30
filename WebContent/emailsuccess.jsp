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
					<s:form action="LoginAction">
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
				<p>emailsuccess.jsp</p>
				<br>
				<p style="font-size:30px; color: white;">メールを送信しました。</p>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
		</div>

		<div id="footer">
			<div id="pr">
				<p class="copyright">Copyright © 2019 UruCar All Rights Reserved.</p>
			</div>
		</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="imagetoolbar" content="no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>ItemCreate画面</title>

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
			<h1>購入完了</h1>
			</div>
			<div>
				<br>
				<br>

			<div>
				<br>
				<h2>購入手続きが完了致しました。</h2>
				<br>
				<div>
					<a href='<s:url action="MyPageAction" />'>
					マイページ</a><span>から購入履歴の確認が可能です。</span>
					<p>TOPへ戻る場合は<a href='<s:url action="ItemListAction" />'>
					こちら</a></p>
				</div>
			</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>

		<div id="footer">
			<div id="pr">
				<p class="copyright">Copyright © 2019 UruCar All Rights Reserved.</p>
			</div>
		</div>

		</div>
	</body>
</html>

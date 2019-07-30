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
		<title>Login画面</title>

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
					<s:submit  value="商品一覧" class="button2" theme="simple"/>
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

				<a href='./welcome.jsp' class="button2">TOP</a>

			</div>
		</div>
		<div id="main">
			<div id="top">
				<h1>会員ログインページ</h1>
			</div>
			<br>
			<br>
			<br>
			<br>
			<div class="loginbox">
				<br>
				<h2>自動車を出品・購入する際にはログインをお願いします。</h2>
				<h3>※ログイン後、TOPページへ戻ります。</h3>
				<br>
				<s:form action="LoginAction">
					<label>ログインID</label><br>
					<s:textfield name="loginUserId"/>
					<br>
					<br>
					<label>ログインパスワード</label><br>
					<s:password name="loginPassword"/>
					<br>
					<br>
					<br>
					<s:submit value="ログイン" class="button5" />
				</s:form>
				<br/>
				<div id="text-link">
					<p>新規ユーザー登録は
					<a href='<s:url action="UserCreateAction" />'>こちら</a></p>
					<p>TOPへ戻る場合は
					<a href='./welcome.jsp'>こちら</a></p>
					<br>
				</div>
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
		<br>

		<div id="footer">
			<div id="pr">
				<p class="copyright">Copyright © 2019 UruCar All Rights Reserved.</p>
			</div>
		</div>

	</body>
</html>




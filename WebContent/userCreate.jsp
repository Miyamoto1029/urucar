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
		<title>Home画面</title>

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
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<div id="top">
				<h1>新規会員登録</h1>
			</div>
			<br>
			<br>
			<br>
			<br>
			<div class="loginbox">
				<br>
				<h2>こちらで新規会員登録が可能です。<br>
				会員登録後、自動車の購入・出品が可能になります。</h2>
					<s:form action="UserCreateConfirmAction">
								<label>ログインID</label>
								<br>
								<input type="text" name="loginUserId" value=""/>
								<br>
								<br>
								<label>ログインパスワード</label>
								<br>
								<input type="text" name="loginPassword" value="" />
								<br>
								<br>
								<label>ユーザー名</label>
								<br>
								<input type="text" name="userName" value="" />
								<br>
								<br>
						<s:submit value="登録" class="button5"/>
					</s:form>


				<br/>
				<div id="text-link">
					<p>TOPへ戻る場合は
					<a href='./welcome.jsp' >こちら</a></p>
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
		</div>

		</div>
	</body>
</html>

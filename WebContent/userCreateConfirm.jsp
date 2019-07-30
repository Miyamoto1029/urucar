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
				<p>UserCreateConfirm</p>
			</div>
			<div>
				<h3>登録する内容は以下でよろしいですか。</h3>
				<table>

					<s:form action="UserCreateCompleteAction">
						<tr id="box">
							<td>
								<label>ログインID:</label>
							</td>
							<td>
								<s:property value="loginUserId" escape="false" />
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>ログインPASS:</label>
							</td>
							<td>
								<s:property value="loginPassword" escape="false" />
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>ユーザー名:</label>
							</td>
							<td>
								<s:property value="userName" escape="false" />
							</td>
						</tr>
						<tr>
							<td>
								<s:submit value="完了" />
							</td>
						</tr>
					</s:form>
				</table>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>
	</body>
</html>


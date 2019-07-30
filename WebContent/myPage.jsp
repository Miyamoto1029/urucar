<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="imagetoolbar" content="no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>MyPage画面</title>
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
					<s:submit  value="商品一覧" class="button2" theme="simple"/>
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

				<a href='./welcome.jsp' class="button2">TOP</a>

			</div>
		</div>


		<div id="main">

			<div id="top">
				<s:if test="myPageList == null">
					<h2>ご購入情報はありません。</h2>
				</s:if>
					<h1>購入情報</h1>
			</div>
					<table class="table1" style="width: 900px;">
						<tr>
							<th>商品名</th>
							<th>購入価格</th>
							<th>購入台数</th>
							<th>購入確定日</th>
						</tr>
						<s:iterator value="myPageList">
							<tr>
								<td><s:property value="itemName" /></td>
								<td><s:property value="totalPrice" /><span>円</span></td>
								<td><s:property value="totalCount" /><span>台</span></td>
								<td><s:property value="insert_date" /></td>
							</tr>
						</s:iterator>
					</table>
				<br>
				<br>
				<div id="text-right">
					<p>TOPへ戻る場合は<a href='<s:url action="ItemListAction" />'>こちら</a></p>
					<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
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


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
	<title>商品一覧画面</title>

	</head>

	<body>
	<div class="headertop"></div>
		<div id="header">
			<div id="nav">
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
			</div>
			<div>
				<s:if test="itemDetailsDTO == null">
					<h3>商品の詳細情報はありません。</h3>
				</s:if>
				<s:elseif test="message == null">
					<h1>～ 出品車両詳細 ～</h1>
					<img src='<s:property value="%{#session.imageFilePath}"/>/<s:property value="%{#session.imageFileName}"/>'/>
					<br>
					<br>
					<table class="table1" style="width: 900px;">
						<tr>
							<th>出品id</th>
							<td><s:property value="itemDetailsDTO.id" /></td>
						</tr>
						<tr>
							<th>車名</th>
							<td><s:property value="itemDetailsDTO.itemName" /></td>
						</tr>
						<tr>
							<th>販売価格</th>
							<td><s:property value="itemDetailsDTO.itemPrice" /><span>円</span></td>
						</tr>
						<tr>
							<th>出品数</th>
							<td><s:property value="itemDetailsDTO.itemStock" /><span>個</span></td>
						</tr>
						<tr>
							<th>出品日時</th>
							<td><s:property value="itemDetailsDTO.insert_date" /></td>
						</tr>
					</table>
					<br>
					<s:form action="HomeAction">
						<s:hidden name="id" value="%{itemDetailsDTO.id}" />
						<s:hidden name="imageFilePath" value="imageFilePath" />
						<s:hidden name="imageFileName" value="imageFileName" />
						<s:submit value="購入確認へ" class="button3" theme="simple"/>
					</s:form>

				</s:elseif>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div id="text-right">
					<p>商品一覧は<a href='<s:url action="ItemListAction" />'>こちら</a></p>
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

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
				<p>BuyItem</p>
				<h1 style="font-size: 50px;">～ 購入 最終確認画面 ～</h1>
				<h2>※ 購入確定を押すと取引が開始されます。キャンセルは出来ません。	※</h2>
			</div>
			<div>
			<br>
			<img src="${pageContext.request.contextPath }/pic/004L.jpg">
			<br>
			<br>
			<h3>※ 購入情報一覧 ※</h3>
			<span>購入車名：</span><s:property value="itemDetailsDTO.itemName" />
			<br>
			<span>購入価格：</span><s:property value="itemDetailsDTO.itemPrice" />
			<br>
			<span>購入個数：</span><s:property value="itemDetailsDTO.itemStock" />
			<br>
			<br>
<%-- 				<s:form action="BuyItemAction"> --%>
<!-- 					<table> -->
<!-- 						<tr> -->
<!-- 							<td> -->
<%-- 								<span>商品名</span> --%>
<!-- 							</td> -->
<!-- 							<td> -->
<%-- 								<s:property value="itemDetailsDTO.itemName" /><br> --%>
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> -->
<%-- 								<span>値段</span> --%>
<!-- 							</td> -->
<!-- 							<td> -->
<%-- 								<s:property value="itemDetailsDTO.itemPrice" /><span>円</span> --%>
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> -->
<%-- 								<span>購入個数</span> --%>
<!-- 							</td> -->
<!-- 							<td> -->
<%-- 								<select name="count"> --%>
<!-- 									<option value="1" selected="selected">1</option> -->
<!-- 									<option value="2">2</option> -->
<!-- 									<option value="3">3</option> -->
<!-- 									<option value="4">4</option> -->
<!-- 									<option value="5">5</option> -->
<%-- 								</select> --%>
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> -->
<%-- 								<span>支払い方法</span> --%>
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<input type="radio" name="pay" value="1" checked="checked">現金払い -->
<!-- 								<input type="radio" name="pay" value="2">クレジットカード -->
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> -->
<%-- 								<s:submit value="購入" class="button3" theme="simple"/> --%>
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 					</table> -->
					<br>
				<s:form action="BuyItemConfirmAction" >
					<s:param name="id" value="%{id}"/>
					<s:submit value="購入確定" class="button3" theme="simple"/>
				</s:form>
				<div>
				<br>
				<br>
					<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
					<p>マイぺージは<a href='<s:url action="MyPageAction" />'>こちら</a></p>
				</div>
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
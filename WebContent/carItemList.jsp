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
				<h1>出品商品一覧</h1>
			</div>
						<s:iterator value="itemInfoDTOList">
							<div class="itembox">
									<img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/> 'class="caritemlistimage" /><br>
									<span>出品ID：</span><s:property value="id" /><br>
									<span>車名：</span><s:property value="itemName"/><br>
									<span>価格：</span><s:property value="itemPrice" /><span>円</span><br>
									<span>出品数：</span><s:property value="itemStock" /><span>台</span><br>
									<span>出品日時：</span><s:property value="insert_date" /><br>

									<s:form action="ItemDetailsAction">
										<s:hidden name="id" value="%{id}" />
										<s:hidden name="imageFilePath" value="imageFilePath" />
										<s:hidden name="imageFileName" value="imageFileName" />
										<s:submit value="詳細" class="button5" theme="simple"/>
									</s:form>

								</div>
						</s:iterator>
		</div>
		<div>
		<br>
		<br>
		</div>

		<div id="footer">
			<div id="pr">
				<p class="copyright">Copyright © 2019 UruCar All Rights Reserved.</p>
			</div>
		</div>

	</body>
</html>

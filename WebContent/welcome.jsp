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

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.slider').bxSlider({
    	  auto: true,
    	  mode: 'fade',
    	  speed: 3000,
    	  pause: 3000,
    	  pager: false,
    	  controls: false
		});
    });

  </script>


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
				<div class="slider">
					<div><img src="${pageContext.request.contextPath }/pic/urucartop001-2.png"></div>
					<div><img src="${pageContext.request.contextPath }/pic/urucartop002-2.png"></div>
				</div>

			<div class="top1">
				<h1>車を高くなら「自分で」売るのが一番！urucarが個人売買をサポートします。</h1>
			</div>
			<br>
			<br>
		<div class="top_content1">
			<div class="box_top_1">
				<h1 class="top_h1">urucarとは</h1>
				<p class="top_p1">
				urucarは、自動車(四輪車)に特化した個人売買支援サイトです。<br>
				会員登録をしていただければどなたでもご利用ができます。<br>
				車の個人売買で不安な「名義変更」や「譲渡」等を、urucarで行うことができます。<br>
				urucarで車を売ると、本当に欲しい人に適正な価格で車を販売することが出来ます。
				</p>
				<br>
				<s:form action="ItemListAction" >
					<s:submit value="ENTER urucar" class="welcomebutton1" theme="simple"/>
				</s:form>
			</div>
			<div><img src="${pageContext.request.contextPath}/pic/toppic_lupe.jpeg"></div>
		</div>
		<br>
		<br>
		<div class="top_content2">
			<div><img src="${pageContext.request.contextPath}/pic/toppic_money.jpeg"></div>
			<div class="box_top_2">
				<h1 class="top_h1">名義変更はどうするの？</h1>
				<p class="top_p2">
				自動車の個人売買で最初の壁は「名義変更」ではないでしょうか？<br>
				なにを用意したら良いのか、	どんな手続きをしたら良いのか、色々と不安ですよね。<br>
				でも大丈夫です！初めての方でも分かりやすい様にサポート致します。<br>
				また、urucarなら名義変更を代行してくれる車屋さんも紹介できます。<br>
				</p>

				<a href='./description.jsp' class="welcomebutton1" style="text-align: center;">売買の流れ</a>

			</div>
		</div>
		<br>
		<br>
		<div class="top_content1">
			<div class="box_top_1">
				<h1 class="top_h1">中古車って大丈夫？</h1>
				<p class="top_p1">
				出品商品によっては点検が必要な車、少しの点検で済む車など、<br>
				自動車の状態は車種により様々です。<br>
				urucarでは出品にあたり「点検記録簿の提出」の提出をルールとして決めています。<br>
				もちろん、購入後は購入者様ご自身で点検を行う必要があります。
				</p>
				<br>
				<s:form action="ItemListAction" >
					<s:submit value="ENTER urucar" class="welcomebutton1" theme="simple"/>
				</s:form>
			</div>
			<div><img src="${pageContext.request.contextPath}/pic/pic022.jpg" style="width:500px;"></div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div id="footer">
				<p class="copyright">Copyright © 2019 Urucar All Rights Reserved.</p>
		</div>

	</body>
</html>

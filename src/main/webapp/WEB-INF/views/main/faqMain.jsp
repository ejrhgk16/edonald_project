<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<title>자주 찾는 질문과 답</title>

<script type="text/javascript" async=""
	src="https://widget.latte.ai/main.js" charset="UTF-8"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<!-- jquery ui -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- jquery ui -->


<link rel="stylesheet" href="./common/css/app_faqMain.css">
<link rel="stylesheet" href="./common/css/app_common.css">
<script src="./common/js/app_commons.js"></script>

<style type="text/css">
#latte-plugin { -
	-color-primary: #f9f9f9; -
	-color-primary-button-color: #a8a8a8; -
	-chat-color-bg: white; -
	-latte-plugin-global-widget-button-hover-bg: #a8a8a8; -
	-latte-plugin-button-borderRadius: 58px; -
	-latte-plugin-button-bg: var(- -color-primary); -
	-latte-plugin-button-borderWidth: 0px; -
	-latte-plugin-button-borderColor: transparent; -
	-latte-plugin-button-color: var(- -color-primary-button-color); -
	-latte-plugin-button-hover-bg: var(- -latte-plugin-global-widget-button-hover-bg);
	-
	-latte-plugin-button-hover-borderWidth: 0px; -
	-latte-plugin-button-hover-borderColor: transparent; -
	-latte-plugin-button-hover-color: var(- -color-primary-button-color); -
	-latte-plugin-badge-borderRadius: 40px; -
	-latte-plugin-badge-bg: #ea5355; -
	-latte-plugin-badge-borderWidth: 0px; -
	-latte-plugin-badge-borderColor: transparent; -
	-latte-plugin-badge-color: white;
	position: fixed !important;
	z-index: 10000000 !important;
	top: auto;
	left: auto;
	right: 30px;
	bottom: 30px;
}

#latte-plugin.is-left {
	right: auto;
}

#latte-plugin.is-left .latte-plugin-script {
	right: auto !important;
	left: 0 !important;
	transform-origin: left bottom;
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.05), -32px 48px 128px -10px
		rgba(0, 0, 0, 0.05), -64px 64px 128px -10px rgba(0, 0, 0, 0.05);
}

.latte-plugin-script {
	display: block;
	width: 360px !important;
	min-height: 480px !important;
	max-height: 720px !important;
	height: 80vh !important;
	position: absolute !important;
	right: 0 !important;
	bottom: 80px !important;
	border-radius: 12px !important;
	z-index: 100000000 !important;
	overflow: hidden;
	background-color: transparent;
	transform-origin: center right;
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.05), 32px 48px 128px -10px
		rgba(0, 0, 0, 0.05), 64px 64px 128px -10px rgba(0, 0, 0, 0.05);
}

@media ( max-width : 639px) {
	.latte-plugin-script {
		position: fixed !important;
		width: 100% !important;
		height: 100% !important;
		min-height: auto !important;
		max-height: 100% !important;
		top: 0 !important;
		left: 0 !important;
		right: 0 !important;
		bottom: 0 !important;
		border-radius: 0 !important;
		border: none !important;
	}
}

.latte-plugin-script.v-enter-active, .latte-plugin-script.v-leave-active
	{
	transition: opacity 0.3s ease, transform 0.4s
		cubic-bezier(0.25, 0.1, 0.02, 1.35), box-shadow 0.4s ease-in;
	transform-origin: right bottom;
}

.latte-plugin-script.v-enter, .latte-plugin-script.v-leave-active {
	opacity: 0;
	transform: scale(0.7);
	box-shadow: none;
}

.latte-plugin-core {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.latte-plugin-core .latte-plugin-button {
	box-sizing: border-box !important;
	position: fixed !important;
	display: inline-flex !important;
	align-items: center !important;
	z-index: 10000000 !important;
	cursor: pointer;
	top: auto;
	left: auto;
	right: 30px;
	bottom: 30px;
	max-width: 200px;
	height: 58px;
	padding: 10px;
	color: #a8a8a8;
	/* IE Fallback */
	color: var(- -latte-plugin-button-color);
	background-color: #f9f9f9;
	/* IE Fallback */
	background-color: var(- -latte-plugin-button-bg);
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 4px 8px rgba(0, 0, 0, 0.1),
		0 8px 16px rgba(0, 0, 0, 0.1), 0 16px 32px rgba(0, 0, 0, 0.1);
	border-radius: 50px;
	/* IE Fallback */
	border-radius: var(- -latte-plugin-button-borderRadius);
	border-style: solid;
	border-width: 0px;
	border-width: var(- -latte-plugin-button-borderWidth);
	border-color: transparent;
	/* IE Fallback */
	border-color: var(- -latte-plugin-button-borderColor);
	transition: background-color 0.3s ease, transform 0.4s
		cubic-bezier(0.25, 0.1, 0, 1.96), box-shadow 350ms, max-width 0.3s
		ease;
}

.latte-plugin-core .latte-plugin-button svg {
	fill: #a8a8a8;
	/* IE Fallback */
	fill: var(- -latte-plugin-button-color);
}

.latte-plugin-core .latte-plugin-button .latte-plugin-logo {
	width: 40px;
	height: 40px;
	transition: 250ms;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-button-icon {
	display: inline-block;
	width: auto;
	height: 40px;
	transition: 250ms;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-button-text {
	padding-left: 5px;
	padding-right: 15px;
	font-size: 16px;
	font-weight: 600;
	overflow: hidden;
	white-space: nowrap;
	max-width: 200px;
	transition: 0.3s ease;
}

.latte-plugin-core .latte-plugin-button:hover {
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 4px 8px rgba(0, 0, 0, 0.1),
		0 8px 16px rgba(0, 0, 0, 0.1), 0 16px 32px rgba(0, 0, 0, 0.1), 0 32px
		64px rgba(0, 0, 0, 0.1);
	transform: scale(1.1);
	background-color: var(- -latte-plugin-button-hover-bg);
	color: var(- -latte-plugin-button-hover-color);
	border-style: solid;
	border-width: var(- -latte-plugin-button-hover-borderWidth);
	border-color: var(- -latte-plugin-button-hover-borderColor);
}

.latte-plugin-core .latte-plugin-button:hover svg {
	fill: var(- -latte-plugin-button-hover-color);
}

.latte-plugin-core .latte-plugin-button:active {
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 4px 8px rgba(0, 0, 0, 0.1),
		0 8px 16px rgba(0, 0, 0, 0.1), 0 16px 32px rgba(0, 0, 0, 0.1);
}

@
-webkit-keyframes currentContextBlink { 0% {
	opacity: 1;
	transform: translate(-50%, -50%) scale(1);
}

100


%
{
opacity


:


0
;


transform


:


translate
(


-50
%
,
-50
%


)


scale
(


1
.6


)
;


}
}
@
keyframes currentContextBlink { 0% {
	opacity: 1;
	transform: translate(-50%, -50%) scale(1);
}

100


%
{
opacity


:


0
;


transform


:


translate
(


-50
%
,
-50
%


)


scale
(


1
.6


)
;


}
}
.latte-plugin-core .latte-plugin-button.is-blink::after {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: -1;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 58px;
	opacity: 0.6;
	border-radius: 500px;
	background-color: #f9f9f9;
	/* IE Fallback */
	background-color: var(- -latte-plugin-button-bg);
	-webkit-animation: currentContextBlink 1.2s infinite;
	animation: currentContextBlink 1.2s infinite;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-notification {
	position: absolute;
	top: 0;
	left: 0;
	transform: translateX(calc(-100% - -16px));
	padding: 2px 7px;
	max-width: 150px;
	min-width: 20px;
	min-height: 20px;
	color: white;
	/* IE Fallback */
	color: var(- -latte-plugin-badge-color);
	background-color: #ea5355;
	/* IE Fallback */
	background-color: var(- -latte-plugin-badge-bg);
	border-radius: 40px;
	/* IE Fallback */
	border-radius: var(- -latte-plugin-badge-borderRadius);
	white-space: nowrap;
	box-sizing: border-box;
	font-size: 12px;
	font-weight: bold;
	overflow: hidden;
	border-style: solid;
	border-width: 0px;
	/* IE Fallback */
	border-width: var(- -latte-plugin-badge-borderWidth);
	border-color: transparent;
	/* IE Fallback */
	border-color: var(- -latte-plugin-badge-borderColor);
}

.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-enter-active,
	.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-leave-active
	{
	transition: 0.3s ease;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-enter,
	.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-leave-active
	{
	max-width: 24px;
	opacity: 0;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-close {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	position: absolute;
	display: flex;
	align-items: center;
	top: 50%;
	left: 29px;
	transform: translate(-50%, -50%) rotate(-50deg);
	opacity: 0;
	transition: 150ms ease-in-out;
}

.latte-plugin-core .latte-plugin-button.active {
	max-width: 58px;
}

.latte-plugin-core .latte-plugin-button.active .latte-plugin-close {
	opacity: 1;
	transform: translate(-50%, -50%) rotate(0);
}

.latte-plugin-core .latte-plugin-button.active .latte-plugin-logo,
	.latte-plugin-core .latte-plugin-button.active .latte-plugin-button-icon
	{
	opacity: 0;
	transform: scale(0.5) rotate(50deg);
}

.latte-plugin-core .latte-plugin-button.active .latte-plugin-button-text
	{
	overflow: hidden;
	max-width: 0;
	padding: 0;
	white-space: nowrap;
}

.latte-plugin-core .latte-plugin-button.is-left {
	right: auto;
}

.latte-plugin-core .latte-plugin-button.is-left .latte-plugin-notification
	{
	left: auto;
	right: 0;
	transform: translateX(calc(100% - 16px));
}

.latte-widget-iframe {
	position: relative !important;
	width: 100% !important;
	height: 100% !important;
	border: none !important;
}
</style>
<style type="text/css">
.latte-plugin-core .latte-plugin-button[data-v-4b3dd8b5]:hover {
	max-width: 380px;
	transition: background-color 0.3s ease, transform 0.4s
		cubic-bezier(0.25, 0.1, 0, 1.96), box-shadow 350ms;
}

.latte-plugin-core .latte-plugin-button:hover .latte-plugin-button-text[data-v-4b3dd8b5]
	{
	font-size: 12px;
	line-height: 15px;
	overflow: hidden;
	white-space: pre-wrap;
	max-width: 380px;
}
</style>
<style type="text/css">
#latte-plugin { -
	-color-primary: #f9f9f9; -
	-color-primary-button-color: #a8a8a8; -
	-chat-color-bg: white; -
	-latte-plugin-global-widget-button-hover-bg: #a8a8a8; -
	-latte-plugin-button-borderRadius: 58px; -
	-latte-plugin-button-bg: var(- -color-primary); -
	-latte-plugin-button-borderWidth: 0px; -
	-latte-plugin-button-borderColor: transparent; -
	-latte-plugin-button-color: var(- -color-primary-button-color); -
	-latte-plugin-button-hover-bg: var(- -latte-plugin-global-widget-button-hover-bg);
	-
	-latte-plugin-button-hover-borderWidth: 0px; -
	-latte-plugin-button-hover-borderColor: transparent; -
	-latte-plugin-button-hover-color: var(- -color-primary-button-color); -
	-latte-plugin-badge-borderRadius: 40px; -
	-latte-plugin-badge-bg: #ea5355; -
	-latte-plugin-badge-borderWidth: 0px; -
	-latte-plugin-badge-borderColor: transparent; -
	-latte-plugin-badge-color: white;
	position: fixed !important;
	z-index: 10000000 !important;
	top: auto;
	left: auto;
	right: 30px;
	bottom: 30px;
}

#latte-plugin.is-left {
	right: auto;
}

#latte-plugin.is-left .latte-plugin-script {
	right: auto !important;
	left: 0 !important;
	transform-origin: left bottom;
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.05), -32px 48px 128px -10px
		rgba(0, 0, 0, 0.05), -64px 64px 128px -10px rgba(0, 0, 0, 0.05);
}

.latte-plugin-script {
	display: block;
	width: 360px !important;
	min-height: 480px !important;
	max-height: 720px !important;
	height: 80vh !important;
	position: absolute !important;
	right: 0 !important;
	bottom: 80px !important;
	border-radius: 12px !important;
	z-index: 100000000 !important;
	overflow: hidden;
	background-color: transparent;
	transform-origin: center right;
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.05), 32px 48px 128px -10px
		rgba(0, 0, 0, 0.05), 64px 64px 128px -10px rgba(0, 0, 0, 0.05);
}

@media ( max-width : 639px) {
	.latte-plugin-script {
		position: fixed !important;
		width: 100% !important;
		height: 100% !important;
		min-height: auto !important;
		max-height: 100% !important;
		top: 0 !important;
		left: 0 !important;
		right: 0 !important;
		bottom: 0 !important;
		border-radius: 0 !important;
		border: none !important;
	}
}

.latte-plugin-script.v-enter-active, .latte-plugin-script.v-leave-active
	{
	transition: opacity 0.3s ease, transform 0.4s
		cubic-bezier(0.25, 0.1, 0.02, 1.35), box-shadow 0.4s ease-in;
	transform-origin: right bottom;
}

.latte-plugin-script.v-enter, .latte-plugin-script.v-leave-active {
	opacity: 0;
	transform: scale(0.7);
	box-shadow: none;
}

.latte-plugin-core {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.latte-plugin-core .latte-plugin-button {
	box-sizing: border-box !important;
	position: fixed !important;
	display: inline-flex !important;
	align-items: center !important;
	z-index: 10000000 !important;
	cursor: pointer;
	top: auto;
	left: auto;
	right: 30px;
	bottom: 30px;
	max-width: 200px;
	height: 58px;
	padding: 10px;
	color: #a8a8a8;
	/* IE Fallback */
	color: var(- -latte-plugin-button-color);
	background-color: #f9f9f9;
	/* IE Fallback */
	background-color: var(- -latte-plugin-button-bg);
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 4px 8px rgba(0, 0, 0, 0.1),
		0 8px 16px rgba(0, 0, 0, 0.1), 0 16px 32px rgba(0, 0, 0, 0.1);
	border-radius: 50px;
	/* IE Fallback */
	border-radius: var(- -latte-plugin-button-borderRadius);
	border-style: solid;
	border-width: 0px;
	border-width: var(- -latte-plugin-button-borderWidth);
	border-color: transparent;
	/* IE Fallback */
	border-color: var(- -latte-plugin-button-borderColor);
	transition: background-color 0.3s ease, transform 0.4s
		cubic-bezier(0.25, 0.1, 0, 1.96), box-shadow 350ms, max-width 0.3s
		ease;
}

.latte-plugin-core .latte-plugin-button svg {
	fill: #a8a8a8;
	/* IE Fallback */
	fill: var(- -latte-plugin-button-color);
}

.latte-plugin-core .latte-plugin-button .latte-plugin-logo {
	width: 40px;
	height: 40px;
	transition: 250ms;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-button-icon {
	display: inline-block;
	width: auto;
	height: 40px;
	transition: 250ms;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-button-text {
	padding-left: 5px;
	padding-right: 15px;
	font-size: 16px;
	font-weight: 600;
	overflow: hidden;
	white-space: nowrap;
	max-width: 200px;
	transition: 0.3s ease;
}

.latte-plugin-core .latte-plugin-button:hover {
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 4px 8px rgba(0, 0, 0, 0.1),
		0 8px 16px rgba(0, 0, 0, 0.1), 0 16px 32px rgba(0, 0, 0, 0.1), 0 32px
		64px rgba(0, 0, 0, 0.1);
	transform: scale(1.1);
	background-color: var(- -latte-plugin-button-hover-bg);
	color: var(- -latte-plugin-button-hover-color);
	border-style: solid;
	border-width: var(- -latte-plugin-button-hover-borderWidth);
	border-color: var(- -latte-plugin-button-hover-borderColor);
}

.latte-plugin-core .latte-plugin-button:hover svg {
	fill: var(- -latte-plugin-button-hover-color);
}

.latte-plugin-core .latte-plugin-button:active {
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 4px 8px rgba(0, 0, 0, 0.1),
		0 8px 16px rgba(0, 0, 0, 0.1), 0 16px 32px rgba(0, 0, 0, 0.1);
}

@
-webkit-keyframes currentContextBlink { 0% {
	opacity: 1;
	transform: translate(-50%, -50%) scale(1);
}

100


%
{
opacity


:


0
;


transform


:


translate
(


-50
%
,
-50
%


)


scale
(


1
.6


)
;


}
}
@
keyframes currentContextBlink { 0% {
	opacity: 1;
	transform: translate(-50%, -50%) scale(1);
}

100


%
{
opacity


:


0
;


transform


:


translate
(


-50
%
,
-50
%


)


scale
(


1
.6


)
;


}
}
.latte-plugin-core .latte-plugin-button.is-blink::after {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: -1;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 58px;
	opacity: 0.6;
	border-radius: 500px;
	background-color: #f9f9f9;
	/* IE Fallback */
	background-color: var(- -latte-plugin-button-bg);
	-webkit-animation: currentContextBlink 1.2s infinite;
	animation: currentContextBlink 1.2s infinite;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-notification {
	position: absolute;
	top: 0;
	left: 0;
	transform: translateX(calc(-100% - -16px));
	padding: 2px 7px;
	max-width: 150px;
	min-width: 20px;
	min-height: 20px;
	color: white;
	/* IE Fallback */
	color: var(- -latte-plugin-badge-color);
	background-color: #ea5355;
	/* IE Fallback */
	background-color: var(- -latte-plugin-badge-bg);
	border-radius: 40px;
	/* IE Fallback */
	border-radius: var(- -latte-plugin-badge-borderRadius);
	white-space: nowrap;
	box-sizing: border-box;
	font-size: 12px;
	font-weight: bold;
	overflow: hidden;
	border-style: solid;
	border-width: 0px;
	/* IE Fallback */
	border-width: var(- -latte-plugin-badge-borderWidth);
	border-color: transparent;
	/* IE Fallback */
	border-color: var(- -latte-plugin-badge-borderColor);
}

.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-enter-active,
	.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-leave-active
	{
	transition: 0.3s ease;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-enter,
	.latte-plugin-core .latte-plugin-button .latte-plugin-notification.v-leave-active
	{
	max-width: 24px;
	opacity: 0;
}

.latte-plugin-core .latte-plugin-button .latte-plugin-close {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	position: absolute;
	display: flex;
	align-items: center;
	top: 50%;
	left: 29px;
	transform: translate(-50%, -50%) rotate(-50deg);
	opacity: 0;
	transition: 150ms ease-in-out;
}

.latte-plugin-core .latte-plugin-button.active {
	max-width: 58px;
}

.latte-plugin-core .latte-plugin-button.active .latte-plugin-close {
	opacity: 1;
	transform: translate(-50%, -50%) rotate(0);
}

.latte-plugin-core .latte-plugin-button.active .latte-plugin-logo,
	.latte-plugin-core .latte-plugin-button.active .latte-plugin-button-icon
	{
	opacity: 0;
	transform: scale(0.5) rotate(50deg);
}

.latte-plugin-core .latte-plugin-button.active .latte-plugin-button-text
	{
	overflow: hidden;
	max-width: 0;
	padding: 0;
	white-space: nowrap;
}

.latte-plugin-core .latte-plugin-button.is-left {
	right: auto;
}

.latte-plugin-core .latte-plugin-button.is-left .latte-plugin-notification
	{
	left: auto;
	right: 0;
	transform: translateX(calc(100% - 16px));
}

.latte-widget-iframe {
	position: relative !important;
	width: 100% !important;
	height: 100% !important;
	border: none !important;
}
</style>
</head>
<body class="bg_customer_new" onload="" scroll="auto"
	style="overflow-x: hidden">
	<div class="wrapper">
		<header class="header" style="margin-top: 0px;">
			<div class="headArea">
				<strong class="hLogo"> <a href="http://www.mcdonalds.co.kr"
					target="_blank" class="logo" title="메인으로 이동"> <img
						src="./common/images/common/logo.png" alt="맥도날드">
				</a>
				</strong>
				<nav class="hMenu">
					<ul>
						<li class="hMenu_li_select"><a href="#" class="depth">FAQ</a>
						</li>
						<li><a href="/MC/HOM/inquiry.jsp" class="depth">1:1고객문의</a></li>
						<li><a href="/MC/HOM/movedStory.jsp" class="depth">고객감동스토리</a>
						</li>
					</ul>
				</nav>
				<!-- menu end -->
			</div>
		</header>

		<!-- header end -->
		<div id="container">
			<div class="content">
				<div class="visualArea1 faqBg">
					<div class="inner">
						<h1 class="titDep1">FAQ</h1>
						<p class="subCopy">
							여러분들은 무엇이 궁금하세요? 질문에 앞서 읽어주세요.<br> 많은 분들이 궁금해 하시는 내용을
							모아놓았습니다. 원하시는 내용이 없을 경우 1:1 고객문의를 통해 접수해주세요.
						</p>
					</div>
				</div>
				<!-- visualArea end -->
				<div class="contArea">
					<!--div class="inner"-->
					<div class="storeFind">
						<div class="srvcFilter">
							<div class="service">
								<span id="04" class="srvc"
									onclick="javascript:search('04','C');changeColor('04');">
									<input type="checkbox" id="1" value="04" disabled=""> <label
									for="1"> 메뉴 <span class="icon"> <img
											src="./common/images/icon/ic_burger.png" alt="메뉴""="">
									</span>
								</label>
								</span> <span id="01" class="srvc"
									onclick="javascript:search('01','C');changeColor('01');">
									<input type="checkbox" id="2" value="01" disabled=""> <label
									for="2"> 구매 <span class="icon"> <img
											src="./common/images/icon/ic_cart.png" alt="카트">
									</span>
								</label>
								</span> <span id="02" class="srvc"
									onclick="javascript:search('02','C');changeColor('02');">
									<input type="checkbox" id="3" value="Y" disabled=""> <label
									for="3"> 매장이용 <span class="icon"> <img
											src="./common/images/icon/ic_home.png" alt="매장이용">
									</span>
								</label>
								</span> <span id="03" class="srvc"
									onclick="javascript:search('03','C');changeColor('03');">
									<input type="checkbox" id="4" value="Y" disabled=""> <label
									for="4"> 맥딜리버리 <span class="icon"> <img
											src="./common/images/icon/ic_drive.png" alt="맥딜리버리">
									</span>
								</label>
								</span> <span id="05" class="srvc"
									onclick="javascript:search('05','C');changeColor('05');">
									<input type="checkbox" id="5" value="Y" disabled=""> <label
									for="5"> 채용 <span class="icon"> <img
											src="./common/images/icon/ic_search.png" alt="채용">
									</span>
								</label>
								</span> <span id="07" class="srvc"
									onclick="javascript:search('07','C');changeColor('07');">
									<input type="checkbox" id="6" value="Y" disabled=""> <label
									for="6"> 프랜차이즈 <span class="icon"> <img
											src="./common/images/icon/ic_handshake.png" alt="프랜차이즈">
									</span>
								</label>
								</span> <span id="09" class="srvc"
									onclick="javascript:search('09','C');changeColor('09');">
									<input type="checkbox" id="7" value="Y" disabled=""> <label
									for="7"> 맥도날드앱 <span class="icon"> <img
											src="./common/images/icon/ic_mcd.png" alt="맥도날드앱">
									</span>
								</label>
								</span> <span id="08" class="srvc"
									onclick="javascript:search('08','C');changeColor('08');">
									<input type="checkbox" id="8" value="Y" disabled=""> <label
									for="8"> 기타 <span class="icon"> <img
											src="./common/images/icon/ic_etc.png" alt="기타">
									</span>
								</label>
								</span>
							</div>
						</div>


						<!-- 검색창 -->
						<div class="faqFind">
							<fieldset class="srchBox">
								<legend>질문 검색</legend>
								<div class="form">
									<div class="selectWrap" id="selectWrap"
										style="z-index: 100000; width: 150px">
										<select name="category" id="category"
											style="display: block; position: absolute; margin-left: -100000px;"><option
												value="" title="전체">전체</option>
											<option value="01" title="구매">구매</option>
											<option value="02" title="매장이용">매장이용</option>
											<option value="03" title="맥딜리버리">맥딜리버리</option>
											<option value="04" title="메뉴">메뉴</option>
											<option value="05" title="채용">채용</option>
											<option value="07" title="프랜차이즈">프랜차이즈</option>
											<option value="08" title="기타">기타</option>
											<option value="09" title="맥도날드앱">맥도날드앱</option></select>
										<button tabindex="-1" id="category-button"
											aria-expanded="false" aria-autocomplete="list"
											aria-owns="category-menu" aria-haspopup="true"
											class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"
											style="width: 250px;">
											<span class="ui-selectmenu-text">전체</span>
										</button>
										<div class="ui-selectmenu-menu ui-front" style="top: 70px; left: 0px;" tabindex="-1">
											<ul aria-hidden="true" aria-labelledby="category-button"
												id="category-menu" role="listbox" tabindex="0"
												class="ui-menu ui-corner-bottom ui-widget ui-widget-content"
												aria-activedescendant="ui-id-1" aria-disabled="false"
												style="width: 250px;">
												<li class="ui-menu-item"><a id="ui-id-1" role="option"
													class="ui-menu-item-wrapper ui-state-active"
													aria-selected="true">전체</a></li>
												<li class="ui-menu-item"><a id="ui-id-2" role="option"
													class="ui-menu-item-wrapper">구매 </a></li>
												<li class="ui-menu-item"><a id="ui-id-3" role="option"
													class="ui-menu-item-wrapper">매장이용 </a></li>
												<li class="ui-menu-item"><a id="ui-id-4" role="option"
													class="ui-menu-item-wrapper">맥딜리버리 </a></li>
												<li class="ui-menu-item"><a id="ui-id-5" role="option"
													class="ui-menu-item-wrapper">메뉴 </a></li>
												<li class="ui-menu-item"><a id="ui-id-6" role="option"
													class="ui-menu-item-wrapper">채용 </a></li>
												<li class="ui-menu-item"><a id="ui-id-7" role="option"
													class="ui-menu-item-wrapper">프랜차이즈 </a></li>
												<li class="ui-menu-item"><a id="ui-id-8" role="option"
													class="ui-menu-item-wrapper">기타 </a></li>
												<li class="ui-menu-item"><a id="ui-id-9" role="option"
													class="ui-menu-item-wrapper">맥도날드앱 </a></li>
											</ul>
										</div>
									</div>
									<form name="FNAME" class="realForm" method="post"
										onsubmit="return false;">
										<input type="hidden" name="RG_EMPL_ID" value=""> <input
											type="hidden" name="FAQ_TYPE_CD" id="FAQ_TYPE_CD" value="">
										<input type="hidden" name="BBS_ID" id="BBS_ID"
											value="12B0000127"> <input type="hidden"
											name="FAQ_TYPE_CD2" id="FAQ_TYPE_CD2" value=""> <input
											type="hidden" name="SELECTED_DATA" id="SELECTED_DATA"
											value=""> <input type="text"
											placeholder="검색어를 입력해주세요." title="검색어 입력"
											style="width: 720px" name="srchKeyword" id="srchKeyword"
											onkeydown="javascript:if (event.keyCode == 13) {search('','S');}">
									</form>
									<button type="button" class="btnMC btnM"
										onclick="search('','S');">검색하기</button>
								</div>
							</fieldset>

						</div>
					</div>

					<!-- //faqFind -->
					<div class="faqResult">
						<ul class="faqToggle" id="faqList">

						</ul>

						<table class="table_faq" align="center">
							<tbody>
								<tr>
									<td width="650">
										<div id="LIST_DIV" class="table03">
											<table id="LIST_TB" width="100%" class="table01"
												cellspacing="1">
												<tbody>
													<tr>
														<th class="colresize" style="" width="7%"><span
															onclick="">NO</span></th>
														<th class="colresize" style="cursor: pointer" width="20%"><span
															onclick="javascript:SELECTED_SORT_IDX[2] = 1 ; reqAll(10, 1);">분류</span></th>
														<th class="colresize" style="cursor: pointer" width="80%"><span
															onclick="javascript:SELECTED_SORT_IDX[2] = 2 ; reqAll(10, 1);">제목</span></th>
													</tr>
													<tr id="LIST_TR_ID1"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 0 ;rOver(this.id, 0, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',1);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',0);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">1</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">현금과
															카드 혼합 결제가 가능한가요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID1_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">매장을 직접 방문하신 경우에는 구매금액에 대한 카드와 현금의
																혼합 결제가 가능하나, 맥딜리버리 서비스, SOK 이용시에는 불가능합니다.</font></td>
													</tr>
													<tr id="LIST_TR_ID2"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 1 ;rOver(this.id, 1, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',2);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',1);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">2</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">단체
															주문이 가능하나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID2_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">단체 주문의 경우 여러 사정에 따라 가능 여부가 다를 수
																있습니다.<br>단체 배달 서비스를 원하실 경우 맥딜리버리 주문 콜센터 1600-5252를
																통해 확인이 가능하며, 가까운 매장에서 방문 구매를 원하실 경우 매장으로 최소 이틀 전 방문 또는
																전화 문의 주시면 확인이 가능 합니다. (홈페이지 &gt; 매장찾기에서 해당 매장 검색)
														</font></td>
													</tr>
													<tr id="LIST_TR_ID3"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 2 ;rOver(this.id, 2, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',3);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',2);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">3</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">현금
															영수증을 발급받지 못했습니다. 어떻게 해야 하나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID3_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">매장에서 제품 구매금액 결제 전 고객님이 따로 요청하시지 않은
																경우에는 자동으로 현금영수증 자진발급 처리가 되고 있는 점 고객님의 너그러운 양해 부탁드립니다. <br>맥도날드에서는
																국세청의 자진발급제도에 따라, 거래 당시 현금영수증을 챙기시지 못한 고객분들도 국세청 홈페이지를 통해
																소비자의 거래분으로 전환시키실 수 있기 때문에 고객 불만을 해소하고 자 맥도날드에서도 현금영수증
																자진발급을 시행하고 있습니다. 자진발급을 원하지 않으실 경우 제품 가격을 결제 전 먼저 현금영수증
																발급을 요청해주시면 바로 발급을 해드리고 있습니다.<br>자진발급이 된 경우 계산 후
																수령하신 영수증 내 현금영수증 자동발행 확인번호(010-000-1234)를 국세청
																홈페이지(http://www.taxsave.go.kr )로 접속, <br>자진발급분
																사용자등록에 이 번호를 넣으면 현금영수증 적립이 가능하며,<br>국세청 영수증
																상담센터(1544-2020)의 상담원을 통해서도 전환 요청이 가능하오니 이용에 참조 부탁 드립니다.
																<br>(현금 영수증 발급 요청에 대해서는 각 매장 카운터에 위치한 '계산 전 현금영수증
																요청'에 대한 안내문을 통해 안내드리고 있습니다.)
														</font></td>
													</tr>
													<tr id="LIST_TR_ID4"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 3 ;rOver(this.id, 3, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',4);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',3);"
														style="cursor: pointer" class="tractive">
														<td width="7%" align="center">4</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">티
															머니, 마이비 카드 결제가 가능한가요?</td>
													</tr>
													<tr style="display: none;" id="LIST_TR_ID4_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">티머니 카드의 경우, 일부 매장을 제외하고 결제
																가능합니다.마이비 카드는 캐시비로 인수되어 신규 마이비 카드의 경우에는 사용이 불가하며 일부 기존
																마이비 카드(카드 앞면에 마이비 기재)만 사용이 가능합니다.기존 마이비 카드 역시 2018년 7월
																21일 이후에는 사용이 어려울 수 있는 점, 이용에 참고 부탁 드립니다.</font></td>
													</tr>
													<tr id="LIST_TR_ID5"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 4 ;rOver(this.id, 4, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',5);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',4);"
														style="cursor: pointer">
														<td width="7%" align="center">5</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">맥모닝
															판매시간은 어떻게 되나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID5_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">전국적으로 판매되고 있는 맥모닝 세트와 브렉퍼스트 메뉴는 보다
																맛있고 영양적으로도 우수한 다양한 메뉴를 선보이기 위해 저희 맥도날드가 준비한 아침 메뉴이며 오전
																4시부터 오전 10시30분까지는 언제나 맛보실 수 있습니다. (맥딜리버리 이용 시 오전3시50분
																~오전 10시20분)</font></td>
													</tr>
													<tr id="LIST_TR_ID6"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 5 ;rOver(this.id, 5, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',6);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',5);"
														style="cursor: pointer">
														<td width="7%" align="center">6</td>
														<td style="text-align: center; padding-left: 0px;">매장이용</td>
														<td style="text-align: left; padding-left: 5px;">매장에서
															생일파티등의 행사를 진행하려고 하는데 가능할까요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID6_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">생일파티 여부는 희망 매장으로 최소 이주일전에 문의
																부탁드립니다. 각 매장 상황에 따라 진행이 어려울 수 있는 점 참조 부탁드립니다. 매장 연락처는
																홈페이지&gt; 매장찾기를 참고해주세요.</font></td>
													</tr>
													<tr id="LIST_TR_ID7"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 6 ;rOver(this.id, 6, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',7);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',6);"
														style="cursor: pointer">
														<td width="7%" align="center">7</td>
														<td style="text-align: center; padding-left: 0px;">매장이용</td>
														<td style="text-align: left; padding-left: 5px;">매장에서
															와이파이 사용이 가능한가요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID7_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">와이파이 사용 가능 표시가 있는 매장에서는 이용 가능합니다.<br>다만
																제한적으로 불가한 매장이 있으니 매장 이용 전에 미리 확인을 부탁 드립니다. <br>매장
																연락처는 홈페이지 매장찾기&gt; 매장정보를 통해 확인하실 수 있습니다.
														</font></td>
													</tr>
													<tr id="LIST_TR_ID8"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 7 ;rOver(this.id, 7, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',8);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',7);"
														style="cursor: pointer">
														<td width="7%" align="center">8</td>
														<td style="text-align: center; padding-left: 0px;">매장이용</td>
														<td style="text-align: left; padding-left: 5px;">우리
															동네 근처의 맥도날드 매장을 알고 싶습니다</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID8_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">홈페이지 매장찾기에서 해당 지역을 클릭하시면 가까운 매장 정보
																확인이 가능합니다.</font></td>
													</tr>
													<tr id="LIST_TR_ID9"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 8 ;rOver(this.id, 8, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',9);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',8);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">9</td>
														<td style="text-align: center; padding-left: 0px;">맥딜리버리</td>
														<td style="text-align: left; padding-left: 5px;">평소
															배달이 가능하였던 지역인데 오늘은 왜 안되나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID9_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">맥딜리버리 서비스의 경우 기상 조건이나 매장 사정으로 인해
																배달 서비스가 제한될 수 있으며 특히,폭우폭설시에는 제품 배송이 원활하지 못할 수 있습니다. 이는,
																라이더의 안전상의 문제(날씨로 인한 사고)등을 예방하는 차원에서 일시적으로 배달이 중단되는 경우
																이오니 고객님의 양해 부탁 드립니다.</font></td>
													</tr>
													<tr id="LIST_TR_ID10"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 9 ;rOver(this.id, 9, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',10);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',9);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">10</td>
														<td style="text-align: center; padding-left: 0px;">맥딜리버리</td>
														<td style="text-align: left; padding-left: 5px;">맥딜리버리는
															어떻게 이용하나요? 맥딜리버리 전화번호가 몇번 인가요? 배달의민족, 요기요, 쿠팡이츠에서 주문 가능
															한가요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID10_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="./common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px;; padding-right: 10px;"><font
															color="#920000">맥딜리버리는 전화, 온라인, 맥딜리버리앱 또는 일부 외부 배달
																채널(배달의민족, 요기요, 쿠팡이츠등)에서 이용 가능 합니다. (맥딜리버리 전화번호 1600-5252
																/ 온라인 https://www.mcdelivery.co.kr / 앱스토어와 플레이스토어에서
																맥딜리버리앱 다운로드)</font></td>
													</tr>
												</tbody>
											</table>
										</div> <!--button type="button" class="btnMC btnM" onclick="morePage('','S');">
					             	 +
					            </button-->
										<div class="btnMore" id="btnMore">
											<button type="button" class="more"
												onclick="morePage('','S');">더보기</button>
										</div>
										<div id="LIST_PAGE_DIV" style="dispaly: none"></div>
									</td>
								</tr>
							</tbody>
						</table>

						<!-- //faqResult -->
					</div>


					<!--/div-->
				</div>

				<div class="side-box">
					<span>고객센터</span> <strong>080.208.1588</strong>
					<p>
						평일 09:00 ~ 18:00<br> (점심시간 12:00 ~ 13:00)
					</p>
					<!--button type="button">
             	 챗봇상담
            </button-->
				</div>

			</div>

		</div>
	</div>


	<div id="latte-plugin" class="is-left"
		style="-latte-plugin-badge-borderRadius: 58px; - -color-primary: #DB0007FF; - -color-primary-button-color: #ffffff; - -color-border-extralight: #FFFFFFFF; - -color-border-lighter: #E1E1E1; - -color-text-primary: #333333; - -color-text-secondary: #898989; - -chat-footer-input-bg: #F5F5F5; - -chat-color-bg: #FFBC0DFF; - -chat-color-button-disabled: #ADADAD; - -chat-color-sub-icon: #ADADAD; - -latte-plugin-global-widget-button-hover-bg: #DB0007FF; - -message-borderRadius: 3px 8px 8px 14px; - -message-backgroundColor: #FFD200FF; - -message-color: #000000FF; - -message-paddingTop: 7px; - -message-paddingRight: 11px; - -message-paddingBottom: 7px; - -message-paddingLeft: 11px; - -message-marginBottom: 8px; - -messageOwner-borderRadius: 8px 3px 14px 8px; - -messageOwner-backgroundColor: #FFFFFFFF; - -messageOwner-color: #000000FF; - -messageOwner-paddingTop: 7px; - -messageOwner-paddingRight: 11px; - -messageOwner-paddingBottom: 7px; - -messageOwner-paddingLeft: 11px; - -messageOwner-marginBottom: 8px; - -header-text-color: #FFFFFFFF; - -header-text-secondary-color: #FFFFFFFF; - -header-text-share-color: #FFFFFFFF; - -header-icon-refresh-color: #000000FF; - -header-icon-refresh-bg: #FFD200FF; - -header-icon-close-color: #FFFFFFFF; - -header-shareButton-borderRadius: 4px; - -header-shareButton-backgroundColor: #FFD200FF; - -header-shareButton-borderWidth: 0px; - -header-shareButton-color: #333333; - -header-bg-color: #DB0007FF; - -header-bg-borderColor: #E04247FF; - -header-bg-borderWidth: 1px; - -footer-submit-borderRadius: 5px; - -footer-submit-active-bg: #DB0007FF; - -footer-submit-active-borderWidth: 1px; - -footer-submit-active-color: #ffffff; - -footer-submit-disabled-bg: #E1E1E1FF; - -footer-submit-disabled-borderWidth: 1px; - -footer-submit-disabled-color: #ADADADFF; - -profile-text-name-color: #000000FF; - -profile-text-date-color: #00000090; - -userInput-card-borderRadius: 8px; - -userInput-card-bg: #FFFFFFFF; - -userInput-card-borderWidth: 0px; - -userInput-card-title-color: #333333; - -userInput-input-borderRadius: 8px; - -userInput-input-bg: #ffffff00; - -userInput-input-borderWidth: 1px; - -userInput-input-borderColor: #E1E1E1FF; - -userInput-input-color: #333333; - -userInput-input-placeholder-color: #898989; - -userInput-check-active-bg: #DB0007FF; - -userInput-check-active-borderWidth: 0px; - -userInput-check-active-color: #FFFFFFFF; - -userInput-check-disabled-bg: #E1E1E1FF; - -userInput-check-disabled-color: #ADADADFF; - -userInput-button-text: &amp;amp; quot; 대화 시작하기&amp;amp; quot;; - -userInput-button-text-temp: 대화 시작하기; - -userInput-button-borderRadius: 8px; - -userInput-button-active-bg: #DB0007FF; - -userInput-button-active-borderWidth: 1px; - -userInput-button-active-borderColor: #DB0007FF; - -userInput-button-active-color: #FFFFFFFF; - -userInput-button-disabled-bg: #ffffff00; - -userInput-button-disabled-borderWidth: 1px; - -userInput-button-disabled-borderColor: #DB0007FF; - -userInput-button-disabled-color: #DB0007FF; - -card-shape-borderRadius: 8px; - -card-shape-bg: #ffffff; - -card-shape-borderWidth: 0px; - -card-shape-color: #333333; - -slider-control-borderRadius: 20px; - -slider-control-bg: #FFFFFFFF; - -slider-control-color: #DB0007FF; - -button-borderRadius: 8px; - -button-margin-bottom: 8px; - -button-default-bg: #DB0007FF; - -button-default-borderWidth: 1px; - -button-default-borderColor: #DB0007FF; - -button-default-color: #FFFFFFFF; - -button-hover-bg: #A20005FF; - -button-hover-borderWidth: 1px; - -button-hover-borderColor: #A20005FF; - -button-hover-color: #ffffff; - -quick-button-borderRadius: 30px; - -quick-button-margin: 8px; - -quick-button-default-bg: #DB0007FF; - -quick-button-default-borderWidth: 1px; - -quick-button-default-borderColor: #DB0007FF; - -quick-button-default-color: #FFFFFFFF; - -quick-button-hover-bg: #A20005FF; - -quick-button-hover-borderWidth: 1px; - -quick-button-hover-borderColor: #A20005FF; - -quick-button-hover-color: #ffffff; - -systemMessage-design-borderWidth: 1px; - -systemMessage-design-borderColor: #00000020; - -systemMessage-design-text-color: #00000090; - -latte-plugin-button-borderRadius: 58px; - -latte-plugin-button-bg: #DB0008FF; - -latte-plugin-button-borderWidth: 0px; - -latte-plugin-button-color: #FFFFFFFF; - -latte-plugin-button-hover-bg: #DB0008FF; - -latte-plugin-button-hover-color: #FFFFFFFF; - -latte-plugin-badge-bg: #FFD200FF; - -latte-plugin-badge-borderWidth: 0px; - -latte-plugin-badge-color: #DB0007FF; - -bg-bg-color: #C5A990FF; left: 25px; bottom: 76px;">
		<div class="latte-plugin-script" style="display: none;">
			<iframe id="latte-plugin-script-iframe" name="latte-iframe"
				src="https://widget-chat.latte.ai/chat?master_uid=98d7a49133a6469694397c9e0a42709c&amp;chatbot_uid=129b8c4c266f49f3a6c5712ed3930c89&amp;origin_uid=129b8c4c266f49f3a6c5712ed3930c89&amp;is_widget=1"
				style="position: relative !important; width: 100% !important; height: 100% !important; border: none;"></iframe>
		</div>
		<div class="latte-plugin-core">
			<div class="latte-plugin-button is-left"
				style="left: 25px; bottom: 76px;">
				<!---->
				<!---->
				<img
					src="https://s3.ap-northeast-2.amazonaws.com/latte-storage/image/3a76e554e94a435aa733b6475f97ef4f.png"
					alt="대화 시작하기" class="latte-plugin-button-icon">
				<div class="latte-plugin-button-text">챗봇상담</div>
				<span class="latte-plugin-close"><svg width="24" height="24">
						<path
							d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path></svg></span>
			</div>
		</div>
	</div>
</body>
<whale-quicksearch translate="no"></whale-quicksearch>
</html>
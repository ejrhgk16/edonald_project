<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">

<link rel="stylesheet" href="/resources/css/app_faqMain.css">
<link rel="stylesheet" href="/resources/css/app_common.css">
<script src="/resources/js/app_commons.js"></script>

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
						src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/logo.png" alt="맥도날드">
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
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_burger.png" alt="메뉴""="">
									</span>
								</label>
								</span> <span id="01" class="srvc"
									onclick="javascript:search('01','C');changeColor('01');">
									<input type="checkbox" id="2" value="01" disabled=""> <label
									for="2"> 구매 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_cart.png" alt="카트">
									</span>
								</label>
								</span> <span id="02" class="srvc"
									onclick="javascript:search('02','C');changeColor('02');">
									<input type="checkbox" id="3" value="Y" disabled=""> <label
									for="3"> 매장이용 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_home.png" alt="매장이용">
									</span>
								</label>
								</span> <span id="03" class="srvc"
									onclick="javascript:search('03','C');changeColor('03');">
									<input type="checkbox" id="4" value="Y" disabled=""> <label
									for="4"> 맥딜리버리 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_drive.png" alt="맥딜리버리">
									</span>
								</label>
								</span> <span id="05" class="srvc"
									onclick="javascript:search('05','C');changeColor('05');">
									<input type="checkbox" id="5" value="Y" disabled=""> <label
									for="5"> 채용 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_search.png" alt="채용">
									</span>
								</label>
								</span> <span id="07" class="srvc"
									onclick="javascript:search('07','C');changeColor('07');">
									<input type="checkbox" id="6" value="Y" disabled=""> <label
									for="6"> 프랜차이즈 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_handshake.png" alt="프랜차이즈">
									</span>
								</label>
								</span> <span id="09" class="srvc"
									onclick="javascript:search('09','C');changeColor('09');">
									<input type="checkbox" id="7" value="Y" disabled=""> <label
									for="7"> 맥도날드앱 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_mcd.png" alt="맥도날드앱">
									</span>
								</label>
								</span> <span id="08" class="srvc"
									onclick="javascript:search('08','C');changeColor('08');">
									<input type="checkbox" id="8" value="Y" disabled=""> <label
									for="8"> 기타 <span class="icon"> <img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/ic_etc.png" alt="기타">
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
										<div class="ui-selectmenu-menu ui-front"
											style="top: 70px; left: 0px;" tabindex="-1">
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
											value=""> 
											<input type="text" placeholder="검색어를 입력해주세요." title="검색어 입력" style="width: 720px" name="srchKeyword" id="srchKeyword"
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
												<tbody class="tbody01">
													<tr>
														<th class="colresize" style="" width="7%"><span
															onclick="">NO</span></th>
														<th class="colresize" style="cursor: pointer" width="20%"><span>분류</span></th>
														<th class="colresize" style="cursor: pointer" width="80%"><span>제목</span></th>
													</tr>
													<c:forEach items="${list}" var="list" varStatus="status">
														<tr id="LIST_TR_ID${status.count}" style="cursor: pointer" class="list_td">
															<td width="7%" align="center"><c:out value="${status.count }"/></td>
															<td style="text-align: center; padding-left: 0px;">${list.faq_subject }</td>
															<td style="text-align: left; padding-left: 5px;">${list.faq_title}</td>
														</tr>
														<tr style="display: none" id="LIST_TR_ID${status.count}_DT">
															<td style="text-align: left; padding-left: 10px; padding-right: 10px;"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/A.gif"></td>
															<td colspan="3" style="text-align: left; padding-left: 10px;; padding-right: 10px;">
																<font color="#920000">${list.faq_content}</font>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div> <!--button type="button" class="btnMC btnM" onclick="morePage('','S');">
					             	 +
					            </button-->
										<div class="btnMore" id="btnMore">
											<button type="button" class="more">더보기</button>
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
		style="-latte-plugin-badge-borderRadius: 58px; - -color-primary: #DB0007FF; - -color-primary-button-color: #ffffff; - -color-border-extralight: #FFFFFFFF; - -color-border-lighter: #E1E1E1; - -color-text-primary: #333333; - -color-text-secondary: #898989; - -chat-footer-input-bg: #F5F5F5; - -chat-color-bg: #FFBC0DFF; - -chat-color-button-disabled: #ADADAD; - -chat-color-sub-icon: #ADADAD; - -latte-plugin-global-widget-button-hover-bg: #DB0007FF; - -message-borderRadius: 3px 8px 8px 14px; - -message-backgroundColor: #FFD200FF; - -message-color: #000000FF; - -message-paddingTop: 7px; - -message-paddingRight: 11px; - -message-paddingBottom: 7px; - -message-paddingLeft: 11px; - -message-marginBottom: 8px; - -messageOwner-borderRadius: 8px 3px 14px 8px; - -messageOwner-backgroundColor: #FFFFFFFF; - -messageOwner-color: #000000FF; - -messageOwner-paddingTop: 7px; - -messageOwner-paddingRight: 11px; - -messageOwner-paddingBottom: 7px; - -messageOwner-paddingLeft: 11px; - -messageOwner-marginBottom: 8px; - -header-text-color: #FFFFFFFF; - -header-text-secondary-color: #FFFFFFFF; - -header-text-share-color: #FFFFFFFF; - -header-icon-refresh-color: #000000FF; - -header-icon-refresh-bg: #FFD200FF; - -header-icon-close-color: #FFFFFFFF; - -header-shareButton-borderRadius: 4px; - -header-shareButton-backgroundColor: #FFD200FF; - -header-shareButton-borderWidth: 0px; - -header-shareButton-color: #333333; - -header-bg-color: #DB0007FF; - -header-bg-borderColor: #E04247FF; - -header-bg-borderWidth: 1px; - -footer-submit-borderRadius: 5px; - -footer-submit-active-bg: #DB0007FF; - -footer-submit-active-borderWidth: 1px; - -footer-submit-active-color: #ffffff; - -footer-submit-disabled-bg: #E1E1E1FF; - -footer-submit-disabled-borderWidth: 1px; - -footer-submit-disabled-color: #ADADADFF; - -profile-text-name-color: #000000FF; - -profile-text-date-color: #00000090; - -userInput-card-borderRadius: 8px; - -userInput-card-bg: #FFFFFFFF; - -userInput-card-borderWidth: 0px; - -userInput-card-title-color: #333333; - -userInput-input-borderRadius: 8px; - -userInput-input-bg: #ffffff00; - -userInput-input-borderWidth: 1px; - -userInput-input-borderColor: #E1E1E1FF; - -userInput-input-color: #333333; - -userInput-input-placeholder-color: #898989; - -userInput-check-active-bg: #DB0007FF; - -userInput-check-active-borderWidth: 0px; - -userInput-check-active-color: #FFFFFFFF; - -userInput-check-disabled-bg: #E1E1E1FF; - -userInput-check-disabled-color: #ADADADFF; - -userInput-button-text: &amp;amp; amp; quot; 대화 시작하기&amp;amp; amp; quot;; - -userInput-button-text-temp: 대화 시작하기; - -userInput-button-borderRadius: 8px; - -userInput-button-active-bg: #DB0007FF; - -userInput-button-active-borderWidth: 1px; - -userInput-button-active-borderColor: #DB0007FF; - -userInput-button-active-color: #FFFFFFFF; - -userInput-button-disabled-bg: #ffffff00; - -userInput-button-disabled-borderWidth: 1px; - -userInput-button-disabled-borderColor: #DB0007FF; - -userInput-button-disabled-color: #DB0007FF; - -card-shape-borderRadius: 8px; - -card-shape-bg: #ffffff; - -card-shape-borderWidth: 0px; - -card-shape-color: #333333; - -slider-control-borderRadius: 20px; - -slider-control-bg: #FFFFFFFF; - -slider-control-color: #DB0007FF; - -button-borderRadius: 8px; - -button-margin-bottom: 8px; - -button-default-bg: #DB0007FF; - -button-default-borderWidth: 1px; - -button-default-borderColor: #DB0007FF; - -button-default-color: #FFFFFFFF; - -button-hover-bg: #A20005FF; - -button-hover-borderWidth: 1px; - -button-hover-borderColor: #A20005FF; - -button-hover-color: #ffffff; - -quick-button-borderRadius: 30px; - -quick-button-margin: 8px; - -quick-button-default-bg: #DB0007FF; - -quick-button-default-borderWidth: 1px; - -quick-button-default-borderColor: #DB0007FF; - -quick-button-default-color: #FFFFFFFF; - -quick-button-hover-bg: #A20005FF; - -quick-button-hover-borderWidth: 1px; - -quick-button-hover-borderColor: #A20005FF; - -quick-button-hover-color: #ffffff; - -systemMessage-design-borderWidth: 1px; - -systemMessage-design-borderColor: #00000020; - -systemMessage-design-text-color: #00000090; - -latte-plugin-button-borderRadius: 58px; - -latte-plugin-button-bg: #DB0008FF; - -latte-plugin-button-borderWidth: 0px; - -latte-plugin-button-color: #FFFFFFFF; - -latte-plugin-button-hover-bg: #DB0008FF; - -latte-plugin-button-hover-color: #FFFFFFFF; - -latte-plugin-badge-bg: #FFD200FF; - -latte-plugin-badge-borderWidth: 0px; - -latte-plugin-badge-color: #DB0007FF; - -bg-bg-color: #C5A990FF; left: 25px; bottom: 76px;">
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
	<form>
		<input type="hidden" id="start" value="${data.start}">
		<input type="hidden" id="end" value="${data.end}">
 	</form>
</body>
<whale-quicksearch translate="no"></whale-quicksearch>
</html>
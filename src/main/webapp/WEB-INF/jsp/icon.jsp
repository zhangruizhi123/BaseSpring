<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="_mate.jsp"></jsp:include>
<title>登录页面</title>
</head>
<body>
	<div class="container">
		<h1>图标</h1>
		<div class="row">
			<div class="col-lg-12">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td><span class="glyphicon glyphicon-asterisk"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Asterik</span></td>
							<td><span class="glyphicon glyphicon-plus"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Plus</span></td>
							<td><span class="glyphicon glyphicon-euro"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Euro</span></td>
							<td><span class="glyphicon glyphicon-envelope"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Envelope</span></td>
							<td><span class="glyphicon glyphicon-pencil"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Pencil</span></td>
							<td><span class="glyphicon glyphicon-glass"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Glass</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-music"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Music</span></td>
							<td><span class="glyphicon glyphicon-search"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Search</span></td>
							<td><span class="glyphicon glyphicon-heart"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Heart</span></td>
							<td><span class="glyphicon glyphicon-star"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Star</span></td>
							<td><span class="glyphicon glyphicon-star-empty"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Empty</span></td>
							<td><span class="glyphicon glyphicon-user"
								style="color: rgb(255, 140, 60); font-size: 18px;"> User</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-film"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Film</span></td>
							<td><span class="glyphicon glyphicon-th-large"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Th
									large</span></td>
							<td><span class="glyphicon glyphicon-th"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Th</span></td>
							<td><span class="glyphicon glyphicon-th-list"
								style="color: rgb(255, 140, 60); font-size: 18px;"> List</span></td>
							<td><span class="glyphicon glyphicon-ok"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Okay</span></td>
							<td><span class="glyphicon glyphicon-remove"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Remove</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-zoom-in"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Zoom
									in</span></td>
							<td><span class="glyphicon glyphicon-zoom-out"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Zoom
									out</span></td>
							<td><span class="glyphicon glyphicon-off"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Off</span></td>
							<td><span class="glyphicon glyphicon-signal"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Signal</span></td>
							<td><span class="glyphicon glyphicon-cog"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Cog</span></td>
							<td><span class="glyphicon glyphicon-trash"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Trash</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-home"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Home</span></td>
							<td><span class="glyphicon glyphicon-file"
								style="color: rgb(255, 140, 60); font-size: 18px;"> File</span></td>
							<td><span class="glyphicon glyphicon-time"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Time</span></td>
							<td><span class="glyphicon glyphicon-road"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Road</span></td>
							<td><span class="glyphicon glyphicon-download-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Download alt</span></td>
							<td><span class="glyphicon glyphicon-download"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Download</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-upload"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Upload</span></td>
							<td><span class="glyphicon glyphicon-inbox"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Inbox</span></td>
							<td><span class="glyphicon glyphicon-play-circle"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Play
									circle</span></td>
							<td><span class="glyphicon glyphicon-repeat"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Repeat</span></td>
							<td><span class="glyphicon glyphicon-refresh"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Refresh</span></td>
							<td><span class="glyphicon glyphicon-list-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;"> List
									alt</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-lock"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Lock</span></td>
							<td><span class="glyphicon glyphicon-flag"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Flag</span></td>
							<td><span class="glyphicon glyphicon-headphones"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Headphones</span></td>
							<td><span class="glyphicon glyphicon-volume-off"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Volume-off</span></td>
							<td><span class="glyphicon glyphicon-volume-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Volume-down</span></td>
							<td><span class="glyphicon glyphicon-volume-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Volume-up</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-qrcode"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Qrcode</span></td>
							<td><span class="glyphicon glyphicon-barcode"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Barcode</span></td>
							<td><span class="glyphicon glyphicon-tag"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Tag</span></td>
							<td><span class="glyphicon glyphicon-tags"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Tags</span></td>
							<td><span class="glyphicon glyphicon-book"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Book</span></td>
							<td><span class="glyphicon glyphicon-bookmark"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Bookmark</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-print"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Print</span></td>
							<td><span class="glyphicon glyphicon-camera"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Camera</span></td>
							<td><span class="glyphicon glyphicon-font"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Font</span></td>
							<td><span class="glyphicon glyphicon-bold"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Bold</span></td>
							<td><span class="glyphicon glyphicon-italic"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Italic</span></td>
							<td><span class="glyphicon glyphicon-text-height"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Text-height</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-text-width"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Text-width</span></td>
							<td><span class="glyphicon glyphicon-align-left"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Align-left</span></td>
							<td><span class="glyphicon glyphicon-align-center"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Align-center</span></td>
							<td><span class="glyphicon glyphicon-align-right"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Align-right</span></td>
							<td><span class="glyphicon glyphicon-align-justify"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Align-justify</span></td>
							<td><span class="glyphicon glyphicon-list"
								style="color: rgb(255, 140, 60); font-size: 18px;"> List</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-indent-left"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Indent-left</span></td>
							<td><span class="glyphicon glyphicon-indent-right"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Indent-right</span></td>
							<td><span class="glyphicon glyphicon-facetime-video"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Facetime-video</span></td>
							<td><span class="glyphicon glyphicon-picture"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Picture</span></td>
							<td><span class="glyphicon glyphicon-map-marker"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Map-marker</span></td>
							<td><span class="glyphicon glyphicon-adjust"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Adjust</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-tint"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Tint</span></td>
							<td><span class="glyphicon glyphicon-edit"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Edit</span></td>
							<td><span class="glyphicon glyphicon-share"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Share</span></td>
							<td><span class="glyphicon glyphicon-check"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Check</span></td>
							<td><span class="glyphicon glyphicon-move"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Move</span></td>
							<td><span class="glyphicon glyphicon-step-backward"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Step-backward</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-fast-backward"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Fast-backward</span></td>
							<td><span class="glyphicon glyphicon-backward"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Backward</span></td>
							<td><span class="glyphicon glyphicon-play"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Play</span></td>
							<td><span class="glyphicon glyphicon-pause"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Pause</span></td>
							<td><span class="glyphicon glyphicon-stop"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Stop</span></td>
							<td><span class="glyphicon glyphicon-forward"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Forward</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-fast-forward"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Fast-forward</span></td>
							<td><span class="glyphicon glyphicon-step-forward"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Step-forward</span></td>
							<td><span class="glyphicon glyphicon-eject"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Eject</span></td>
							<td><span class="glyphicon glyphicon-chevron-left"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Chevron-left</span></td>
							<td><span class="glyphicon glyphicon-chevron-right"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Chevron-right</span></td>
							<td><span class="glyphicon glyphicon-plus-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Plus-sign</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-minus-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Minus-sign</span></td>
							<td><span class="glyphicon glyphicon-remove-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Remove-sign</span></td>
							<td><span class="glyphicon glyphicon-ok-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Ok-sign</span></td>
							<td><span class="glyphicon glyphicon-question-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Question-sign</span></td>
							<td><span class="glyphicon glyphicon-info-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Info-sign</span></td>
							<td><span class="glyphicon glyphicon-screenshot"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Screenshot</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-remove-circle"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Remove-circle</span></td>
							<td><span class="glyphicon glyphicon-ok-circle"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Ok-circle</span></td>
							<td><span class="glyphicon glyphicon-ban-circle"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Ban-circle</span></td>
							<td><span class="glyphicon glyphicon-arrow-left"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Arrow-left</span></td>
							<td><span class="glyphicon glyphicon-arrow-right"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Arrow-right</span></td>
							<td><span class="glyphicon glyphicon-arrow-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Arrow-up</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-arrow-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Arrow-down</span></td>
							<td><span class="glyphicon glyphicon-share-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Share-alt</span></td>
							<td><span class="glyphicon glyphicon-exclamation-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Exclamation-sign</span></td>
							<td><span class="glyphicon glyphicon-gift"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Gift</span></td>
							<td><span class="glyphicon glyphicon-leaf"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Leaf</span></td>
							<td><span class="glyphicon glyphicon-fire"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Fire</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-eye-open"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Eye-open</span></td>
							<td><span class="glyphicon glyphicon-eye-close"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Eye-close</span></td>
							<td><span class="glyphicon glyphicon-warning-sign"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Warning-sign</span></td>
							<td><span class="glyphicon glyphicon-plane"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Plane</span></td>
							<td><span class="glyphicon glyphicon-calendar"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Calendar</span></td>
							<td><span class="glyphicon glyphicon-random"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Random</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-comment"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Comment</span></td>
							<td><span class="glyphicon glyphicon-magnet"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Magnet</span></td>
							<td><span class="glyphicon glyphicon-chevron-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Chevron-up</span></td>
							<td><span class="glyphicon glyphicon-chevron-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Chevron-down</span></td>
							<td><span class="glyphicon glyphicon-retweet"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Retweet</span></td>
							<td><span class="glyphicon glyphicon-shopping-cart"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Shopping-cart</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-folder-close"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Folder-close</span></td>
							<td><span class="glyphicon glyphicon-folder-open"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Folder-open</span></td>
							<td><span class="glyphicon glyphicon-resize-vertical"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Resize-vertical</span></td>
							<td><span class="glyphicon glyphicon-resize-horizontal"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Resize-horizontal</span></td>
							<td><span class="glyphicon glyphicon-hdd"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Hdd</span></td>
							<td><span class="glyphicon glyphicon-bullhorn"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Bullhorn</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-bell"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Bell</span></td>
							<td><span class="glyphicon glyphicon-certificate"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Certificate</span></td>
							<td><span class="glyphicon glyphicon-thumbs-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Thumbs-up</span></td>
							<td><span class="glyphicon glyphicon-thumbs-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Thumbs-down</span></td>
							<td><span class="glyphicon glyphicon-hand-right"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Hand-right</span></td>
							<td><span class="glyphicon glyphicon-hand-left"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Hand-left</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-hand-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Hand-up</span></td>
							<td><span class="glyphicon glyphicon-hand-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Hand-down</span></td>
							<td><span class="glyphicon glyphicon-circle-arrow-right"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Circle-arrow-right</span></td>
							<td><span class="glyphicon glyphicon-circle-arrow-left"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Circle-arrow-left</span></td>
							<td><span class="glyphicon glyphicon-circle-arrow-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Circle-arrow-up</span></td>
							<td><span class="glyphicon glyphicon-circle-arrow-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Circle-arrow-down</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-globe"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Globe</span></td>
							<td><span class="glyphicon glyphicon-wrench"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Wrench</span></td>
							<td><span class="glyphicon glyphicon-tasks"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Tasks</span></td>
							<td><span class="glyphicon glyphicon-filter"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Filter</span></td>
							<td><span class="glyphicon glyphicon-briefcase"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Briefcase</span></td>
							<td><span class="glyphicon glyphicon-fullscreen"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									glyphicon-fullscreen</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-dashboard"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Dashboard</span></td>
							<td><span class="glyphicon glyphicon-paperclip"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Paperclip</span></td>
							<td><span class="glyphicon glyphicon-heart-empty"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Heart-empty</span></td>
							<td><span class="glyphicon glyphicon-link"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Link</span></td>
							<td><span class="glyphicon glyphicon-phone"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Phone</span></td>
							<td><span class="glyphicon glyphicon-pushpin"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Pushpin</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-usd"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Usd</span></td>
							<td><span class="glyphicon glyphicon-gbp"
								style="color: rgb(255, 140, 60); font-size: 18px;"> GBP</span></td>
							<td><span class="glyphicon glyphicon-sort"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Sort</span></td>
							<td><span class="glyphicon glyphicon-sort-by-alphabet"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sort-by-alphabet</span></td>
							<td><span class="glyphicon glyphicon-sort-by-alphabet-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sort-by-alphabet-alt</span></td>
							<td><span class="glyphicon glyphicon-sort-by-order"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sort-by-order</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-sort-by-order-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sort-by-order-alt</span></td>
							<td><span class="glyphicon glyphicon-sort-by-attributes"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sort-by-attributes</span></td>
							<td><span class="glyphicon glyphicon-sort-by-attributes-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sort-by-attributes-alt</span></td>
							<td><span class="glyphicon glyphicon-unchecked"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Unchecked</span></td>
							<td><span class="glyphicon glyphicon-expand"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Expand</span></td>
							<td><span class="glyphicon glyphicon-collapse-down"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Collapse-down</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-collapse-up"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Collapse-up</span></td>
							<td><span class="glyphicon glyphicon-log-in"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Log-in</span></td>
							<td><span class="glyphicon glyphicon-flash"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Flash</span></td>
							<td><span class="glyphicon glyphicon-log-out"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Log-out</span></td>
							<td><span class="glyphicon glyphicon-new-window"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									New-window</span></td>
							<td><span class="glyphicon glyphicon-record"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Record</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-save"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Save</span></td>
							<td><span class="glyphicon glyphicon-open"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Open</span></td>
							<td><span class="glyphicon glyphicon-saved"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Saved</span></td>
							<td><span class="glyphicon glyphicon-import"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Import</span></td>
							<td><span class="glyphicon glyphicon-export"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Export</span></td>
							<td><span class="glyphicon glyphicon-send"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Send</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-floppy-disk"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Floppy-disk</span></td>
							<td><span class="glyphicon glyphicon-floppy-saved"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Floppy-saved</span></td>
							<td><span class="glyphicon glyphicon-floppy-remove"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Floppy-remove</span></td>
							<td><span class="glyphicon glyphicon-floppy-save"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Floppy-save</span></td>
							<td><span class="glyphicon glyphicon-floppy-open"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Floppy-open</span></td>
							<td><span class="glyphicon glyphicon-credit-card"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Credit-card</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-transfer"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Transfer</span></td>
							<td><span class="glyphicon glyphicon-cutlery"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Cutlery</span></td>
							<td><span class="glyphicon glyphicon-header"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Header</span></td>
							<td><span class="glyphicon glyphicon-compressed"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Compressed</span></td>
							<td><span class="glyphicon glyphicon-earphone"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Earphone</span></td>
							<td><span class="glyphicon glyphicon-phone-alt"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Phone-alt</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-tower"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Tower</span></td>
							<td><span class="glyphicon glyphicon-stats"
								style="color: rgb(255, 140, 60); font-size: 18px;"> Stats</span></td>
							<td><span class="glyphicon glyphicon-sd-video"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sd-video</span></td>
							<td><span class="glyphicon glyphicon-hd-video"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Hd-video</span></td>
							<td><span class="glyphicon glyphicon-subtitles"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Subtitles</span></td>
							<td><span class="glyphicon glyphicon-sound-stereo"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sound-stereo</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-sound-dolby"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sound-dolby</span></td>
							<td><span class="glyphicon glyphicon-sound-dolby"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sound-dolby</span></td>
							<td><span class="glyphicon glyphicon-sound-5-1"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sound-5-1</span></td>
							<td><span class="glyphicon glyphicon-sound-6-1"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sound-6-1</span></td>
							<td><span class="glyphicon glyphicon-sound-7-1"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Sound-7-1</span></td>
							<td><span class="glyphicon glyphicon-copyright-mark"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Copyright-mark</span></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-registration-mark"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Registration-mark</span></td>
							<td><span class="glyphicon glyphicon-cloud-download"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Cloud-download</span></td>
							<td><span class="glyphicon glyphicon-cloud-upload"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Cloud-upload</span></td>
							<td><span class="glyphicon glyphicon-tree-conifer"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Tree-conifer</span></td>
							<td><span class="glyphicon glyphicon-tree-deciduous"
								style="color: rgb(255, 140, 60); font-size: 18px;">
									Tree-deciduous</span></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		resizeHeigt();
	});
	
	
</script>
</html>
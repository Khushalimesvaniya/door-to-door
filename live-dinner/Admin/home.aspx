﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left">
				<img src="image/home.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Door To Door Delivery Center </strong></h1>
							<p class="m-b-40">See how your users experience your website in realtime or view  <br> 
							trends to see any changes in performance over time.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Live Dinner Restaurant</strong></h1>
							<p class="m-b-40">See how your users experience your website in realtime or view  <br> 
							trends to see any changes in performance over time.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Yamifood Restaurant</strong></h1>
							<p class="m-b-40">See how your users experience your website in realtime or view  <br> 
							trends to see any changes in performance over time.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
</asp:Content>


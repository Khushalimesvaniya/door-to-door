﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="map-full"></div>
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Login</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="contactForm">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<%--<input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required data-error="Please enter your name">--%>
                                    <asp:TextBox ID="uname" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
									<div class="help-block with-errors"></div>
								</div>                                 
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<%--<input type="text" placeholder="Your Email" id="email" class="form-control" name="name" required data-error="Please enter your email">--%>
                                    <asp:TextBox ID="pass" class="form-control" runat="server" 
                                        placeholder="Your Password" TextMode="Password"></asp:TextBox>
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<%--<select class="custom-select d-block form-control" id="guest" required data-error="Please Select Person">
									  <option disabled selected>Please Select Person*</option>
									  <option value="1">1</option>
									  <option value="2">2</option>
									  <option value="3">3</option>
									  <option value="4">4</option>
									  <option value="5">5</option>
									</select>--%>
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							<div class="col-md-12">
								<%--<div class="form-group"> 
									<textarea class="form-control" id="message" placeholder="Your Message" rows="4" data-error="Write your message" required></textarea>
									<div class="help-block with-errors"></div>
								</div>--%>
								<div class="submit-button text-center">
									<%--<button class="btn btn-common" id="submit" type="submit">Send Message</button>--%>
                                    <asp:Button ID="Button1" runat="server" class="btn btn-common" Text="Login" 
                                        onclick="Button1_Click" />
									<div id="msgSubmit" class="h3 text-center hidden"></div> 
									<div class="clearfix"></div> 
								</div>
								
	
							</div>
							
						</div>            
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact -->
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Contact</h1>
				</div>
			</div>
		</div>
	</div>
	<br /><br />
    
	<!-- End All Pages -->
	&nbsp;&nbsp;
	<!-- Start Contact -->
	<div class="map-full"></div>
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Contact</h2>
						<p></p>
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
                                    <asp:TextBox ID="name" class="form-control" runat="server" placeholder="Your Name"></asp:TextBox>
									<div class="help-block with-errors"></div>
								</div>                                 
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<%--<input type="text" placeholder="Your Email" id="email" class="form-control" name="name" required data-error="Please enter your email">--%>
                                    <asp:TextBox ID="email"  class="form-control" runat="server" placeholder="Your Email"></asp:TextBox>
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							<%--<div class="col-md-12">
								<div class="form-group">
									<select class="custom-select d-block form-control" id="guest" required data-error="Please Select Person">
									  <option disabled selected>Please Select Person*</option>
									  <option value="1">1</option>
									  <option value="2">2</option>
									  <option value="3">3</option>
									  <option value="4">4</option>
									  <option value="5">5</option>
									</select>
									<div class="help-block with-errors"></div>
								</div> 
							</div>--%>
							<div class="col-md-12">
								<div class="form-group"> 
									<%--<textarea class="form-control" id="message" placeholder="Your Message" rows="4" data-error="Write your message" required></textarea>--%>
                                    <asp:TextBox ID="message"  runat="server" CssClass="form-control" placeholder="Message"></asp:TextBox>
                                    
									<%--<div class="help-block with-errors"></div>--%>
								</div>
								<div class="submit-button text-center">
									<%--<button class="btn btn-common" id="submit" type="submit">Send Message</button>--%>
                                    <asp:Button ID="submit"  runat="server" CssClass="btn btn-common"  
                                        Text="Send Message" onclick="submit_Click"/>
									<%--<div id="msgSubmit" class="h3 text-center hidden"></div> --%>
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


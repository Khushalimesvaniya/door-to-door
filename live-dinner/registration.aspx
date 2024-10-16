<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br><br><br><br><br>
    <div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Welcome To Our Website</h1>
				</div>
			</div>
		</div>
	</div>
<div class="reservation-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Registration</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
					<div class="contact-block">
						<form id="contactForm">
							<div class="row">
								<div class="col-md-6">
									<%-- <h3>Personal Details</h3>--%>
									<div class="col-md-12">
										<div class="form-group">
										<%--	<input id="input_date" class="datepicker picker__input form-control" name="date" type="text" value="" required data-error="Please enter Date">--%>
                                            <asp:TextBox ID="name" runat="server" class="datepicker picker__input form-control" placeholder="Your Name"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
									
									<div class="col-md-12">
										<div class="form-group">
											<%-- <input id="input_time" class="time form-control picker__input" required data-error="Please enter time">--%>
                                            <asp:TextBox ID="gender" class="time form-control picker__input" runat="server" placeholder="Gender"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
									
									<div class="col-md-12">
										<div class="form-group">
											<%-- <input id="input_time" class="time form-control picker__input" required data-error="Please enter time">--%>
                                            <asp:TextBox ID="address" class="time form-control picker__input" runat="server" placeholder="Address"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
									<div class="col-md-12">
										<div class="form-group">
										
											<asp:DropDownList ID="city" class="custom-select d-block form-control" runat="server" placeholder="Please select City">
                                                <asp:ListItem>Rajkot</asp:ListItem>
                                                <asp:ListItem>Ahmedabad</asp:ListItem>
                                                <asp:ListItem>Surat</asp:ListItem>
                                                <asp:ListItem>Mumbai</asp:ListItem>
                                                <asp:ListItem>Baroda</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                               
                                            </asp:DropDownList>
                                            
                                          
										
											<%--<select class="custom-select d-block form-control" id="person" required data-error="Please select Person">
											  <option disabled selected>Select Person*</option>
											  <option value="1">1</option>
											  <option value="2">2</option>
											  <option value="3">3</option>
											  <option value="4">4</option>
											  <option value="5">5</option>
											  <option value="6">6</option>
											  <option value="7">7</option>
											</select>--%>
											<div class="help-block with-errors"></div>
										</div> 
									</div>
									
									<div class="col-md-12">
										<div class="form-group">
											<%-- <input id="input_time" class="time form-control picker__input" required data-error="Please enter time">--%>
                                            <asp:TextBox ID="state" class="time form-control picker__input" runat="server" placeholder="state"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
								</div>
								<div class="col-md-6">
									<%--<h3>Contact Details</h3>--%>
									<div class="col-md-12">
										<div class="form-group">
											<%-- <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required data-error="Please enter your name">--%>
                                            <asp:TextBox ID="pincode" class="form-control" runat="server" placeholder="Pincode"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<%-- <input type="text" placeholder="Your Email" id="email" class="form-control" name="email" required data-error="Please enter your email">--%>
                                            <asp:TextBox ID="mo_no" class="form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div> 
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<%--<input type="text" placeholder="Your Numbar" id="phone" class="form-control" name="phone" required data-error="Please enter your Numbar">--%>
                                            <asp:TextBox ID="e_id" class="form-control" runat="server" placeholder="Email Id"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div> 
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<%--<input type="text" placeholder="Your Numbar" id="phone" class="form-control" name="phone" required data-error="Please enter your Numbar">--%>
                                            <asp:TextBox ID="uname" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div> 
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<%--<input type="text" placeholder="Your Numbar" id="phone" class="form-control" name="phone" required data-error="Please enter your Numbar">--%>
                                            <asp:TextBox ID="pass" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
											<div class="help-block with-errors"></div>
										</div> 
									</div>
								</div>
                               
								<div class="col-md-12">
									<div class="submit-button text-center">
										<%-- button class="btn btn-common" id="submit" type="submit">Book Table</button>--%>
                                        <asp:Button ID="submit" class="btn btn-common" runat="server" Text="Sign In" 
                                            onclick="submit_Click" />
										<div id="msgSubmit" class="h3 text-center hidden"></div> 
										<div class="clearfix"></div> 
									</div><br />
									 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login2.aspx" Font-Underline="True" Font-Size="Large" ForeColor="Black" style="margin-left:400px;">If you are already registered than click on <u>Login</u></asp:HyperLink>
								</div>
							</div>            
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>


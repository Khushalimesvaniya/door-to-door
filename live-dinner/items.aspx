<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="items.aspx.cs" Inherits="items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Special Menu</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lunch</</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Dinner</a>
					</div>
				</div>
				
				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								
                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellPadding="10">
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>
                                
                                <div class="col-lg-30 col-md-42  special-grid drinks">
									<div class="gallery-single fix">
                                        <asp:Image ID="Image1" runat="server" width="250px" Height="270px" ImageUrl='<% #Eval("i_image") %>'/>
										<div class="why-text">
											<h4>
                                               <%-- <asp:Label ID="Label1" runat="server" Text='<% #Eval("cat_nm") %>'></asp:Label></h4>--%>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl=<%# "~/item_detail.aspx?id=" + Eval("i_id") %> Text='<% #Eval("i_name") %>'>Hyperlink</asp:HyperLink>
											<p>
                                               <%-- <asp:Label ID="Label2" runat="server" Text='<% #Eval("description") %>'></asp:Label></p>--%>
										</div>
									</div>
								</div>
                                
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                                </asp:DataList>
                                
                                
								
							
							
							
							
							
							</div>
							
						</div>
						
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Menu -->
	<br>

</asp:Content>


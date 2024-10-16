<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Admin_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
<br /><br />
<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Welcome To Our Website</h1>
				</div>
			</div>
		</div>
	</div>
 <table style="margin-left:500px";>
<tr><td><label style="color: #000068; font-size: 30px; font-weight: bold; font-family: 'Century'; margin-left: 0px; ">Registration Details</label></td></tr>

  </table><br />

	
<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataKeyNames="r_id" EmptyDataText="No Data Found" 
        Width="600px" AutoGenerateColumns="False" style="margin-left:150px;" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="Registration Id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("r_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Gender"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("gender") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Address"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("address") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="City"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("city") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="State"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("state") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Pincode"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("pincode") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Mobile No."><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Eval("mo_no") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Email Id"><ItemTemplate><asp:Label ID="Label9" runat="server" Text='<%# Eval("e_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Username"><ItemTemplate><asp:Label ID="Label10" runat="server" Text='<%# Eval("uname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Password"><ItemTemplate><asp:Label ID="Label11" runat="server" Text='<%# Eval("pass") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br /><br />
  <%-- </form>--%>
</asp:Content>


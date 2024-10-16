<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="Admin_checkout" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
<tr><td><label style="color: #000068; font-size: 30px; font-weight: bold; font-family: 'Century'; margin-left: 0px; ">Checkout Details</label></td></tr>

  </table><br />
  
   <table style="margin-left:250px; width: 1000px;";>
   <tr><td>

<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataKeyNames="c_id" EmptyDataText="No Data Found" style="margin-right:230px;" 
        Width="900px" AutoGenerateColumns="False" BackColor="White" 
           BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <RowStyle ForeColor="#330099" BackColor="White" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="Checkout Id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("c_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Address"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="City"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("city") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="State"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("state") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Pincode"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("pincode") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Mobile No."><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("mo_no") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Email Id"><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Eval("e_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    </td>
    </tr>
    </table><br /><br />

</asp:Content>


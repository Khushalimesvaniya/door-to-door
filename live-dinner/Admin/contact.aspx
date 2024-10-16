<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Admin_contact" Title="Untitled Page" %>

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
<tr><td><label style="color: #000068; font-size: 30px; font-weight: bold; font-family: 'Century'; margin-left: 0px; ">Contact Details</label></td></tr>

  </table><br />
  
   <table style="margin-left:200px; width: 1117px;";>
   <tr><td>

<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataKeyNames="b_id" EmptyDataText="No Data Found" style="margin-right:230px;" 
        Width="900px" AutoGenerateColumns="False" BackColor="White" 
           BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <RowStyle ForeColor="#330099" BackColor="White" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="Name"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Email"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Message"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("message") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    </td>
    </tr>
    </table><br /><br />


</asp:Content>


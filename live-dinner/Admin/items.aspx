<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="items.aspx.cs" Inherits="Admin_items" Title="Untitled Page" %>

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
<tr><td><label style="color: #000068; font-size: 30px; font-weight: bold; font-family: 'Century'; margin-left: 0px; ">All Items</label></td></tr>

  </table><br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="6" style="margin-left:290px;" 
        DataKeyNames="i_id" EmptyDataText="No Data Found" 
        Width="800px" AutoGenerateColumns="False" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" >
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="i_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("i_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("i_name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("i_price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_image"><ItemTemplate><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("i_image") %>' Height="100" Width="100"/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="qty"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("qty") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="total_qty"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("total_qty") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_description"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("i_description") %>'></asp:Label></ItemTemplate></asp:TemplateField>
              <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpedit" runat="server" Text="Edit" NavigateUrl='<%# "~/admin/edititems.aspx?id=" + Eval("i_id")  %>' ImageUrl="~/image/edit3.png"></asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="addpro" runat="server" Text="Add Items" style="margin-left:570px;" 
     onclick="addpro_Click" class="btn btn-common" />
 
    <br /><br />
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="Addsubcategory.aspx.cs" Inherits="Admin_Addsubcategory" Title="Untitled Page" %>

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
    <table border="1" width="500" height="200" align="center">
    
    <tr><td colspan="2" align="center"><h3>Add Subcategory</h3></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Select Category Name"></asp:Label></td>
    <td><asp:DropDownList ID="ddlcat" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataTextField="cat_nm" DataValueField="cat_id" 
            onselectedindexchanged="ddlcat_SelectedIndexChanged"></asp:DropDownList></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Subcategory Name"></asp:Label></td>
    <td><asp:TextBox ID="txtscat" runat="server"></asp:TextBox></td></tr>
    <tr><td width="100"><asp:Label ID="Label3" runat="server" Text="Subcategory image"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload" runat="server" /></asp:TextBox></td></tr>
    <tr><td colspan="2" align="center"><asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click" /></td></tr>
    
    </table>

<br /><br />
</asp:Content>


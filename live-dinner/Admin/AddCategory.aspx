<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Admin_AddCategory" %>

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
        <tr><td colspan="2" align="center"><h2><b>Add Category</b></h2></td></tr>
        
        <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label></td>
            <td><asp:TextBox ID="txtcat" runat="server"></asp:TextBox></td></tr>
         <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Category image"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /></asp:TextBox></td></tr>
                
         <tr><td width="100"><asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></td>
            <td><asp:TextBox ID="txtdesc" runat="server"></asp:TextBox></td></tr>
        
        <tr><td colspan="2" align="center"><asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click" /></td></tr>
    </table>
<br /><br />
</asp:Content>


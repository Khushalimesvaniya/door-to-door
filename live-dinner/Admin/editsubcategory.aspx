<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="editsubcategory.aspx.cs" Inherits="Admin_editsubcategory" Title="Untitled Page" %>

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
        <tr><td colspan="2" align="center"><h3>Edit Subcategory</h3></td></tr>
        
        <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Subcategory Name"></asp:Label></td>
            <td><asp:TextBox ID="txtsubcat" runat="server" Text=""></asp:TextBox></td></tr>
        <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Subcategory image"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /></asp:TextBox></td></tr>

        <tr><td colspan="2" align="center">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:Button ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click" /></td></tr>
    </table>
<br /><br />
</asp:Content>


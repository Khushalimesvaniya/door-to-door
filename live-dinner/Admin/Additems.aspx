<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="Additems.aspx.cs" Inherits="Admin_Additems" Title="Untitled Page" %>

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
	 
     <table border="1" width="600" height="500" align="center">
    
    <tr><td colspan="2" align="center" style="margin-left:200px"><h3>Add Items</h3></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Select Category Name"></asp:Label></td>
    <td>
       
       
                <asp:DropDownList ID="ddlcat" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataTextField="cat_nm" DataValueField="cat_id" 
            onselectedindexchanged="ddlcat_SelectedIndexChanged">
                </asp:DropDownList>
           
        
        </td></tr>
            
    <tr><td width="100"><asp:Label ID="Label3" runat="server" Text="Select Subcategory Name"></asp:Label></td>
    <td><asp:DropDownList ID="ddlsubcat" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="sub_nm" DataValueField="sub_id"></asp:DropDownList></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label></td>
    <td><asp:TextBox ID="txtiname" runat="server"></asp:TextBox></td></tr>

    <tr><td width="100"><asp:Label ID="Label4" runat="server" Text="Item Price"></asp:Label></td>
    <td><asp:TextBox ID="txtiprice" runat="server"></asp:TextBox></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label6" runat="server" Text="Item Image"></asp:Label></td>
    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label></td>
    <td><asp:TextBox ID="txtqty" runat="server"></asp:TextBox></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label7" runat="server" Text="Total Quantity"></asp:Label></td>
    <td><asp:TextBox ID="txttotalqty" runat="server"></asp:TextBox></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label8" runat="server" Text="Description"></asp:Label></td>
    <td><asp:TextBox ID="txtidesc" runat="server"></asp:TextBox></td></tr>
    
    <tr><td colspan="2" align="center">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click" /></td></tr>
    
    </table>

<br /><br />
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="edititems.aspx.cs" Inherits="Admin_edititems" Title="Untitled Page" %>

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
        <tr><td colspan="2" align="center"><h3>Edit Items</h3></td></tr>
        
        <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label></td>
            <td><asp:TextBox ID="txtiname" runat="server" Text=""></asp:TextBox></td></tr>
            
          <tr><td width="100"><asp:Label ID="Label3" runat="server" Text="Item price"></asp:Label></td>
            <td><asp:TextBox ID="txtiprice" runat="server" Text=""></asp:TextBox></td></tr>  
            
        <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Item image"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /></asp:TextBox></td></tr>
            
            <%--<tr><td width="100"><asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label></td>
            <td><asp:TextBox ID="txtqty" runat="server" Text=""></asp:TextBox></td></tr>
            
             <tr><td width="100"><asp:Label ID="Label6" runat="server" Text="Total Quantity"></asp:Label></td>
            <td><asp:TextBox ID="txttotalqty" runat="server" Text=""></asp:TextBox></td></tr>--%>

 
 
           <tr><td width="100" valign="top"><asp:Label ID="Label4" runat="server" Text="Description"></asp:Label></td>
            <td><asp:TextBox ID="txtidesc" runat="server" Text="" Height="144px" 
                    TextMode="MultiLine" Width="309px"></asp:TextBox></td></tr>

        <tr><td colspan="2" align="center">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:Button ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click" /></td></tr>
    </table>
<br /><br />
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="editcart.aspx.cs" Inherits="editcart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="frm1" runat="server">--%>
<table height="450" width="400" align="center">
<tr><td colspan="2" align="center"><h1>Edit Category</h1></td></tr>

<tr><td><asp:Label ID="Label1" runat="server" Text="Item Id"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpro_id" runat="server" Text=""></asp:Label></td></tr>

<tr><td><asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblname" runat="server" Text=""></asp:Label></td></tr>

<tr><td><asp:Label ID="Label3" runat="server" Text="Item Price"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblprice" runat="server" Text=""></asp:Label></td></tr>

<tr><td><asp:Label ID="Label4" runat="server" Text="Enter Quantity"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtquantity" runat="server"></asp:TextBox></td></tr>

<tr><td><asp:Label ID="Label7" runat="server" Text="Total Amount"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblamount" runat="server" Text=""></asp:Label></td></tr>

<tr><td valign="top"><asp:Label ID="Label9" runat="server" Text="Image"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" height="200" Width="200"/></td></tr>


<tr><td colspan="2" align="center">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Button ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click" /></td></tr>
</table>
<%--</form>--%>

</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="item_detail.aspx.cs" Inherits="item_detail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br />

<%--<form id="frm1" runat="server">--%>
<table height="500" width="700" border="3" align="center" style="border-color:White">
<tr><th colspan="3" align="center" style="font-size:x-large"><center>Item Details</center> </th></tr>
<tr><td rowspan="6" align="center" valign="middle"><asp:Image ID="Image1" runat="server" Height="150" Width="150" />
    <asp:HiddenField ID="hdnscat" runat="server" />
    <asp:HiddenField ID="hdncat" runat="server" />
    </td>
<td><asp:Label ID="Label1" runat="server" Text="<b>Product Id</b>"></asp:Label></td>
<td><asp:Label ID="lblpro_id" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label3" runat="server" Text="<b>Item name</b>"></asp:Label></td>
<td><asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label5" runat="server" Text="<b>Price</b>"></asp:Label></td>
<td><asp:Label ID="lbl_price" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label7" runat="server" Text="<b>Description</b>"></asp:Label></td>
<td><asp:Label ID="lbl_dec" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label2" runat="server" Text="<b>Quantity</b>"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server" Text="1"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2" align="center"><asp:Button ID="Button1" runat="server" class="btn btn-common"
        Text="Add to cart" onclick="Button1_Click" style="margin-right:200px;"/></td>
</tr></table>
<%--</form>--%>
<br /><br /><br />

</asp:Content>


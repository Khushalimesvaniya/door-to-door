<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="shipping.aspx.cs" Inherits="shipping" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="form1" runat="server">--%>
<br /><br />
   <center> All payment details </center>
    <br />
    <br />
<%--<asp:Button ID="btn_billnow" runat="server" onclick="btn_billnow_Click" Text="Bill Now" />--%>
<center><asp:Button ID="btn_billnow" class="btn btn-common" 
            runat="server" Text="Bill Now" onclick="btn_billnow_Click" /></center>
<%--</form>--%>
<br /><br />
</asp:Content>


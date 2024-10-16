<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Thank You.aspx.cs" Inherits="Thank_You" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />
    <asp:Image ID="Image1" runat="server" style="margin-left:300px" ImageUrl="~/image/thanks.jpg" /><br /><br />
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/feedback1.aspx" Font-Underline="True" Font-Size="Large" ForeColor="Black" style="margin-left:400px;"><b>Do You Want To Give Feedback</b> <u>Feedback?</u></asp:HyperLink>
<br /><br />
</asp:Content>


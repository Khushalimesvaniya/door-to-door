<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br />

<%--<form id="form1" runat="server">--%>
    <table style="margin-left:300px; margin-right:500">
    <tr><td colspan="2">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            DataKeyNames="cart_id" EmptyDataText="No Data Found" 
        Width="700px" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
           >
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="i_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("i_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("i_name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("i_price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="qty"><ItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("qty") %>' Width="30" ontextchanged="TextBox1_TextChanged"></asp:TextBox></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="amount"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("amount") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_image"><ItemTemplate><asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("i_image") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpflat" runat="server" NavigateUrl='<%# "~/editcart.aspx?id=" + Eval("cart_id")  %>' ImageUrl="~/image/edit3.png">Edit</asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
        </asp:GridView>
<%--<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="cartid" EmptyDataText="No Data Found" 
        Width="300" AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="i_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("i_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("i_name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("i_price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="qty"><ItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("qty") %>' Width="30" ontextchanged="TextBox1_TextChanged"></asp:TextBox></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="amount"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("amount") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_image"><ItemTemplate><asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("i_image") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpflat" runat="server" NavigateUrl='<%# "~/editcart.aspx?id=" + Eval("cartid")  %>' ImageUrl="~/images/editimage.jpg">Edit</asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>--%></td></tr>
    
    <tr><td align="center" valign="middle">
        <br /><asp:Label ID="Label5" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label>
        <br />
        <br /></td>
        <td align="center"><asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
     
    <tr><td colspan="2" align="center"><br /><asp:Button ID="btn_payment" class="btn btn-common"
            runat="server" Text="Payment" onclick="btn_payment_Click" /><br /></td> </tr>
        
           
    </table><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cat.aspx" Font-Bold="True" Font-Size="Large" ForeColor="Black" style="margin-left:570px;">Countinue Order?</asp:HyperLink>
    <%--</form>--%>
    <br /><br /><br />
</asp:Content>


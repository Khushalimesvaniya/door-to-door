<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="cat.aspx.cs" Inherits="Admin_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="form1" runat="server">--%>
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
 <table style="margin-left:500px";>
<tr><td><label style="color: #000068; font-size: 30px; font-weight: bold; font-family: 'Century'; margin-left: 0px; ">View Category</label></td></tr>

  </table><br />
<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataKeyNames="cat_id" EmptyDataText="No Data Found" 
        Width="800px" AutoGenerateColumns="False" style="margin-left:200px;" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="cat_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="cat_nm"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("cat_nm") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="cat_img"><ItemTemplate><asp:Image ID="Image1" runat="server" width="100px" Height="100px" ImageUrl='<% #Eval("cat_img") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="description"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpedit" runat="server" NavigateUrl='<%# "~/admin/editcategory.aspx?id=" + Eval("cat_id")  %>' ImageUrl="~/image/edit3.png"></asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <%--<asp:Button ID="addcat" class="btn btn-common"runat="server" Text="Add category" 
     onclick="addcat_Click" />--%>
    <asp:Button ID="Button1" runat="server" style="margin-left:490px;" Text="Add New Category" class="btn btn-common" onclick="addcat_Click" />
  <%-- </form>--%>
  <br /><br />
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage1.master" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="Admin_subcategory" Title="Untitled Page" %>

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
 <table style="margin-left:550px";>
<tr><td><label style="color: #000068; font-size: 30px; font-weight: bold; font-family: 'Century'; margin-left: 0px; ">View Subcategory</label></td></tr>

  </table><br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" style="margin-left:350px;"
        DataKeyNames="sub_id" EmptyDataText="No Data Found" 
        Width="650px" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <Columns>
             <asp:TemplateField HeaderText="Subcategory Id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("sub_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Category Id"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Subcategory Name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("sub_nm") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Subcategory Image"><ItemTemplate><asp:Image ID="Image1" runat="server" Height=100px Width=100px ImageUrl='<%# Eval("sub_img") %>' /></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpedit" runat="server" NavigateUrl='<%# "~/admin/editsubcategory.aspx?id=" + Eval("sub_id")  %>' AlternativeText="Edit" ImageUrl="~/image/edit3.png"></asp:HyperLink></ItemTemplate></asp:TemplateField>

             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/image/delete3.png" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <%--<asp:Button ID="addsubcat" runat="server" Text="Add subcategory" onclick="addsubcat_Click"  />--%>
     <asp:Button ID="addsubcat" runat="server" style="margin-left:570px;" Text="Add New Subcategory" class="btn btn-common" onclick="addsubcat_Click" />
<br /><br />
</asp:Content>


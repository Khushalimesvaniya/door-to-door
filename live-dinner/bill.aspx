<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!DOCTYPE html>
<br /><br />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Your Bill</title>
        <h1><center><b>Your Billing Details</b></center></h1><br />
    <style type="text/css" media="screen">
        body {
            background-color:White;
            font-family: Verdana;
        }

        header {
            margin-top: 40px;
        }

        footer {
            background-color: #ffffff;
        }

        div.invoice {
            background-color: #ffffff;
            border: 3px solid black;
            height: 600pt;
            margin-left: auto;
            margin-right: auto;
            padding: 10px;
            width: 595pt;
        }

        div.company-address {
            border: 1px solid #ccc;
            float: left;
            width: 200pt;
        }

        div.invoice-details {
            border: 1px solid #ccc;
            float: right;
            width: 200pt;
        }

        div.customer-address {
            border: 1px solid #ccc;
            float: right;
            margin-bottom: 50px;
            margin-top: 100px;
            width: 200pt;
        }

        div.item-table-panel {
            height: 460pt;
        }

        div.clear-fix {
            clear: both;
            float: none;
        }

        table.item-table {
            border: 1px solid #ccc;
            width: 100%;
        }

        table.footer-table {
            border: 1px solid #ccc;
            margin-top: 20pt;
            bottom: 0;
            width: 100%;
        }

        th {
            border: 1px solid #ccc;
            text-align: left;
        }

            th.description {
                width: 380px;
            }

            th.amount {
                text-align: center;
                width: 80px;
            }

            th.unit-price {
                text-align: right;
                width: 100px;
            }

            th.total-price {
                text-align: right;
                width: 100px;
            }

        tr {
        }

        td {
            border-bottom: 1px solid #ccc;
        }

            td.totals {
                background-color: #ffffff;
                text-align: right;
                width: 110px;
            }

        .text-left {
            text-align: left;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }
    </style>
    <style type="text/css" media="print">
        body {
            background-color: #ffffff;
            font-family: Verdana;
        }

        header {
            margin-top: 40px;
        }

        footer {
            background-color: #ffffff;
        }

        div.invoice {
            background-color: #ffffff;
            border:3px solid black;
            height: 600pt;
            margin-left: 0;
            margin-right: 0;
            padding: 10px;
            width: 595pt;
        }

        div.company-address {
            border: 1px solid #ccc;
            float: left;
            width: 200pt;
        }

        div.invoice-details {
            border: 1px solid #ccc;
            float: right;
            width: 200pt;
        }

        div.customer-address {
            border: 1px solid #ccc;
            float: right;
            margin-bottom: 50px;
            margin-top: 100px;
            width: 200pt;
        }

        div.item-table-panel {
            height: 460pt;
        }

        div.clear-fix {
            clear: both;
            float: none;
        }

        table.item-table {
            border: 1px solid #ccc;
            width: 100%;
        }

        table.footer-table {
            border: 1px solid #ccc;
            margin-top: 20pt;
            bottom: 0;
            width: 100%;
        }

        th {
            border: 1px solid #ccc;
            text-align: left;
        }

            th.description {
                width: 380px;
            }

            th.amount {
                text-align: center;
                width: 80px;
            }

            th.unit-price {
                text-align: right;
                width: 100px;
            }

            th.total-price {
                text-align: right;
                width: 100px;
            }

        tr {
        }

        td {
            border-bottom: 1px solid #ccc;
        }

            td.totals {
                background-color: #ffffff;
                text-align: right;
                width: 110px;
            }

        .text-left {
            text-align: left;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }
    </style>
</head>
<body>
        <div class="invoice">
            <header>
                <div class="company-address">
                    Company ltd
                <br />
                    123 Road Street
                <br />
                    New York, NY 987
                <br />
                    USA
                <br />
                </div>
                <div class="invoice-details">
                    <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  --%>                  Invoice N°: 6541
                <br />
                    Date: 19/06/2015
                </div>
            </header>
            <section>
                <div class="customer-address">
                    To:
			    <br />
                    Mr. Surname Name
			    <br />
                    777 Street Avenue
			    <br />
                    New York, NY 654 
			    <br />
                </div>
            </section>
            <div class="clear-fix">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="100%">
                <Columns>
             <asp:TemplateField HeaderText="uname"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("uname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_id"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("i_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_name"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("i_name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="i_price"><ItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("i_price") %>' Width="30"></asp:TextBox></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="qty"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("qty") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="total"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("total") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="date"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("date") %>'></asp:Label></ItemTemplate></asp:TemplateField>
 
             <%--<asp:TemplateField HeaderText="i_image"><ItemTemplate><asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("i_image") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpflat" runat="server" NavigateUrl='<%# "~/editcart.aspx?id=" + Eval("cart_id")  %>' ImageUrl="~/images/editimage.jpg">Edit</asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
--%>        </Columns>
        </asp:GridView>
        <tr><td align="center" valign="middle"><br /><asp:Label ID="Label5" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label><br /><br /></td>
        <td align="center"><asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
                
                    </div>
            <section>
                <div class="item-table-panel"><br /><br />
                 <asp:Button ID="Button1" runat="server" Text="Checkout" class="btn btn-common"  OnClick="checkout_click" />
                
                    <%--<table border='0' cellspacing='0' class="item-table">
                        <tr>
                            <th class="description">Description</th>
                            <th class="amount">Amount</th>
                            <th class="unit-price">Unit price</th>
                            <th class="total-price">Total price</th>
                        </tr>
                        <%
                            String[,] articles = new String[,]{ {"Case", "1", "65"},
                                                            {"Motherboard", "1", "80"},
                                                            {"CPU", "1", "180"},
                                                            {"RAM", "2", "60"},
                                                            {"Hard Disk", "1", "50"},
                                                            {"Hard Disk", "1", "80"},
                                                            {"Monitor", "1", "120"},
                                                            {"Installation", "3", "30"}
                                                            };
                            double total = 0.0;
                            double unitPrice = 0.0;
                            double totalPrice = 0.0;
                            int amount = 0;
                            int vat = 10;
                            String description = String.Empty;

                            for (int a = 0; a < articles.Length / 3; a++)
                            {
                                description = articles[a, 0];
                                amount = Int32.Parse(articles[a, 1]);
                                unitPrice = Double.Parse(articles[a, 2]);
                                totalPrice = (double)(amount * unitPrice);
                                total += totalPrice;
                                Response.Write("<tr>");
                                Response.Write("<td>" + description + "</td>");
                                Response.Write("<td class='text-center'>" + amount + "</td>");
                                Response.Write("<td class='text-right'>" + String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C2}", unitPrice) + "</td>");
                                Response.Write("<td class='text-right'>" + String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C2}",totalPrice) + "</td>");
                                Response.Write("</tr>");
                            }
                        %>
                    </table>--%>
                </div>
            </section>
            <footer>
                <%--<table border='0' cellspacing='0' class="footer-table">
                    <%
                        Response.Write("<tr>");
                        Response.Write("<td class='text-right'>Sub total</td>");
                        Response.Write("<td class='totals'>" + String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C2}", total) + "</td>");
                        Response.Write("</tr>");
                        Response.Write("<tr>");
                        Response.Write("<td class='text-right'>VAT</td>");
                        Response.Write("<td class='totals'>" + String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C2}", ((total * vat) / 100)) + "</td>");
                        Response.Write("</tr>");
                        Response.Write("<tr>");
                        Response.Write("<td class='text-right'><b>TOTAL</b></td>");
                        Response.Write("<td class='totals'><b>" + String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C2}", (((total * vat) / 100) + total)) + "</b></td>");
                        Response.Write("</tr>");
                    %>
                </table>--%>
            </footer>
           
        </div>
</body>
</html>
<br /><br />
</asp:Content>


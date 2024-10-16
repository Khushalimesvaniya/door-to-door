<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="feedback1.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
 <html >
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            background-color: #99FF66;
        }
        .auto-style4 {
            width: 664px;
        }
        .style1
        {
            height: 36px;
        }
        .style2
        {
            height: 41px;
        }
    </style>
</head>

<body>
    <form id="form1" align="center" >
    <div>
        <fieldset style="width: 40%;">
            <legend class="auto-style2"><strong><span class="auto-style3">Online Feedback Form</span></strong></legend>
            <table cellpadding="2" cellspacing="5" class="auto-style4" >
                <tr>
                    <td width="80px">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="80px" class="style2">
                        <span class="auto-style1"><em><strong>Name</strong></em></span><span style="color: #CC3300" class="auto-style1"><em><strong> </strong></em></span>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Name Required" ForeColor="#FF3300"
                            ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><em><span class="auto-style1">Subject </span></em></strong>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Subject Required" ForeColor="#FF3300"
                            ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="auto-style1"><strong>E-Mail</strong></span><span style="color: #CC3300" class="auto-style1"><strong> </strong></span>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="Email Required" ForeColor="#FF3300"
                            ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ErrorMessage="Not a vailed email" ControlToValidate="txtEmail"
                            ForeColor="#FF3300"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong></strong>
                    </td>
                    <td>
                        <strong>How satisfied are you with our product</strong></td>
                </tr>
                <tr>
                    <td class="style1">
                        </td>
                    <td class="style1">
                       <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="292px">
                            <asp:ListItem>Very Satified</asp:ListItem>
                            <asp:ListItem>Neutral</asp:ListItem>
                            <asp:ListItem>Unsatisfied</asp:ListItem>
                        </asp:RadioButtonList>--%>
                        <asp:Panel ID="product" runat="server">
                            <asp:RadioButton ID="rbpvs" Text="Very Satified" runat="server" />
                            <asp:RadioButton ID="rbpn" Text="Neutral" runat="server" />
                            <asp:RadioButton ID="rbpu" Text="Unsatisfied" runat="server" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <strong>How satisfied are you with our support</strong></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
<%--                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="337px">
                            <asp:ListItem>Very Satisfied</asp:ListItem>
                            <asp:ListItem>Neutral</asp:ListItem>
                            <asp:ListItem>Unsatified</asp:ListItem>
                        </asp:RadioButtonList>--%>
                        <asp:Panel ID="support" runat="server">
                            <asp:RadioButton ID="rbsvs" runat="server" Text="Very Satisfied"/>
                            <asp:RadioButton ID="rbsn" runat="server" Text="Neutral"/>
                            <asp:RadioButton ID="rbsu" runat="server" Text="Unsatified"/>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="auto-style1"><strong>Inquiry</strong></span><span style="color: #CC3300"> </span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtinquiry" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit Form" Width="100px" OnClick="btnSubmit_Click1" />--%>
                        <asp:Button ID="btnsubmit" class="btn btn-common" runat="server" Text="Submit" Width="126px" 
                            OnClick="btnSubmit_Click1"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    </form>
</body>
</html>

</asp:Content>


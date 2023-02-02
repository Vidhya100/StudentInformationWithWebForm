<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentInfo.aspx.cs" Inherits="StudentInfoWithWebFroms.studentInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 393px;
        }
        .auto-style5 {
            width: 393px;
            height: 29px;
        }
        .auto-style9 {
            width: 393px;
            height: 8px;
        }
        .auto-style12 {
            width: 674px;
            height: 8px;
        }
        .auto-style13 {
            width: 674px;
        }
        .auto-style14 {
            width: 674px;
            height: 29px;
        }
        .auto-style15 {
            margin-left: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="Ibltitle" runat="server" Text="Student Information" Font-Bold="True" Font-Size="20pt"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtName" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td colspan="2" rowspan="11">
                    <asp:GridView ID="dgViewStudents" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource2" Height="238px" Width="347px" OnSelectedIndexChanged="dgViewStudents_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0:MM/dd/yyyy}"/>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentInfo_Details_WebFormConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtEmail" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddlGender" runat="server" Width="270px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="Choose Any">Choose Any</asp:ListItem>
                        <asp:ListItem >Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem >Other</asp:ListItem>                         
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblBirthDate" runat="server" Text="BirthDate"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtDOB" runat="server" Width="270px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">
                    <asp:CheckBox ID="chkBoxAgree" runat="server" Font-Bold="True" ForeColor="Black" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Yes,I Agree" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblSID" runat="server" Width="178px"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="90px" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="91px" OnClick="btnUpdate_Click" />
                    <asp:Button ID="dtnDelete" runat="server" Text="Delete" Width="90px" OnClick="dtnDelete_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="btnCancle" runat="server" Text="Cancle" Width="244px" CssClass="auto-style15" OnClick="btnCancle_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

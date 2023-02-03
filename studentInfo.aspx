<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentInfo.aspx.cs" Inherits="StudentInfoWithWebFroms.studentInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        body{
            overflow:hidden;
        }
        .auto-style1 {
            width: auto;
            margin-top:50px;
            margin-left:100px;
            border: 1px solid grey;
            border-radius: 25px;

            padding-top:20px;
            padding-left:20px;
            padding-right:20px;
            padding-bottom: 20px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
           
        }
        .auto-style4 {
            width: 283px;
        }
        .auto-style5 {
            width: 283px;
            height: 29px;
        }
        .auto-style9 {
            width: 283px;
            height: 8px;
        }
        .auto-style12 {
            width: 478px;
            height: 8px;
        }
        .auto-style13 {
            width: 478px;
            padding:unset;
        }
        .auto-style14 {
            width: 478px;
            height: 29px;
        }
        .auto-style15 {
            margin-left: 53px;
        }
        .auto-style16 {
            margin-left: 91px;
        }
        .auto-style17 {
            height: 17px;
        }
        .auto-style18 {
            height: 10px;
        }
    </style>
</head>
<body>

   
      <form id="form1" runat="server">
        <table class="auto-style1">
            <div class="table">
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
                    <asp:TextBox ID="txtName" runat="server" Width="270px" Height="25px"></asp:TextBox>
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
                    <asp:TextBox ID="txtEmail" runat="server" Width="270px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddlGender" runat="server" Width="274px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="30px">
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
                    <asp:TextBox ID="txtDOB" runat="server" Width="270px" TextMode="Date" Height="28px"></asp:TextBox>
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
                <td class="auto-style18" colspan="2">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="134px" OnClick="btnAdd_Click" BackColor="#0099FF" BorderStyle="None" CssClass="auto-style16" Height="40px" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="132px" OnClick="btnUpdate_Click" BackColor="#0099FF" BorderStyle="None" Height="40px" />
                    <asp:Button ID="dtnDelete" runat="server" Text="Delete" Width="134px" OnClick="dtnDelete_Click" BackColor="#0099FF" BorderStyle="None" Height="40px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="2">
                    <asp:Button ID="btnCancle" runat="server" Text="Reset" Width="508px" CssClass="auto-style15" OnClick="btnCancle_Click" BackColor="#CCCCCC" BorderStyle="None" ForeColor="Black" Height="35px" />
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
            </div>
        </table>
    </form>


    
</body>
</html>

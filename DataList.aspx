<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="SampleASP.DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.auto-style1
{
margin-left: 80px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
<h2 style="color:black; " class="auto-style1">EMPLOYEE DETAILS</h2>
</div>
<asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Names="Times New Roman" ForeColor="Black" RepeatColumns="3" Width="868px">

<ItemTemplate>
    Empid:
<asp:Label ID="EmpidLabel" runat="server" Text='<%# Eval("empid") %>' />
<br />
    Empname:
<asp:Label ID="EmpnameLabel" runat="server" Text='<%# Eval("empname") %>' />
    <br />
    Designation:
<asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
<br />
    Mobile:
<asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
<br /> 
<br />

</ItemTemplate>

</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [empid], [empname], [designation], [mobile] FROM [emp28]"></asp:SqlDataSource>
        
        <asp:DataList ID="DataList2" runat="server" BackColor="#99CCFF" BorderColor="Blue" BorderStyle="Double" DataKeyField="empid" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Italic="True" ForeColor="#6600FF" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                empid:
                <asp:Label ID="empidLabel" runat="server" Text='<%# Eval("empid") %>' />
                <br />
                empname:
                <asp:Label ID="empnameLabel" runat="server" Text='<%# Eval("empname") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT DISTINCT [empid], [empname] FROM [Emp28] WHERE ([designation] = @designation)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Trainer" Name="designation" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="TRAINER DETAILS" />
        
    </form>
    
</body>
</html>

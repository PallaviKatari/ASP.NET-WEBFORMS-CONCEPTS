<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SampleASP.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="gvProducts" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="EmpName" HeaderText="Employee Name" />
        <asp:HyperLinkField DataNavigateUrlFormatString="~/Addtocart.aspx?Id={0}" DataNavigateUrlFields="empid"
            Text="View Details" HeaderText="Details" />
    </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>

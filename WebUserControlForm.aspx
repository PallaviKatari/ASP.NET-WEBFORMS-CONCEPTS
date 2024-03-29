<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlForm.aspx.cs" Inherits="SampleASP.WebUserControlForm" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
            <asp:Button ID="Button1" runat="server" Text="Dynamic user Control" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>

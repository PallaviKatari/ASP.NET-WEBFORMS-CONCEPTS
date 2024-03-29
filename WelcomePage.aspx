<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="SampleASP.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Hi
        <asp:LoginName ID="LoginName1" runat="server" />
            </p>
            <p>
                <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" />
            </p>
            <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ChangePassword.aspx" Text="Change Password"></asp:HyperLink>
                    <br />
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </form>
</body>
</html>

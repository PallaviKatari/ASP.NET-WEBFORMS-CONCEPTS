<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SampleASP.Login" %>

<%@ Register Src="demousercontrol.ascx" TagName="demousercontrol" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" Text="Register"></asp:HyperLink><br />            </AnonymousTemplate>
        </asp:LoginView>
        <p>
            Important:aspnet_regsql.exe
        </p>
        <p>
            Forms Authentication
        </p>
        <p>
            Windows Authentication
        </p>
        <p>
            Passport Authentication
        </p>
        <uc1:demousercontrol ID="demousercontrol1" runat="server" />
        <asp:LoginView ID="LoginView2" runat="server">
            <LoggedInTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" Text="Register"></asp:HyperLink>
            </LoggedInTemplate>
        </asp:LoginView>
    </form>
</body>
</html>

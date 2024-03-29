<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrosspagePosting.aspx.cs" Inherits="SampleASP.CrosspagePosting" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CROSS PAGE POSTING</title>
</head>
<body>
    <form id="form1" runat="server">
         <div align="center">  
  
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>    
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox><br />  
  
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>      
            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>  
  
            <br />  
  
            <asp:Button ID="Button1" runat="server" Text="Log In" PostBackUrl="~/CrossPagePosting1.aspx" OnClick="Button1_Click" />  
  
        </div>  
    </form>
</body>
</html>

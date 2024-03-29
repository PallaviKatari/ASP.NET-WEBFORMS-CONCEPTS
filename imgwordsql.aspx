<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imgwordsql.aspx.cs" Inherits="SampleASP.imgwordsql" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />

<br />

        </div>
        <p>

<asp:Button ID="btnUpload" runat="server" Text="Upload"

OnClick="btnUpload_Click" />

        </p>
        <p>

<asp:Label ID="lblMessage" runat="server" Text=""

Font-Names = "Arial"></asp:Label>
        </p>
    </form>
</body>
</html>

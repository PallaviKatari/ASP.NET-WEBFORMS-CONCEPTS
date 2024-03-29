<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Substitution.aspx.cs" Inherits="SampleASP.Substitution" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        <asp:ScriptReference Name="bootstrap" />
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Substitution control in ASP.NET is used to call a method that's return a string in an output-cached page. 
            A developer can place a substitution on page and use string method for CallBack. 
            In this example the simple time label shows the time. 
            But in the Substitution it call the GetDate method for showing the time.
        </div>
         <div>
        <h2 style="color: Green">
Substitution Control</h2>
Time:
<% = DateTime.Now.ToString() %>
<br />
<br />
<strong>Time in Substitution:</strong>
<asp:Substitution ID="Substitution1" runat="server" MethodName="GetTime" />
</div>
        <br />
        <div style="text-align: center;">
    <span class="label label-primary">Technologies <span class="badge ">10</span></span>  
    <span class="label label-success">Location <span class="badge ">5</span></span>  
    <span class="label label-info">Onsight <span class="badge ">2</span></span> 
 
</div>
    </form>
</body>
</html>

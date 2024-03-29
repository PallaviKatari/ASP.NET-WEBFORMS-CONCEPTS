<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotator.aspx.cs" Inherits="SampleASP.AdRotator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h5 style="color:blueviolet;text-align:center;font-size:larger">ADROTATOR CONTROL</h5>

        </div>
        <p>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XML/adrotator.xml" Height="200px" Width="200px" />
        </p>
        <br />
        <br />
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>  
    <p>  
    This is a Ajax Based SlideShow using ASP.Net Adrotator Control.  
    </p><br />  
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">  
    <Triggers>  
    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />  
    </Triggers>  
    <ContentTemplate>  
    <asp:Timer ID="Timer1" Enabled="true" Interval="2000" runat="server"  
            ontick="Timer1_Tick"></asp:Timer>  
    <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource1" Height="200px" Width="200px" />  
        <br />  
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML/adrotator.xml">  
        </asp:XmlDataSource>  
        <br /> 
       
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>  
    </ContentTemplate>  
    </asp:UpdatePanel>  
    </div> 
      

       
        
    </form>
</body>
</html>

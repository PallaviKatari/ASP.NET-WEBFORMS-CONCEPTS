<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Controls.aspx.cs" Inherits="SampleASP.Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">  
        .auto-style1 
        {  
            width: 100%; 
            color:aqua;
        }  
        .auto-style2 
        {  
            margin-left: 0px;  
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }  
        .auto-style3 
        {  
            width: 121px; 
            color:blueviolet;
        }  
         .auto-style4
         {  
            font-family:Chiller;
            color:crimson;
            }  
         .bullet
         {
             color:darkblue;
         }
    </style>  
</head>
<body>
     <form id="form1" runat="server">  
        <div>  
           <h4>Provide the Following Details:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </h4>  
            <table class="auto-style1">  
                <tr>  
                    <td class="auto-style3">  
                        
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" ToolTip="Enter Username"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label2" runat="server" Text="Upload a File"></asp:Label></td>  
                    <td>  
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Upload File" />
                        <asp:Label ID="FileUpload_Msg" runat="server" Text="Label"></asp:Label>
                        
                    </td>  
                </tr>  
                 <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label3" runat="server" Text="Welcome"></asp:Label></td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                      <asp:HyperLink ID="HyperLink1" runat="server" Text="G2" NavigateUrl="https://www.g2techsoft.com" ></asp:HyperLink>     
                    
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Response.Redirect" />
                    
                    </td>  
                </tr> 
                
            </table>          
        </div> 
         <asp:RadioButtonList ID="RadioButtonList_New" runat="server" CssClass="auto-style4" OnSelectedIndexChanged="RadioButtonList_New_SelectedIndexChanged" RepeatDirection="Horizontal">
<asp:ListItem Value="1">Red</asp:ListItem>
<asp:ListItem Value="2">Green</asp:ListItem>
<asp:ListItem Value="3">Blue</asp:ListItem>
<asp:ListItem Value="4">Yellow</asp:ListItem>
<asp:ListItem Value="5">Orange</asp:ListItem>
</asp:RadioButtonList>
         
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Select Color" CssClass="auto-style3" />
         <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
             <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
             <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
             <OtherMonthDayStyle ForeColor="#CC9966" />
             <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
             <SelectorStyle BackColor="#FFCC66" />
             <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
             <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
         </asp:Calendar>
         <asp:Menu ID="Menu1" runat="server">
             <Items>
                 <asp:MenuItem Text="Batch28" Value="Batch28">
                     <asp:MenuItem Text="Aakash" Value="Aakash"></asp:MenuItem>
                     <asp:MenuItem Text="Aakass" Value="Aakass"></asp:MenuItem>
                     <asp:MenuItem Text="Riju" Value="Riju"></asp:MenuItem>
                     <asp:MenuItem Text="Vishal" Value="Vishal"></asp:MenuItem>
                 </asp:MenuItem>
             </Items>
         </asp:Menu>
         <asp:BulletedList ID="BulletedList1" runat="server" BulletImageUrl="~/Images/img2.jpg" BulletStyle="LowerRoman" CssClass="bullet">
             <asp:ListItem Selected="True">C#</asp:ListItem>
             <asp:ListItem>ASP.Net</asp:ListItem>
             <asp:ListItem></asp:ListItem>
         </asp:BulletedList>
         <p>
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Repeat Direction" CssClass="auto-style2" />
         </p>
         <p>
             <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style4"></asp:Label>
         </p>
         
         <p>
             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BootstrapSample.html">BOOTSTRAP</asp:HyperLink>
         </p>
         
         <asp:CheckBoxList ID="CheckBoxList1" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="2" RepeatDirection="Vertical" RepeatLayout="Flow" TextAlign="Right" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" BorderColor="#6600FF" BorderStyle="Double" CssClass="auto-style4" Height="64px" ToolTip="Choose Item" Width="204px">
             <asp:ListItem>C#</asp:ListItem>
             <asp:ListItem>ASP.Net</asp:ListItem>
             <asp:ListItem>WinForms</asp:ListItem>
             <asp:ListItem>ADO.Net</asp:ListItem>
             <asp:ListItem>SQL</asp:ListItem>
         </asp:CheckBoxList>
         <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/IMG1.jpg" Direction="LeftToRight" Height="82px" ScrollBars="Both" Wrap="False">
             <asp:Label ID="Label5" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/HTMLControls.aspx">LinkButton</asp:LinkButton>
             <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/Images/img2.jpg" PostBackUrl="~/HTMLControls.aspx" Width="84px" />
             <asp:ListBox ID="ListBox1" runat="server" BackColor="#FF99FF" ForeColor="Blue">
                 <asp:ListItem Selected="True">C#</asp:ListItem>
                 <asp:ListItem>ASP.Net</asp:ListItem>
                 <asp:ListItem>WinForms</asp:ListItem>
                 <asp:ListItem></asp:ListItem>
             </asp:ListBox>
             <asp:DropDownList ID="DropDownList1" runat="server" ToolTip="Choose ">
                 <asp:ListItem Selected="True">C#</asp:ListItem>
                 <asp:ListItem>ASP.Net</asp:ListItem>
             </asp:DropDownList>
         </asp:Panel>
          
         
        
    </form>
</body>
</html>

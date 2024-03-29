<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Placeholder.aspx.cs" Inherits="SampleASP.Placeholder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
<div>
     <h2 style="color:Navy">PlaceHolder </h2>
     <asp:Button 
             ID="Button1" 
             runat="server" 
             Text="Add Image Control" 
             OnClick="Button1_Click" 
             Font-Bold="true"
             ForeColor="SaddleBrown"
             />
       <br />
    <br />
       
        <asp:PlaceHolder 
            ID="PlaceHolder5"
            runat="server"
            >
        </asp:PlaceHolder>
    <br />
    <br />
<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
<br />
<br />
<asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
<br />
<br />
<asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
<br />
<br />
<asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>
   
        <br />
</div>
          

        
       
        

 </form> 
</body>
</html>

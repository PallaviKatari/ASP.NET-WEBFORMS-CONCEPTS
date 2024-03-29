<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HTMLControls.aspx.cs" Inherits="SampleASP.HTMLControls" MasterPageFile="~/MainMaster.Master"%>
<asp:Content ID="sampcontent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
<style type="text/css">
         .style1
         {  
            width: 156px;
         }
         .style2
         {
            width: 332px;
         }
          .style3
         {
            font-size:large;
         }
      </style>
      

   
  
     
         
            <table style="width: 54%;">
               <tr>
                  <td class="style3">Name:</td>
                  <td class="style2">
                     <asp:TextBox ID="txtname" runat="server"  style="width:230px">
                     </asp:TextBox>
                  </td>
               </tr>
				
               <tr>
                  <td class="style3">Street</td>
                  <td class="style2">
                     <asp:TextBox ID="txtstreet" runat="server"  style="width:230px">
                     </asp:TextBox>
                  </td>
               </tr>
				
               <tr>
                  <td class="style3">City</td>
                  <td class="style2">
                     <asp:TextBox ID="txtcity" runat="server"  style="width:230px">
                     </asp:TextBox>
                  </td>
               </tr>
				
               <tr>
                  <td class="style3">State</td>
                  <td class="style2">
                     <asp:TextBox ID="txtstate" runat="server" style="width:230px">
                     </asp:TextBox>
                  </td>
               </tr>
				
               <tr>
                  <td class="style1"> </td>
                  <td class="style2"></td>
               </tr>
				
               <tr>
                  <td class="style1"></td>
                  <td ID="displayrow" runat ="server" class="style2">
                  </td>
               </tr>
            </table>
            
         
         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Click" style="height: 26px" />

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateMgmt.aspx.cs" Inherits="SampleASP.StateMgmt" EnableViewState="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID ="HiddenFieldDemo" runat ="server"/>
<label id ="lblTime" runat="server"></label>
            <asp:Label ID="lblmessage" runat="server" >
            
            </asp:Label>
            
            <br />
            <br />
            <br />
            
            <asp:Button ID="btnclick" runat="server" Text="Click" onclick="btnclick_Click" />
        </div>
        <p>PostBack is the name given to the process of submitting an ASP.NET page to the server for processing. PostBack is done if certain credentials of the page are to be checked against some sources (such as verification of username and password using database).</p>
        <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ImageSet="BulletedList4" ShowExpandCollapse="False">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text=".Net" Value=".Net">
                    <asp:TreeNode Text="C#" Value="C#"></asp:TreeNode>
                    <asp:TreeNode Text="Win Forms" Value="Win Forms"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        <asp:TreeView ID="TreeView2" runat="server" ImageSet="Arrows">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="BATCH28" Value="BATCH28">
                    <asp:TreeNode NavigateUrl="~/Controls.aspx" Text="Aakass" Value="Aakass"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Cookie.aspx" Text="Aakash" Value="Aakash"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/HTMLControls.aspx" Text="Riju" Value="Riju"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/BootstrapSample.html" Text="Vishal" Value="Vishal"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        <asp:Label ID="lblmessage1" runat="server" ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <h3>View State demo</h3>
         
            Page Counter:
            
            <asp:Label ID="lblCounter" runat="server" EnableViewState="true" />
            <asp:Button ID="btnIncrement" runat="server" Text="Add Count" onclick="btnIncrement_Click" />
        <br />
        <br />
        <br />
        <h3>Session State demo</h3>
        <table style="width: 568px; height: 103px">
            
               <tr>
                  <td style="width: 209px">
                     <asp:Label ID="lblstr" runat="server" Text="Enter a String"  style="width:94px">
                     </asp:Label>
                  </td>
					
                  <td style="width: 317px">
                     <asp:TextBox ID="txtstr" runat="server" style="width:227px">
                     </asp:TextBox>
                  </td>
               </tr>
	
               <tr>
                  <td style="width: 209px"> </td>
                  <td style="width: 317px"> </td>
               </tr>
	
               <tr>
                  <td style="width: 209px">
                     <asp:Button ID="btnnrm" runat="server" 
                        Text="No action button" style="width:128px" />
                  </td>
	
                  <td style="width: 317px">
                     <asp:Button ID="btnstr" runat="server" 
                        OnClick="btnstr_Click" Text="Submit the String" />
                  </td> 
               </tr>
	
               <tr>
                  <td style="width: 209px">  </td>
	
                  <td style="width: 317px">  </td>  
               </tr>
	
               <tr>
                  <td style="width: 209px">
                     <asp:Label ID="lblsession" runat="server"  style="width:231px"  >
                     </asp:Label>
                  </td>
	
                  <td style="width: 317px">  </td>
               </tr>
	
               <tr>
                  <td style="width: 209px">
                     <asp:Label ID="lblshstr" runat="server">
                     </asp:Label>
                  </td>
	
                  <td style="width: 317px">  </td>
               </tr>
               
            </table>
   
    </form>
    
</body>
</html>

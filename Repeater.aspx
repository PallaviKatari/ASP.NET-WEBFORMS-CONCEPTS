<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="SampleASP.Repeater" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <div>  
        <asp:Repeater ID="RepeatInformation" runat="server" DataSourceID="SqlDataSource1">  
            <HeaderTemplate>   Employee Details of CG-VAK
                <table class="tblcolor">  
                    <tr>  
                        <b>  
                            <td>  
                                EmpID  
                            </td>  
                            <td>  
                                EmpName  
                            </td>  
                            <td>  
                                Designation  
                            </td>  
                            <td>  
                                Mobile 
                            </td>  

                        </b>  
                    </tr>  
            </HeaderTemplate> 
            <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                </tr>  
            </SeparatorTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.empid")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.empname")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.designation")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.mobile")%>  
                    </td> 
                </tr>  
            </ItemTemplate>  
            <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                </tr>  
            </SeparatorTemplate>  
            
            <FooterTemplate>  
                <tr>  
                    <td>  
                      www.cgvakindia.com
                    </td>  
                </tr>  
                </table>  
            </FooterTemplate>  
        </asp:Repeater>  
    </div> 
        
        <br />
        <br />
        <div>  
    </div>  
        
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Palette="Fire">
                <Series>
                    <asp:Series Name="Series1" XValueMember="designation" YValueMembers="empid">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormsConnectionString %>" SelectCommand="SELECT * FROM [emp28]"></asp:SqlDataSource>
        
    </form>
</body>
</html>

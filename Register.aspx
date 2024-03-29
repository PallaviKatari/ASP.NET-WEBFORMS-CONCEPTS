<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SampleASP.Register" MasterPageFile="~/MainMaster.Master" %>

<asp:Content ID="samp" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1"
            runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser" />
    </div>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click here to Login</asp:HyperLink>
        </AnonymousTemplate>
    </asp:LoginView>


</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleMaster.aspx.cs" Inherits="SampleASP.SampleMaster" MasterPageFile="~/MainMaster.Master" %>
<asp:Content ID="mastercontent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>

            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <asp:Login ID="Login1" runat="server"></asp:Login>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/img5.jpg"/>

        </div>

    </asp:Content>

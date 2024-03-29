﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Caching.aspx.cs" Inherits="SampleASP.Caching" %>

<!--Page caching Duration in seconds,* means all parameters,browser means supports all browsers-->
<%@ OutputCache Duration = 5 VaryByParam = "*" %> 
<!--Fragment caching-In some scenarios we only need to cache only a segment of a page. For example a contact us page in a main page will be the same for all the users and for that there is no need to cache the entire page.-->
<!-- OutputCache Duration = 5 VaryByParam = "None" VaryByCustom = "Browser"   -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Caching is one of the most interesting concepts and operations in ASP.NET. If you can handle it, you can run any web application by applying the caching concept depending on the requirements.<br />
            Why Caching?<br />

Caching is for providing solutions or the results to the users depending on their requested request, admin needs to recreate the pages often depending on user requests…STOP!!!<br />
            "A cache simply stores the output generated by a page in the memory and this saved output (cache) will serve us (users) in the future." That's it.<br />
            Data caching is slightly different from the 2 other caching types. It's much more interesting to see how data caching actually works.

As we know in C# everything is about classes and objects. So ASP.NET supports data caching by treating them as small sets of objects. We can store objects in memory very easily and use them depending on our functionality and needs, anywhere across the page.
            Actually, this feature is implemented using the Cache class and data is treated as its object. Let's see how it works using a demo.

        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PAGE CACHE" />
            <br />
        </p>
        <asp:Label ID="lblinfo" runat="server" Text="Data Cache         "></asp:Label><br />
        <p>If you click on the button again within 30 seconds, the page is posted back but the label control gets its information from the cache(i.e)DateTime</p><br />

        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="DATA CACHE" />
        </p>
    </form>
</body>
</html>

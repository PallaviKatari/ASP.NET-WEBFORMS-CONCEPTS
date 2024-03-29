<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPagePosting1.aspx.cs" Inherits="SampleASP.CrossPagePosting1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">  
            <p>By default, buttons have a postback property. When you click the button it reloads the page itself. However we can use the property PostBackUrl to redirect to another page. If you want to use the data of one page to another page without using session, object, or anything else, you can just use cross-page in your project. 

Cross page posting means you are posting form data to another page. This is useful when you want to post data to another page and do not want incur the overhead of reloading the current page.</p>
  
            <b style="font-size: xx-large; color: #669900"> Welcome To Cross Page Posting</b><br /> 
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
  <br />
            <br />
            <p>
                How to redirect without a round trip
Server.Transfer()
Response.Redirect()
The method Server.Transfer() happens without the browser knowing anything, the browser request a page, but the server returns the content of another.

The method Response.Redirect() will send you to a new page, update the address bar and add it to the Browser History. On your browser you can click back.

Server.Transfer() Vs Response.Redirect()
The response.redirect() and server.transfer() helps to transfer user from one page to other page while the page is executing. But the way they do this transfer or redirect is very different. The main difference between them is who does the transfer. In response.redirect() , the transfer is done by the browser while in server.transfer(), it's done by the server. Server.Transfer() maintains the original URL in the browser. This can really help streamline data entry techniques, although it may make for confusion when debugging .

When to use?
To use Server.Transfer() when you want to navigate pages which reside on the same server, use Response.Redirect() when you want to navigate between pages which resides on different server and domain.


            </p>
        </div>  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Redirect" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Transfer" />
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Session" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Session Logout" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Application" />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="View State Submit" />
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="View State Retrieve" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <p style="{ font-size: medium; }">
            

Session and Application are very important in ASP.NET. When we move from one page to another page, the values of the previous page will get lost, If we want to hold the previous values, for that purpose we can use session level variable or application level variables.<br />

Session level variable : Value will persist till the close of the browser.<br /><br />
            Global.asax file : Global.asax file is ASP.NET application file. Global.asax is extension of Global Application Class. Global.asax file resides in the IIS virtual root of an ASP.NET application. It is used to declare application level variable. There are many events in Global.asax file which are as follows:<br />

Application_Init: Fires when the application initializes for the first time.<br />

Application_Start: Fires the first time an application starts.<br />

Session_Start: Fires the first time when a user's session is started.<br />

Application_BeginRequest: Fires each time a new request comes in.<br />

Application_EndRequest: Fires when the request ends.<br />

Application_AuthenticateRequest: Indicates that a request is ready to be authenticated.<br />

Application_Error: Fires when an unhandled error occurs within the application.<br />

Session_End: Fires whenever a single user Session ends or times out.<br />

Application_End: Fires when the application ends or times out.<br /><br />

            ViewState is a important client side state management technique. ViewState is used to store user data on page at the time of post back of web page.<br />

ViewState does not hold the controls, it holds the values of controls. It does not restore the value to control after page post back. <br />
            
            ViewState can hold the value on single web page, if we go to other page using response.redirect then ViewState will be null.<br />

            ViewState stores data on single page<br />
ViewState is client side state management technique<br />
Session stores data on whole website pages<br />
Session is a server side state management technique<br />
            ViewState syntax same as Session, Session is a server side object while ViewState is a client side object. Session can stores values across on multiple pages while ViewState stores values on single page.


        </p>
    </form>
</body>
</html>

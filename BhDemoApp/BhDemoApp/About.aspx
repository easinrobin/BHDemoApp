<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BhDemoApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container-narrow">
        <div class="masthead">
            <ul class="nav nav-pills pull-right">
                
            </ul>
            <h3 class="muted">Contact Manager</h3>
        </div>
        <div id="body" class="container">
            @RenderSection("featured", required: false)
            <section>
                @RenderBody()
            </section>
        </div>
        <hr />
        <div id="footer">
            <div class="container">
                <p class="muted credit">&copy; @DateTime.Now.Year - Design and devloped by <a href="http://www.anandpandey.com">Anand Pandey</a>.</p>
            </div>
        </div>
    </div>
</asp:Content>

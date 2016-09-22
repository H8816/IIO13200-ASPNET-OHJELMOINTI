﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Source.aspx.cs" Inherits="Source" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tiedon välitys demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Source - sivu</h1>
        <p>
            Lähetettävä viesti: <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
            <!-- tähän lista josta voi valita sopivan valmiin lauseen-->
            <asp:DropDownList ID="ddlMessages" runat="server" OnSelectedIndexChanged="ddlMessages_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
             <br />
            <!-- vaihtoehto 1 QUERYSTRING-->
            <asp:Button ID="btnQueryString" runat="server" Text="Käytä QueryStringiä" OnClick="btnQueryString_Click" />
            <br />
              <!-- vaihtoehto 2 HTTPPOST-->
            <asp:Button ID="btnHttpPost" runat="server" Text="Käytä HttpPost" PostBackUrl="~/Tapa2.aspx" />
            <br />
            <!-- vaihtoehto 3 SESSIONSTATE-->
            <asp:Button ID="btnSession" runat="server" Text="Käytä SessionState" OnClick="btnSession_Click" />
            <br />
            <!-- vaihtoehto 4 COOKIE-->
            <asp:Button ID="btnCookie" runat="server" Text="Käytä Cookie" OnClick="btnCookie_Click" />
            <br />
            <!-- vaihtoehto 5 PAGEPROPERTY-->
            <asp:Button ID="btnProperty" runat="server" Text="Käytä PageProperty" OnClick="btnProperty_Click" />
            <br />
            <!-- vaihtoehto 6 CONTROL INFO EI TEHDÄ-->
            <asp:Button ID="Button1" runat="server" Text="Käytä PageProperty" OnClick="btnProperty_Click" />
            <br />
        </p>
    </div>
    </form>
</body>
</html>

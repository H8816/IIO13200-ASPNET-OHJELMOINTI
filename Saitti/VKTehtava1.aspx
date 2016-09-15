<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VKTehtava1.aspx.cs" Inherits="VKTehtava1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VKTehtava01</title>
    <link href="http://www.w3schools.com/lib/w3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="w3-container w3-light-green">
        <h2>Ikkunan dimensiot</h2>
        <table>
            <tr>
                <td>Leveys (L)</td>
                <td>
                    <asp:TextBox ID="txtLeveys" runat="server"></asp:TextBox></td>
                <td>mm</td>
            </tr>
                        <tr>
                <td>Korkeus(H)</td>
                <td>
                    <asp:TextBox ID="txtKorkeus" runat="server"></asp:TextBox></td>
                <td>mm</td>
            </tr>
                        <tr>
                <td>Karminleveys(W)</td>
                <td>
                    <asp:TextBox ID="txtKarmi" runat="server"></asp:TextBox></td>
                <td>mm</td>
            </tr>
        </table>

        <asp:Button Text="Laske tarjoushinta" ID="btnLaske" runat="server" Class="w3-btn w3-blue" OnClick="btnLaske_Click"/>
       
         <table>
            <tr>
                <td>Ikkunan Pinta-ala:</td>
                <td><asp:Label ID="lblPintaAla" runat="server"></asp:Label></td>
                <td>m2</td>
            </tr>
                        <tr>
                <td>Karmin Piiri:</td>
                <td>
                    <asp:Label ID="lblKarminPiiri" runat="server"></asp:Label></td>
                <td>m</td>
            </tr>
                        <tr>
                <td>Tarjoushinta(Ilman ALV):</td>
                <td>
                    <asp:Label ID="lblTarjoushinta" runat="server"></asp:Label></td>
                <td>€</td>
            </tr>
        </table>
    </div>
        <div id="footer">
            <!-- Ilmoitukset käyttäjälle-->
            <asp:Label ID="lblMessages" runat="server" />
        </div>
    </form>
</body>
</html>

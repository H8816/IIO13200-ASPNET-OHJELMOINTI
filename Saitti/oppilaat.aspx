<%@ Page Language="C#" AutoEventWireup="true" CodeFile="oppilaat.aspx.cs" Inherits="oppilaat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Oppilaat:</h2>
        <div>
            <asp:Button ID="btnGet3" Text="Hae 3 oppilasta" runat="server" OnClick="btnGet3_Click"   />
            <asp:Button ID="btnGetAll" Text="Hae oppilaat tietokannasta" runat="server" OnClick="btnGetAll_Click" />
        </div>
        <div id="tulos">
            <asp:GridView ID="gvStudents" runat="server" />
        </div>
        <div id="footer">
            <asp:Label ID="lblMessages" runat="server" />
        </div>
    </div>
    </form>
</body>
</html>

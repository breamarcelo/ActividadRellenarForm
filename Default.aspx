<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ActividadRellenarForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Crear Usuarios</h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/alumnos.aspx">Alumnos</asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/docentes.aspx">Docentes</asp:HyperLink>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="docentes.aspx.cs" Inherits="ActividadRellenarForm.docentes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Crear Docente</h3>
            Nombre:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            Apellidos:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            Carrera:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            Telefono:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            Email:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="CREAR" OnClick="Button1_Click" style="height: 26px" /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Volver</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:academiaConnectionString2 %>" InsertCommand="INSERT INTO docentes(nombre, apellidos, carrera, telefono, email) VALUES (@nombre, @apellidos, @carrera, @telefono, @email)" SelectCommand="SELECT docentes.* FROM docentes">
                <InsertParameters>
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="apellidos" />
                    <asp:Parameter Name="carrera" />
                    <asp:Parameter Name="telefono" />
                    <asp:Parameter Name="email" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

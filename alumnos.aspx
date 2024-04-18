<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alumnos.aspx.cs" Inherits="ActividadRellenarForm.alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Crear Alumno</h3>
            ID:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            Nombre:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            Apellidos:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            Email:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            Carrera:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="CREAR" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Volver</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-CEAKRLR\SQLEXPRESS;Initial Catalog=academia;Integrated Security=True;" InsertCommand="INSERT INTO alumnos(id, nombre, apellidos, email, carrera) VALUES (@id, @nombre, @apellidos, @email, @carrera)" ProviderName="<%$ ConnectionStrings:academiaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [alumnos]">
                <InsertParameters>
                    <asp:Parameter Name="id" />
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="apellidos" />
                    <asp:Parameter Name="email" />
                    <asp:Parameter Name="carrera" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActividadRellenarForm
{
    public partial class docentes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["nombre"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["apellidos"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["carrera"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["telefono"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["email"].DefaultValue = TextBox5.Text;
            SqlDataSource1.Insert();
            Label1.Text = "Usuario creado";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}
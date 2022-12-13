using ConexionSqlServer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto3
{
    public partial class FrmEjercicios : System.Web.UI.Page
    {
        DataTable datos = new DataTable();
        ClElementosConexionBdSqlServer cl = new ClElementosConexionBdSqlServer();
        string Ejercicio;
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }
        public void datagrid_RowDeleting(Object sender, GridViewDeleteEventArgs e)
        {

            Ejercicio = datagrid.Rows[e.RowIndex].Cells[3].Text;
            datos.Columns.Clear();
            datos.Rows.Clear();
            datos.Columns.Add("1"); 
            datos.Columns.Add("2");
            datos.Rows.Add("@CodigoCliente", "@Ejercicio");
            datos.Rows.Add(ClAtributos.CodigoUsuario,Ejercicio);
            cl.InsertarBorrarActualizarDatos("BorrarEjercicio", datos);
            LlenarGrid();
        }

        protected void datagrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label1.Visible = true;
            TextBox1.Visible = true;
            Actualizar.Visible = true;
            ClAtributos.Ejercicio = datagrid.Rows[e.RowIndex].Cells[3].Text;
            TextBox1.Text = ClAtributos.Ejercicio;
        }
        protected void LlenarGrid()
        {
            datos.Columns.Clear();
            datos.Rows.Clear();
            datos.Columns.Add("1");
            datos.Rows.Add("@CodigoCliente");
            datos.Rows.Add(ClAtributos.CodigoUsuario);
            datagrid.DataSource = cl.SeleccionarParametros("SeleccionarEjercicios", datos);
            datagrid.DataBind();
        }
        protected void datagrid_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void Actualizar_Click(object sender, EventArgs e)
        {
            datos.Columns.Clear();
            datos.Rows.Clear();
            datos.Columns.Add("1");
            datos.Columns.Add("2");
            datos.Columns.Add("3");
            datos.Rows.Add("@CodigoCliente","@Ejercicio", "@EjercicioNuevo");
            datos.Rows.Add(ClAtributos.CodigoUsuario,ClAtributos.Ejercicio,TextBox1.Text);
            cl.InsertarBorrarActualizarDatos("ActualizarEjercicio", datos);
            LlenarGrid();
            Label1.Visible = false;
            TextBox1.Visible = false;
            Actualizar.Visible = false;
            TextBox1.Text = "";
        }
    }
}
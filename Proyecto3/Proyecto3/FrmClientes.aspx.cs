using ConexionSqlServer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto3
{
    public partial class FrmClientes : System.Web.UI.Page
    {
        DataTable datos = new DataTable();
        DataTable datos1 = new DataTable();
        DataTable datos2 = new DataTable();
        ClElementosConexionBdSqlServer cl = new ClElementosConexionBdSqlServer();
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
            if (IsPostBack==false)
            {
            DProvincia.DataSource = cl.SeleccionarBd("SeleccionarProvincia");
            DProvincia.DataTextField = cl.SeleccionarBd("SeleccionarProvincia").Columns[1].ToString();
            DProvincia.DataValueField = cl.SeleccionarBd("SeleccionarProvincia").Columns[0].ToString();
            DProvincia.DataBind();   
            }
             

        }

        protected void datagrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ClAtributos.CodigoUsuarioNuevo = int.Parse(datagrid.Rows[e.RowIndex].Cells[2].Text);
            datos2.Columns.Add("1");
            datos2.Rows.Add("@Codigo");
            datos2.Rows.Add(int.Parse(datagrid.Rows[e.RowIndex].Cells[2].Text));
            cl.InsertarBorrarActualizarDatos("BorrarCliente", datos2);
        }

        protected void datagrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TxtNombre.Text = datagrid.Rows[e.RowIndex].Cells[3].Text;
            TxtApellido.Text= datagrid.Rows[e.RowIndex].Cells[4].Text;
            TxtTelefono.Text= datagrid.Rows[e.RowIndex].Cells[5].Text;
            TxtCorreo.Text=datagrid.Rows[e.RowIndex].Cells[6].Text;
            TxtClave.Text= datagrid.Rows[e.RowIndex].Cells[7].Text;
            ClAtributos.CodigoUsuarioNuevo = int.Parse( datagrid.Rows[e.RowIndex].Cells[2].Text);
            BtnGuardar.Text = "Actualizar";
        }
        protected void LlenarGrid()
        {            
            datagrid.DataSource = cl.SeleccionarBd("SeleccionarClientes");
            datagrid.DataBind();
        }

        protected void DProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            datos.Columns.Clear();
            datos.Rows.Clear();
            datos.Columns.Add("1");
            datos.Rows.Add("@CodigoProvincia");
            datos.Rows.Add(int.Parse(DProvincia.SelectedValue.ToString()));
            DCanton.DataSource = cl.SeleccionarParametros("SeleccionarCanton", datos);
            DCanton.DataTextField = cl.SeleccionarParametros("SeleccionarCanton", datos).Columns[1].ToString();
            DCanton.DataValueField = cl.SeleccionarParametros("SeleccionarCanton", datos).Columns[0].ToString();
            DCanton.DataBind();
        }

        protected void DCanton_SelectedIndexChanged(object sender, EventArgs e)
        {
            datos1.Columns.Clear();
            datos1.Rows.Clear();
            datos1.Columns.Add("1");
            datos1.Rows.Add("@CodigoCanton");
            datos1.Rows.Add(int.Parse(DCanton.SelectedValue.ToString()));
            DDistrito.DataSource = cl.SeleccionarParametros("SeleccionarDistrito", datos1);
            DDistrito.DataTextField = cl.SeleccionarParametros("SeleccionarDistrito", datos1).Columns[1].ToString();
            DDistrito.DataValueField = cl.SeleccionarParametros("SeleccionarDistrito", datos1).Columns[0].ToString();
            DDistrito.DataBind();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (BtnGuardar.Text=="Guardar")
            {
                datos2.Columns.Clear();
                datos2.Rows.Clear();
                datos2.Columns.Add("1");
                datos2.Columns.Add("2");
                datos2.Columns.Add("3");
                datos2.Rows.Add( "@Nombre", "@Apellido", "@Telefono");
                datos2.Rows.Add(TxtNombre.Text, TxtApellido.Text, TxtTelefono.Text);
                cl.InsertarBorrarActualizarDatos("GuardarCliente", datos2);
                ClAtributos.CodigoUsuarioNuevo = int.Parse(cl.SeleccionarBd("SeleccionarUltimoCliente").Rows[0][0].ToString());
                datos2.Columns.Clear();
                datos2.Rows.Clear();
                datos2.Columns.Add("1");
                datos2.Columns.Add("2");
                datos2.Columns.Add("3");
                datos2.Columns.Add("4");
                datos2.Rows.Add("@CodigoCliente", "@CodigoProvincia", "@CodigoCanton", "@CodigoDistrito");
                datos2.Rows.Add(ClAtributos.CodigoUsuarioNuevo, DProvincia.SelectedValue, DCanton.SelectedValue, DDistrito.SelectedValue);
                cl.InsertarBorrarActualizarDatos("GuardarDireccion", datos2);

                datos2.Columns.Clear();
                datos2.Rows.Clear();
                datos2.Columns.Add("1");
                datos2.Columns.Add("2");
                datos2.Columns.Add("3");
                datos2.Columns.Add("4");
                datos2.Rows.Add("@CodigoUsuario", "@Correo", "@Calve", "@Acceso");
                datos2.Rows.Add(ClAtributos.CodigoUsuarioNuevo, TxtCorreo.Text, TxtClave.Text, ChAdmin.Checked);
                cl.InsertarBorrarActualizarDatos("GuardarCorreos", datos2);
            }
            else
            {
                datos2.Columns.Clear();
                datos2.Rows.Clear();
                datos2.Columns.Add("1");
                datos2.Columns.Add("2");
                datos2.Columns.Add("3");
                datos2.Columns.Add("4");
                datos2.Rows.Add("@Codigo","@Nombre","@Apellido","@Telefono");
                datos2.Rows.Add(ClAtributos.CodigoUsuarioNuevo, TxtNombre.Text,TxtApellido.Text,TxtTelefono.Text);
                cl.InsertarBorrarActualizarDatos("ActualizarCliente",datos2);

                datos2.Columns.Clear();
                datos2.Rows.Clear();
                datos2.Columns.Add("1");
                datos2.Columns.Add("2");
                datos2.Columns.Add("3");
                datos2.Columns.Add("4");
                datos2.Rows.Add("@CodigoCliente", "@CodigoProvincia", "@CodigoCanton", "@CodigoDistrito");
                datos2.Rows.Add(ClAtributos.CodigoUsuarioNuevo, DProvincia.SelectedValue, DCanton.SelectedValue, DDistrito.SelectedValue);                
                cl.InsertarBorrarActualizarDatos("ActualizarDireccion", datos2);

                datos2.Columns.Clear();
                datos2.Rows.Clear();
                datos2.Columns.Add("1");
                datos2.Columns.Add("2");
                datos2.Columns.Add("3");
                datos2.Columns.Add("4");
                datos2.Rows.Add("@CodigoUsuario", "@Correo", "@Calve", "@Acceso");
                datos2.Rows.Add(ClAtributos.CodigoUsuarioNuevo, TxtCorreo.Text, TxtClave.Text, ChAdmin.Checked);
                cl.InsertarBorrarActualizarDatos("ActualizarCorreos", datos2);

                LlenarGrid();
                TxtNombre.Text = "";
                TxtApellido.Text = "";
                TxtClave.Text = "";
                TxtCorreo.Text = "";
                TxtTelefono.Text = "";
                ChAdmin.Checked = false;
                DCanton.DataSource = null;
                DCanton.DataBind();
                DDistrito.DataSource=null;
                DDistrito.DataBind();
                BtnGuardar.Text = "Guardar";
            }
        }
    }
}
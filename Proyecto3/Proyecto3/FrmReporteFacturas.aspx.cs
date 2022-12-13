using ConexionSqlServer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto3
{
    public partial class FrmReporteFacturas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable datos = new DataTable();
            ClElementosConexionBdSqlServer cl = new ClElementosConexionBdSqlServer();
            datagrid.DataSource = cl.SeleccionarBd("SeleccionarFactura");
            datagrid.DataBind();
        }

      
        protected void datagrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            ClAtributos.CodigoFactura =int.Parse(datagrid.Rows[e.RowIndex].Cells[1].Text);
            Response.Redirect("FrmReporteFacturaDetalle.aspx");
        }

        protected void datagrid_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }
    }
}
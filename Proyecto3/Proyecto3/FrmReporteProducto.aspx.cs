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
    public partial class FrmReporteProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable datos = new DataTable();
            ClElementosConexionBdSqlServer cl = new ClElementosConexionBdSqlServer(); 
            datagrid.DataSource = cl.SeleccionarBd("SeleccionarProducto");
            datagrid.DataBind();
        }
    }
}
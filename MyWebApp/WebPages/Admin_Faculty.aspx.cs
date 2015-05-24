using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectClasses;

namespace MyWebApp.WebPages
{
    public partial class Admin_Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Int64 en = Int64.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            User u1 = new User();
            u1.acptfac(en);
            Response.Redirect(Request.RawUrl);
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           Int64 en = Int64.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
           string qrystr = String.Format("DELETE FROM Faculty_Temp WHERE Enrollment_No = {0}", en);
           User u1 = new User();
           u1.delfacreq(qrystr);
           Response.Redirect(Request.RawUrl);
        }
    }
}
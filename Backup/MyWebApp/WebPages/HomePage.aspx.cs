using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using ProjectClasses;

namespace MyWebApp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               Usernmtxtbx.Text = Usernmtxtbx.Text;
               Passtxtbx.Text = Passtxtbx.Text;
            }
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Boolean result = new User().verifyuser(Usernmtxtbx.Text,Passtxtbx.Text);
            if (result)
            {
                Resultlbl.Text = "Welcome User!!!";
            }
            else
            {
                Resultlbl.Text = "Invalid Username or Password";
           }
        }

        protected void signupbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
    }
}

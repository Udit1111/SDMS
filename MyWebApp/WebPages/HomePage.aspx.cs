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
            object[] result = new User().verifyuser(Usernmtxtbx.Text,Passtxtbx.Text);
            if (result[0].Equals(true))
            { 
                if (result[1].Equals(1))
                {
                   
                    Response.Redirect("View.aspx");
                }
                else if (result[1].Equals(2))
                {
                    Response.Redirect("");
                }
                else if (result[2].Equals(3))
                {
                    Response.Redirect("PHView.aspx");
                }
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

﻿using System;
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

namespace MyWebApp.WebPages
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Addgrpbtn_Click(object sender, EventArgs e)
        {
            ProjectClasses.Admin a1 = new ProjectClasses.Admin();
            a1.admincreategroup(Grpnametxtbox.Text.ToString(),int.Parse(yeartxtbx.Text));
        }
    }
}

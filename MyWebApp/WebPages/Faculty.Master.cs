﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApp.WebPages
{
    public partial class Faculty : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}
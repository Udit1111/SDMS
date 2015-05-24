using System;
using System.IO;
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
using System.Data.SqlClient;
using ProjectClasses;
using System.Collections.Generic;

namespace MyWebApp.WebPages
{
    public partial class FacultyPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            noti.Visible = false;
            asgn.Visible = false;
            
            if (IsPostBack)
                return;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Notice")
            {
                noti.Visible = true;
            }

            if (RadioButtonList1.SelectedValue == "Assignment")
            {
                asgn.Visible = true;
            }
        }

        protected void nsubmitbtn_Click(object sender, EventArgs e)
        {
            List<Int32> grparry = new List<Int32>();
            foreach (ListItem li in tolist1.Items)
            {
                if (li.Selected)
                {
                    grparry.Add(Int32.Parse(li.Value));
                }
            }
            Post p = new Post();
            p.uploadpost(grparry,subjtext.Text,RadioButtonList1.SelectedIndex,AssignmentUpload.FileName.ToString(),noticetxtbx.Text,ncmnttxtbx.Text);
        }

        protected void asubmitbtn_Click(object sender, EventArgs e)
        {
            List<Int32> grparry = new List<Int32>();
            foreach (ListItem li in tolist1.Items)
            {
                if (li.Selected)
                {
                    li.Value = tolist1.SelectedItem.Value;
                    grparry.Add(Int32.Parse(li.Value.ToString()));
                }
            }
            Post p = new Post();
            string filename = String.Format("Assignment"+p.notinum("Post",1).ToString()+Path.GetExtension(AssignmentUpload.FileName).ToString());
            AssignmentUpload.SaveAs(string.Format("F:\\UploadedAssignments\\{0}",filename));
            p.uploadpost(grparry,subjtext.Text.ToString(),RadioButtonList1.SelectedIndex,filename,null,acmnttxtbx.Text);
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            if (RadioButtonList2.SelectedValue == "Upload")
            {
                uploadnotice.Visible = true;
            }

            if (RadioButtonList2.SelectedValue == "Write")
            {
                writenotice.Visible = true;
            }
        }

    }
}

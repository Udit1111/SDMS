using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using ProjectClasses;

namespace MyWebApp.WebPages
{
    public partial class PrincipalHod_Post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            writenotice.Visible = false;
            uploadnotice.Visible = false;
            if (IsPostBack)
                return;

        }

        protected void nsubmitbtn_Click(object sender, EventArgs e)
        {
            List<Int32> grparry = new List<Int32>();
            foreach (System.Web.UI.WebControls.ListItem li in tolist1.Items)
            {
 
                if (li.Selected)
                {
                    grparry.Add(Int32.Parse(li.Value));
                }
            }
            Post p = new Post();
            String filename = "";
            if (RadioButtonList1.SelectedValue == "Write")
            {
                filename = String.Format("Notice" + p.notinum("PriHodPost", 0).ToString());
              Document d1 = new Document(iTextSharp.text.PageSize.LETTER,10,10,42,35);
              PdfWriter wri = PdfWriter.GetInstance(d1, new FileStream(string.Format("F:\\HUploadedNotice\\{0}.pdf", filename), FileMode.Create));
                
              d1.Open();
              iTextSharp.text.html.simpleparser.HTMLWorker hw = new iTextSharp.text.html.simpleparser.HTMLWorker(d1);
              hw.Parse(new StringReader(noticetxtbx.Text));
              d1.Close();
            }
            else
            {
                 filename = String.Format("Notice" + p.notinum("PriHodPost", 0).ToString() + Path.GetExtension(AssignmentUpload.FileName).ToString());
                AssignmentUpload.SaveAs(string.Format("F:\\HUploadedNotice\\{0}", filename));
            }
            p.uploadphpost(grparry, subjtext.Text,0, filename, noticetxtbx.Text, ncmnttxtbx.Text);
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Upload")
            {
                uploadnotice.Visible = true;
            }

            if (RadioButtonList1.SelectedValue == "Write")
            {
                writenotice.Visible = true;
            }
        }
    }
}
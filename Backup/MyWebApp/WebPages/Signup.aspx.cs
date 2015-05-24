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

namespace MyWebApp.WebPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            faculty.Visible = false;
            student.Visible = false;
            if (IsPostBack)
                return;
        }


        protected void UserSelectrblist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Usertyperblist.SelectedValue == "1")
            {
                faculty.Visible = true;
            }
            if (Usertyperblist.SelectedValue == "2")
            {
                student.Visible = true;
            }
        }

        protected void fsubmitbtn_Click(object sender, EventArgs e)
        {
            Int32 utype = Int32.Parse(Usertyperblist.SelectedValue);
            User u1 = new User();
            string s1 = String.Format("INSERT INTO Signup VALUES('{0}','{1}','{2}','{3}','{4}',{5},{6},'{7}',{8})", fnametxtbox.Text, lnametxtbox.Text, usernametxtbox.Text, passwordtxtbox.Text, EmailIdtxtbox.Text, Int32.Parse(Usertyperblist.Text), Int64.Parse(fenrolnotxtbox.Text), null, Convert.DBNull);
            u1.signup(s1);
        }

        protected void stusubmitbtn_Click(object sender, EventArgs e)
        {
            Int32 utype = Int32.Parse(Usertyperblist.SelectedValue);
            User u1 = new User();
            string s1 = String.Format("INSERT INTO Signup VALUES('{0}','{1}','{2}','{3}','{4}',{5},{6},'{7}',{8})", fnametxtbox.Text, lnametxtbox.Text, usernametxtbox.Text, passwordtxtbox.Text, EmailIdtxtbox.Text, Int32.Parse(Usertyperblist.Text), Int64.Parse(senrolnotxtbox.Text), deptdropdwnlist.SelectedValue, yrofjdropdwnlist.SelectedValue);
            u1.signup(s1);
            string s2 = String.Format("SELECT Group_Master.Group_Master_Id,Enrollment_No,Department,Year_of_joining FROM Group_Master INNER JOIN Signup on Group_Master.Year = Signup.Year_of_joining AND Enrollment_No = {0}",Int64.Parse(senrolnotxtbox.Text));
            u1.creategroup(s2);
            string s3 = string.Format("SELECT Group_Master_Id FROM Student_Group WHERE Enrollment_No = {0}", Int64.Parse(senrolnotxtbox.Text));
            u1.StudentEnter(s3, Int64.Parse(senrolnotxtbox.Text));
        }
    }
}
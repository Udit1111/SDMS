using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ProjectClasses
{
    public class User
    {

        public void signup(string qstr)
        {
            BaseClass b = new BaseClass();
            b.insert(qstr);
        }

        public void sendreq()
        {

        }

        public object[] verifyuser(string username, string password)
        {
            BaseClass b = new BaseClass();
            string qstr = String.Format("SELECT Username,Password,User_Type,(First_Name +' '+ Last_Name) AS Name FROM Signup");
            DataSet ds = b.getdata(qstr);
            object[] obj = new object[3]; 
            if (ds.Tables[0].Rows[0]["Username"].Equals(username) && ds.Tables[0].Rows[0]["Password"].Equals(password))
            {
               
                obj[0] = true;
                if (ds.Tables[0].Rows[0]["User_Type"].Equals(1))
                {
                    obj[1] = 1;
                }
                else if (ds.Tables[0].Rows[0]["User_Type"].Equals(2))
                {
                    obj[1] = 2;
                }
                else
                {
                    obj[1] = 3;
                }
                obj[2] = ds.Tables[0].Rows[0]["Name"];
                ds.Clear();
                return obj;
            }
            else
            {
               
                 obj[0] = false;
                 ds.Clear();
                 return obj;
            }
        }

        public void creategroup(string qrystr)
        {
            BaseClass b = new BaseClass();
            DataSet ds = b.getdata(qrystr);
            string s1 = string.Format("INSERT INTO Student_Group VALUES ({0},{1},'{2}',{3})", ds.Tables[0].Rows[0]["Group_Master_Id"], ds.Tables[0].Rows[0]["Enrollment_No"], ds.Tables[0].Rows[0]["Department"], ds.Tables[0].Rows[0]["Year_of_joining"]);
            b.insert(s1);
            ds.Clear();
        }

        public void StudentEnter(string qrystr, Int64 enroll)
        {
            BaseClass b = new BaseClass();
            DataSet ds = b.getdata(qrystr);
            string s1 = string.Format("SELECT Group_Master.Group_Name FROM Group_Master WHERE Group_Master_Id = {0}", ds.Tables[0].Rows[0]["Group_Master_Id"]);
            ds.Clear();
            ds = b.getdata(s1);
            string s2 = string.Format("INSERT INTO {0} VALUES ({1})", ds.Tables[0].Rows[0]["Group_Name"], enroll);
            b.insert(s2);
            ds.Clear();
        }

        public Boolean Checkusername(string qrystr)
        {

            BaseClass b = new BaseClass();
            DataSet ds = b.getdata(qrystr);
            if (ds.Tables[0].Rows.Count == 0)
            {
                ds.Clear();
                return true;
            }
            else
            {
                ds.Clear();
                return false;
            }
        }

        public void delfacreq(string qrystr)
        {
            BaseClass b = new BaseClass();
            b.deldata(qrystr);
           // return true;
        }

        public void acptfac(Int64 en)
        {
            Int64 eno;
            eno = en;
            BaseClass b = new BaseClass();
            string s1 = String.Format("SELECT * FROM Faculty_Temp WHERE Enrollment_No ={0}",eno);
            DataSet ds = b.getdata(s1);
            string s2 = String.Format("INSERT INTO Signup VALUES('{0}','{1}','{2}','{3}','{4}',{5},{6},'{7}','{8}')", ds.Tables[0].Rows[0]["First_Name"], ds.Tables[0].Rows[0]["Last_Name"], ds.Tables[0].Rows[0]["Username"], ds.Tables[0].Rows[0]["Password"], ds.Tables[0].Rows[0]["Email"], ds.Tables[0].Rows[0]["User_Type"], ds.Tables[0].Rows[0]["Enrollment_No"], ds.Tables[0].Rows[0]["Department"],null);
            b.insert(s2);
            ds.Clear();
            string s3 = String.Format("DELETE FROM Faculty_Temp WHERE Enrollment_No = {0}",eno);
            b.deldata(s3);
        }
    }
}
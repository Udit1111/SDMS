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
  
      public Boolean verifyuser(string username, string password)
      {
          BaseClass b = new BaseClass();
          string qstr= String.Format("SELECT Username,Password FROM Signup");
          DataSet ds = b.getdata(qstr);
          if(ds.Tables[0].Rows[0]["Username"].Equals(username) && ds.Tables[0].Rows[0]["Password"].Equals(password))
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

      public void creategroup(string qrystr)
      {
          BaseClass b = new BaseClass();
          DataSet ds = b.getdata(qrystr);
          string s1 = string.Format("INSERT INTO Student_Group VALUES ({0},{1},'{2}',{3})",ds.Tables[0].Rows[0]["Group_Master_Id"],ds.Tables[0].Rows[0]["Enrollment_No"],ds.Tables[0].Rows[0]["Department"],ds.Tables[0].Rows[0]["Year_of_joining"]);
          b.insert(s1);
          ds.Clear();
      }

      public void StudentEnter(string qrystr,Int64 enroll)
      {
          BaseClass b = new BaseClass();
          DataSet ds = b.getdata(qrystr);
          string s1 = string.Format("SELECT Group_Master.Group_Name FROM Group_Master WHERE Group_Master_Id = {0}",ds.Tables[0].Rows[0]["Group_Master_Id"]);
          ds.Clear();
          ds = b.getdata(s1);
          string s2 = string.Format("INSERT INTO {0} VALUES ({1})", ds.Tables[0].Rows[0]["Group_Name"], enroll);
          b.insert(s2);
          ds.Clear();
      }
    }
}

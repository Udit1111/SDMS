using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace ProjectClasses
{
  public class Admin
    {
        private string constr = Properties.Settings.Default.ProjectConnectionString;
        private SqlConnection con;
        private SqlCommand cmd;

        public void admincreategroup(string grpname,int yoj)
        {
            // try
            //{
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("Ctable",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Group_Name", SqlDbType.NVarChar);
            cmd.Parameters.Add("@Year", SqlDbType.Int);
            cmd.Parameters[0].Value = grpname;
            cmd.Parameters[1].Value = yoj;
            cmd.ExecuteNonQuery();
            con.Close();
            // }
            //catch
            //{ }
            
        }
    }
}

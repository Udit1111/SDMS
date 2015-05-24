using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ProjectClasses
{
    class BaseClass
    {
        private string constr = Properties.Settings.Default.ProjectConnectionString; 
        private string qrystr;
        private SqlConnection con;
        private SqlCommand cmd;
        private SqlDataReader dr;
       // private SqlDataAdapter da;
        private static DataSet ds = new DataSet();
        private SqlDataAdapter da = new SqlDataAdapter();
        public void insert(string qstr)
        {
            try
           {
                con = new SqlConnection(constr);
                qrystr = qstr;
                con.Open();
                cmd = new SqlCommand(qrystr, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
           catch
           { }
        }
        public DataSet getdata(string qstr)
        {
           // try
            //{
                con = new SqlConnection(constr);
                qrystr = qstr;
                con.Open();
                da.SelectCommand = new SqlCommand(qrystr, con);
                da.Fill(ds);
                con.Close();
                
            //}
            //catch
            //{ }
            return ds;
        }

    }
}

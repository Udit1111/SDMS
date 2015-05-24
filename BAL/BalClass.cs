using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DAL;

namespace BAL
{
    public class BalClass
    {
        private DalClass dal = new DalClass();
        private String query;
        //private SqlDataReader dr = null;
        private Boolean flag = false;

        public Boolean Verify(String un,String pass)
        {

            this.query = "Select Login.* from Login";
            this.flag = dal.Verifier(this.query, un, pass);
            return this.flag;
        }

        public void _passData(String un,String pass)
        {
            String query = String.Format("INSERT INTO Login(Username,Password) VALUES('{0}','{1}')",un,pass);
            dal.addUsr(query);
        }


    }
}

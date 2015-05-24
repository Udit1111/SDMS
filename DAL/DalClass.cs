using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DAL    
{
    public class DalClass
    {
        private SqlConnection myConnection;
        private string constr = "Data Source=SUNIL-PC\\SQLEXPRESS;Initial Catalog=Ravidb;Integrated Security=True";
        private string query;
        private SqlCommand myCommand;
        private SqlDataReader myDataReader;
        private Boolean flag = false;


        public Boolean Verifier(string query, string un, string pass)
        {
            try
            {
                myConnection = new SqlConnection(constr);
                myConnection.Open();
                this.query = query;
                myCommand = new SqlCommand(this.query, myConnection);
                myDataReader = myCommand.ExecuteReader();

                while (myDataReader.Read())
                {
                    if (myDataReader["Username"].Equals(un) && myDataReader["Password"].Equals(pass))
                    {
                        this.flag = true;
                        break;
                    }
                }
                myDataReader.Close();
                myCommand.Dispose();
                myConnection.Close();
            }
            catch (Exception e)
            {
            }
            return this.flag;
        }

        public void addUsr(string query)
        {
            try
            {
                myConnection = new SqlConnection(constr);
                this.query = query;
                myConnection.Open();
                myCommand = new SqlCommand(this.query, myConnection);
                myCommand.ExecuteNonQuery();
                myConnection.Close();
            }
            catch
            {
            }
        } 
  }
       /*private SqlConnection _getConnection()
        {
            myConnection = new SqlConnection(constr);
            return myConnection;
        }

        public string _constr
        {
            get
            {
                return this.constr;
            }
            set
            {
                this.constr = value;
            }
       }


        public string _query 
        {
            get
            {
                return this.query;
            }
            set
            {
                this.query = value;
            }
        }

        public SqlDataReader _myDataReader
        {
           get
            {
                return DalClass.myDataReader;
            }
            set
            {
                DalClass.myDataReader = value;
            }
        }

        public SqlCommand _myCommand
        {
            get
            {
                return this.myCommand;
            }
            set
            {
                this.myCommand = value;
            }
        }

        public void _buildInsertCommand(string query)
        {
            this.query = query;
            this.myCommand = new SqlCommand(this.query,DalClass.myConnection); 
        }
        
        public void _buildRetrieveCommand(string query)
        {
            this.query = query;
            this.myCommand = new SqlCommand(this.query, DalClass.myConnection);
        }

        public void _enterData() 
        {
            try
            {
                this._getConnection().Open();

                this.myCommand.ExecuteNonQuery();

                this._getConnection().Close();

            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }

        }
        public void _getData()
        {
            try
            {
                this._getConnection().Open();
                DalClass.myDataReader = this.myCommand.ExecuteReader();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
        ~DalClass()
        {
            try
            {
                myConnection.Close();
            }
            catch(Exception e)
            {
                Console.WriteLine(e.ToString());
            }

        }

    }*/ 
}

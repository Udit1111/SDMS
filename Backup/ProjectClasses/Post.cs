using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace ProjectClasses
{
    public class Post
    {
        private SqlConnection con;
        private SqlCommand cmd3;
        private string qrystr,qrystr2,qrystr3;

        Int32 postid;
        
        public void uploadpost(List<Int32> postto,string subject,Int32 type,string fi,string notice,string comnt)
        {
            BaseClass b = new BaseClass();
            if (fi.Equals(null))
            {
                qrystr = String.Format("INSERT INTO Post(Subject,Type,File_Path,Notice,Comment,dateofpost) VALUES ('{0}',{1},'{2}','{3}','{4}','{5}')", subject, type, fi, notice, comnt, DateTime.Now);
            }
            else
            {
                fi = string.Format("F:\\UploadedAssignments\\{0}", fi);
                qrystr = String.Format("INSERT INTO Post(Subject,Type,File_Path,Notice,Comment,dateofpost) VALUES ('{0}',{1},'{2}','{3}','{4}','{5}')", subject, type, fi, notice, comnt, DateTime.Now);
            }
            b.insert(qrystr);
                qrystr2 = String.Format("SELECT MAX(Post_Id) FROM Post");
                DataSet ds = b.getdata(qrystr2);
                qrystr3 = String.Format("INSERT INTO Post_Master VALUES (@post_id,@groupmasterid)");
                postid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                try
                {
                    con = new SqlConnection(Properties.Settings.Default.ProjectConnectionString);
                    con.Open();
                    cmd3 = new SqlCommand(qrystr3, con);
                    cmd3.Parameters.Add(new SqlParameter("post_id", System.Data.SqlDbType.Int));
                    cmd3.Parameters["post_id"].Value = postid;
                    cmd3.Parameters.Add(new SqlParameter("groupmasterid", System.Data.SqlDbType.Int));
                    for (int i = 0; i < postto.Count; i++)
                    {


                        cmd3.Parameters["groupmasterid"].Value = postto[i];
                        cmd3.ExecuteNonQuery();

                    }

                    con.Close();
                }
                catch
                {
                }
            

        }

        
        /*void search(string searchstr)
        {
            this.constr = Properties.Settings.Default.Database1ConnectionString;
            this.qrystr = string.Format("SELECT * FROM Post WHERE ");
        }*/
    }
}

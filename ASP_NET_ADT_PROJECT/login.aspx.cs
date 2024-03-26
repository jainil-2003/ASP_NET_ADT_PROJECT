using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ASP_NET_ADT_PROJECT
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PVIODMH\SQLEXPRESS;Initial Catalog=JAINIL_ADT_PROJECT;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            conn.Open();
            string query = "Insert into [dbo].[JAINIL_ADT] values('"+TextBox1.Text+"','"+TextBox2.Text+"')";
            cmd = new SqlCommand(query, conn);
            int i = cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
}
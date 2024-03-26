using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace ASP_NET_ADT_PROJECT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /*string connectionstring= "Data Source=DESKTOP-PVIODMH\\SQLEXPRESS;Initial Catalog=jainil_adt;Integrated Security=True"
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into register " + "(first name,last name,email,gender,address,phone,password,confrim password) values(@first name,@last name,@email,@gender,@address,@phone,@password,@confrim password)", con);
            cmd.Parameters.AddWithValue("@first name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@last name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1);
            cmd.Parameters.AddWithValue("@address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@password", TextBox6.Text);
            cmd.Parameters.AddWithValue("@confrim password",TextBox7.Text);
            con.Close();
            Label9.Text = "registered succsesfully";
           */

        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace ASP_NET_ADT_PROJECT
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

            string connectionString = "Data Source=DESKTOP-PVIODMH\\SQLEXPRESS;Initial Catalog=recorddb;Integrated Security=True;";
            string query = "SELECT * FROM [dbo].[product_table] WHERE pname LIKE '%' + @searchText + '%' OR productid LIKE '%' + @searchText + '%'";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@searchText", TextBox1.Text);
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = dataTable;
                    DataList1.DataBind();
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_NET_ADT_PROJECT
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random random= new Random();
            int i= random.Next(1,5);
            Image2.ImageUrl = "~/images/" + i.ToString() + ".jpg";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}
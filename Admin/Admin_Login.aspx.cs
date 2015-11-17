using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_Login : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void login_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string get = string.Format("select * from admin where admin_name = '{0}' and Admin_password = '{1}'", username.Text, password.Text);
        DataTable dt = m.filldt(get);


        m.cn.Close();
        m = null;

        if (dt.Rows.Count != 0)
        {
            Session["admin"] = username.Text;
            Response.Redirect("admin_home.aspx");
        }
        else { wrong.Visible = true; }
    }
}
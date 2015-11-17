using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Professor_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string get = string.Format("select * from professor where username = '{0}' and password = '{1}'", Professor_username.Text, Professor_password.Text);
        DataTable dt = m.filldt(get);


        m.cn.Close();
        m = null;

        if (dt.Rows.Count != 0)
        {
            if (dt.Rows[0]["Approved"].ToString() == "Yes")
            {
                Session["Professor_Username"] = Professor_username.Text;
                Response.Redirect("professor_home.aspx");
                 
            }
            else
            {
                approval.Visible = true;
            }
           
        }
        else { wrong.Visible = true; }
    }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Professor/Professor_Register.aspx");
    }
}

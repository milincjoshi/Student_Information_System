using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_student_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string get = string.Format("select * from student where username = '{0}' and password = '{1}' ", student_username.Text,student_password.Text);
        DataTable dt =  m.filldt(get);


        m.cn.Close();
        m = null;

        if (dt.Rows.Count != 0)
        {
            if (dt.Rows[0]["Approved"].ToString() != "Yes")
            {
                approval.Visible = true;
            }
            else
            {
                Session["Student_Username"] = student_username.Text;
                Response.Redirect("student_home.aspx");
            }
            
        }
        else { wrong.Visible = true; }

    }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Student/student_register.aspx");
    }
}
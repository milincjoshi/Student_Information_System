using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_student_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Student_student_home_LoadComplete;
    }

    void Student_student_home_LoadComplete(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string username = "";
        try { username = Session["Student_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Student_login.aspx"); }
       
        string load_data = string.Format("select * from Student where username = '{0}' ", username);
        DataTable dt = m.filldt(load_data);

        
        
        first_name.Text = dt.Rows[0]["fname"].ToString();
        Middle_name.Text = dt.Rows[0]["mname"].ToString();
        last_name.Text = dt.Rows[0]["lname"].ToString();
        mail_id.Text = dt.Rows[0]["email"].ToString();
        img.ImageUrl = dt.Rows[0]["ProfilePic"].ToString();
        contactno.Text = dt.Rows[0]["contactno"].ToString();
        //high_school.Text = dt.Rows[0]["school"].ToString();
        college.Text = dt.Rows[0]["college"].ToString();
        department.Text=dt.Rows[0]["department"].ToString();

        try
        {
            if (int.Parse(dt.Rows[0]["gender"].ToString()) == 0)
            {
                gender.Text = "Male";
            }
            else if (int.Parse(dt.Rows[0]["gender"].ToString()) == 1)
            {
                gender.Text = "Female";
            }
            else
            {
                gender.Text = dt.Rows[0]["gender"].ToString();
            }

        }
        catch (Exception)
        {
            
            
        }
     

        bdate.Text = dt.Rows[0]["bdate"].ToString();
        enrollmentno.Text = dt.Rows[0]["EnrollNo"].ToString();


        m.cn.Close();

        m = null;
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Student_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
    
}
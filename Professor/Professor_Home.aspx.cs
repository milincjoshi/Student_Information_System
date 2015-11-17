using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Professor_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Professor_Professor_Home_LoadComplete;
    }

    void Professor_Professor_Home_LoadComplete(object sender, EventArgs e)
    {
        main_class m = new main_class();
        
        string username = "";
        try { username = Session["Professor_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Professor_Login.aspx"); }
        

        string load_data=string.Format("select * from Professor where username = '{0}' ", username);
        DataTable dt=m.filldt(load_data);

        first_name.Text = dt.Rows[0]["fname"].ToString();
        Middle_name.Text = dt.Rows[0]["mname"].ToString();
        last_name.Text = dt.Rows[0]["lname"].ToString();
        mail_id.Text = dt.Rows[0]["email"].ToString();
        img.ImageUrl = dt.Rows[0]["ProfilePic"].ToString();
        contactno.Text = dt.Rows[0]["contactno"].ToString();
        //high_school.Text = dt.Rows[0]["school"].ToString();
        college.Text = dt.Rows[0]["institute"].ToString();

        try {
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
        catch (Exception ec) { gender.Text = "Update Gender"; }
        
        bdate_date.Text = dt.Rows[0]["bdate"].ToString();
        enrollmentno.Text = dt.Rows[0]["Professor_id"].ToString();
       department.Text=dt.Rows[0]["department"].ToString();

        //bind subjects
        string get_sub = string.Format("select * from professor_subjects where Professor_username = '{0}' ",username);
        DataTable dt_sub = m.filldt(get_sub);
        
        Professor_Subjects.DataSource = dt_sub;
        Professor_Subjects.DataBind();
        
        m.cn.Close();

        m = null;
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Professor_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_View_attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Student_View_attendance_LoadComplete;
    }

    void Student_View_attendance_LoadComplete(object sender, EventArgs e)
    {
        main_class m=new main_class();

        //string student = Session["Student_Username"].ToString();
        string student = "";
        try { student = Session["Student_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Student_login.aspx"); }
       
        int student_id = int.Parse(m.get_idfromusername("student",student).ToString());
        string attn = string.Format("select * from attendence where student_id = {0} ORDER BY attendence_ID DESC ", student_id);
        DataTable dt = m.filldt(attn);

        attendence.DataSource = dt;
        attendence.DataBind();

        int count = 0;

        for (int i = 0; i < attendence.Rows.Count; i++)
        {
            if (attendence.Rows[i].Cells[3].Text == "Present")
            {
                count++;        
            }
            
        }

       int per = (count * 100) / attendence.Rows.Count ;
        percentage.Text = per + " %";

        
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Student_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
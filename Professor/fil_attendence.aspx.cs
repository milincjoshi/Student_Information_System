using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_fil_attendence : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Professor_fil_attendence_LoadComplete;
    }

    void Professor_fil_attendence_LoadComplete(object sender, EventArgs e)
    {
        string username = "";

        try { username = Session["Professor_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Professor_Login.aspx"); }
        
        if (!IsPostBack)
        {

            main_class m = new main_class();

            //get departments
            string get_dept = string.Format("select * from department");
            DataTable dept_dt = m.filldt(get_dept);
            dept.DataSource = dept_dt;
            dept.DataBind();

            //get students
            string get_students = string.Format("select * from student where department = '{0}' ", dept.SelectedValue.ToString());
            DataTable students = m.filldt(get_students);

            attendence.DataSource = students;
            attendence.DataBind();

            m.cn.Close();
            m = null;
        }
      
    }
    protected void dept_SelectedIndexChanged(object sender, EventArgs e)
    {
            main_class m = new main_class();

            string get_students = string.Format("select * from student where department = '{0}' ", dept.SelectedValue.ToString());
            DataTable students = m.filldt(get_students);

            attendence.DataSource = students;
            attendence.DataBind();

            m.cn.Close();
            m = null;    
        
    }
    protected void dept_TextChanged(object sender, EventArgs e)
    {
            main_class m = new main_class();

            string get_students = string.Format("select * from student where department = '{0}' ", dept.SelectedValue.ToString());
            DataTable students = m.filldt(get_students);

            attendence.DataSource = students;
            attendence.DataBind();

            m.cn.Close();
            m = null;
       
    }
    protected void fill_Click(object sender, EventArgs e)
    {
        string professor = Session["Professor_Username"].ToString();
        main_class m = new main_class();
        
        for (int i = 0; i < attendence.Rows.Count; i++)
        {
            string result = "";
                RadioButtonList rb = attendence.Rows[i].Cells[4].FindControl("rblist") as RadioButtonList;
                if (rb.Items[0].Selected == true)
                {
                    result = "Present";
                }
                if (rb.Items[1].Selected == true)
                {
                    result = "Absent";
                }

            int max_id=m.get_maxid("attendence");
            string ins_attn = string.Format("insert into attendence values ({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}',{8}) ",
                max_id,
                attendence.Rows[i].Cells[0].Text,
                attendence.Rows[i].Cells[1].Text,
                attendence.Rows[i].Cells[2].Text,
                result,
                professor,
                date.Text.ToString(),
                subject.Text,
                attendence.Rows[i].Cells[3].Text);
            m.insertvalues(ins_attn);
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Professor_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
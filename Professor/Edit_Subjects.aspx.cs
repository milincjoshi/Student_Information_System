using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Eedit_Subjects : System.Web.UI.Page
{
    main_class m = new main_class();

    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Professor_Eedit_Subjects_LoadComplete;
    }

    void Professor_Eedit_Subjects_LoadComplete(object sender, EventArgs e)
    {

        string username = "";

        try { username = Session["Professor_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Professor_Login.aspx"); }
        
        Bind_subjects(username);
    }
    protected void add_Click(object sender, EventArgs e)
    {
        string username = Session["Professor_Username"].ToString();

        int id = m.get_maxid("Professor_subjects");

        string insert = string.Format("insert into professor_subjects values ({0},'{1}','{2}') ",id,subject_name.Text,username);
        m.insertvalues(insert);

        Bind_subjects(username);
    }
    protected void subjects_bound_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string username = Session["Professor_Username"].ToString();

        string i = subjects_bound.Rows[e.RowIndex].Cells[0].Text;

        string delete_subject = string.Format("delete from professor_subjects where subject_name= '{0}' and professor_username = '{1}' ", i,username);
        m.insertvalues(delete_subject);

        Bind_subjects(username);
    }


    void Bind_subjects(string username) {

        string get_subjects = string.Format("select * from professor_subjects where professor_username = '{0}' ", username);
        DataTable dt_subjects = m.filldt(get_subjects);

        subjects_bound.DataSource = dt_subjects;
        subjects_bound.DataBind();

    
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Professor_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
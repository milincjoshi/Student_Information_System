using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_add_Edit_departments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Admin_add_Edit_departments_LoadComplete;
    }

    void Admin_add_Edit_departments_LoadComplete(object sender, EventArgs e)
    {
        if (Session.Count == 0) { Response.Redirect("Login.aspx"); }
        else
        {
            string professor = Session["admin"].ToString();
            bind_files();
        }
    }
    protected void docs_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void docs_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        main_class m = new main_class();

        string i = dept.Rows[e.RowIndex].Cells[0].Text;
        string deleterow = string.Format("delete from department where Department_Id = {0}", i);
        SqlCommand delete_cmd = new SqlCommand(deleterow, m.cn);
        delete_cmd.ExecuteNonQuery();


        bind_files();

        m.cn.Close();
        i = null;

        delete_cmd.Dispose();
    
    }
    protected void dept_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    public void bind_files()
    {
        main_class m = new main_class();

        string admin = Session["admin"].ToString();

        string get_docs = string.Format("select * from department where admin_name = '{0}' ", admin);

        DataTable dt = m.filldt(get_docs);
        
        dept.DataSource = dt;
        dept.DataBind();
    }
    protected void dept_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        string admin= Session["User"].ToString();

        main_class m = new main_class();
        
        int max_id = m.get_maxid("Department");
        string ins = string.Format("insert into department values ({0},'{1}','{2}') ",max_id,department.Text,admin);
        m.insertvalues(ins);

        bind_files();
    }
    protected void logout_Click(object sender, EventArgs e)
    {

    }
}
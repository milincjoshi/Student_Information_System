using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_ApproveProfessor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Admin_Admin_ApproveProfessor_LoadComplete;
    }

    void Admin_Admin_ApproveProfessor_LoadComplete(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_profesor();  
        }
        else
        {
                   
        }
      
    }
    protected void approve_Click(object sender, EventArgs e)
    {
        object ID = ((Button)sender).CommandArgument;
        Response.Write(ID.ToString());

        main_class m = new main_class();
        string update = string.Format("update professor set approved = 'Yes' where Professor_Id= {0} ",ID);
        m.insertvalues(update);

        bind_profesor();
    }
    void bind_profesor() {

        main_class m = new main_class();

        //string get_students = string.Format("select * from professor where approved = 'No' ");

        string get_students = string.Format("select * from professor where  approved = 'No' ");
        
        DataTable dt = m.filldt(get_students);

        professor.DataSource = dt;
        professor.DataBind();

        m.cn.Close();
        m = null;
    }
    protected void search_professor_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            main_class m = new main_class();

            string search_pro = string.Format("select * from Professor where Fname LIKE '%{0}%'  OR Lname LIKE '%{0}%' ", search_professor.Text);

            DataTable dt = m.filldt(search_pro);

            professor.DataSource = dt;
            professor.DataBind();

            m.cn.Close();
            m = null;    
        }
        
    }
    protected void logout_Click(object sender, EventArgs e)
    {

    }
}
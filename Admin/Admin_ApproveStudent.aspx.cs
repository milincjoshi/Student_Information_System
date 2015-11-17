using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_ApproveStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Admin_Admin_ApproveStudent_LoadComplete;
    }

    void Admin_Admin_ApproveStudent_LoadComplete(object sender, EventArgs e)
    {
        Bind_students();
    }
    protected void approve_Click(object sender, EventArgs e)
    {
        object ID = ((Button)sender).CommandArgument;
        Response.Write(ID.ToString());

        main_class m = new main_class();
        string update = string.Format("update Student set approved = 'Yes' where Student_Id= {0} ", ID);
        m.insertvalues(update);

        Bind_students();
    }

    void Bind_students() {
        
        main_class m = new main_class();

        string get_students = string.Format("select * from student where approved = 'No' ");
        DataTable dt = m.filldt(get_students);

        students.DataSource = dt;
        students.DataBind();
     
        m.cn.Close();
    }
    protected void logout_Click(object sender, EventArgs e)
    {

    }
}
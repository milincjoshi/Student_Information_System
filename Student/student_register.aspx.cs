using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_stidemt_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }
    protected void signup_Click(object sender, EventArgs e)
    {
         main_class m = new main_class();

        //check
        string check = string.Format("select * from professor where username = '{0}' ", studnt_usrname.Text);
        DataTable dt = m.filldt(check);

        if (dt.Rows.Count != 0)
        {
            exists.Visible = true;
        }
        else
        {
            int id = m.get_maxid("student");

            string student_register = string.Format("insert into student (student_Id,FName,Email,Contactno,Username,Password,approved) values  ({0},'{1}','{2}',{3},'{4}','{5}','No') ",
                id,
                studnt_name.Text,
                studnt_email.Text,
                Studnt_no.Text,
                studnt_usrname.Text,
                studnt_passwrd.Text);
            m.insertvalues(student_register);

            m.cn.Close();
            m = null;
    
            Response.Redirect("student_login.aspx");

        }
         
        }
}
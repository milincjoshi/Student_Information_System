using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Professor_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signup_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();

        //check
        string check = string.Format("select * from professor where username = '{0}' ",Profesor_usrname.Text);
        DataTable dt = m.filldt(check);

        if (dt.Rows.Count != 0)
        {
            exists.Visible = true;
        }
        else
        {
            int id = m.get_maxid("professor");

            string professor_register = string.Format("insert into professor (professor_Id,FName,Email,Contactno,Username,Password,approved,institute) values  ({0},'{1}','{2}',{3},'{4}','{5}' , 'No' , '{6}') ",
                id,
                Profesor_name.Text,
                Profesor_email.Text,
                Profesor_no.Text,
                Profesor_usrname.Text,
                Profesor_passwrd.Text,
                institute.Text);
            m.insertvalues(professor_register);

            //dispose
            m.cn.Close();
            m = null;

            Response.Redirect("Professor_login.aspx");


        }

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Professor_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Professor_Professor_EditProfile_LoadComplete;
    }

    void Professor_Professor_EditProfile_LoadComplete(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string username = "";
        try {  username = Session["Professor_Username"].ToString();}
        catch (Exception ex) { Response.Redirect("Professor_login.aspx"); }
        string load_data = string.Format("select * from Professor where username = '{0}' ", username);
        DataTable dt = m.filldt(load_data);

        string get_dept = string.Format("select distinct department_name from department");
        DataTable dt1 = m.filldt(get_dept);

        department.DataSource = dt1;
        department.DataBind();

        first_name.Text = dt.Rows[0]["fname"].ToString();
        Middle_name.Text = dt.Rows[0]["mname"].ToString();
        last_name.Text = dt.Rows[0]["lname"].ToString();
        mail_id.Text = dt.Rows[0]["email"].ToString();
        img.ImageUrl = dt.Rows[0]["ProfilePic"].ToString();
        contactno.Text = dt.Rows[0]["contactno"].ToString();
        //high_school.Text = dt.Rows[0]["school"].ToString();
        college.Text = dt.Rows[0]["INSTITUTE"].ToString();
        gender.Text = dt.Rows[0]["gender"].ToString();
        bdate_date.Text = dt.Rows[0]["bdate"].ToString();
        enrollmentno.Text = dt.Rows[0]["Professor_Id"].ToString();
        department.SelectedValue = dt.Rows[0]["department"].ToString();


        m.cn.Close();

        m = null;
    }
    protected void save_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();


         string username = Session["Professor_Username"].ToString();

        string img_path = "";

        //Image Upload Code
        if (FileUpload1.HasFile)
        {
            try { System.IO.File.Delete(MapPath(img.ImageUrl)); }
            catch { }
            img_path = "/images/ProfilePic_Professor/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img_path));

        }
        else
        {
            img_path = img.ImageUrl;
        }


        string update = string.Format("update Professor set fname='{0}',Mname='{1}',Lname='{2}',Profilepic='{3}',contactno={4},bdate='{5}',email='{6}',institute='{7}',gender='{8}',department='{9}' where username='{10}'",
                                         first_name.Text,
                                         Middle_name.Text,
                                         last_name.Text,
                                         img_path,
                                         contactno.Text,
                                         bdate_date.Text,
                                         mail_id.Text,
                                         college.Text,
                                         gender.Text,
                                         department.Text,
                                         username);
            m.insertvalues(update);
            Response.Redirect("Professor_Home.aspx");
        

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Professor_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
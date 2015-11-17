using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_edit_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Student_edit_profile_LoadComplete;
    }

    void Student_edit_profile_LoadComplete(object sender, EventArgs e)
    {

        main_class m = new main_class();
        string username = "";
        try { username = Session["Student_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Student_login.aspx"); }
        string get = string.Format("select * from student where username = '{0}' ",username);
        DataTable dt = m.filldt(get);



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
        high_school.Text= dt.Rows[0]["school"].ToString();
        college.Text = dt.Rows[0]["college"].ToString();
        gender.Text = dt.Rows[0]["gender"].ToString();
        bdate_date.Text = dt.Rows[0]["bdate"].ToString();
        enrollmentno.Text = dt.Rows[0]["Enrollno"].ToString();
        //department.Text = dt.Rows[0]["department"].ToString();
        department.SelectedValue = dt.Rows[0]["department"].ToString();

       

    }
    protected void save_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();


        string img_path = "";

        //Image Upload Code
        if (FileUpload1.HasFile)
        {
            try { System.IO.File.Delete(MapPath(img.ImageUrl)); }
            catch { }
            img_path = "/images/ProfilePic_Student/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img_path));

        }
        else
        {
            img_path = img.ImageUrl;
        }


        //
        string username = Session["Student_Username"].ToString();
        int id = m.get_idfromusername("student",username);

        string update = string.Format("update student set fname='{0}',"+
        "mname='{1}',"+
        "lname='{2}',"+
        "email='{3}',"+
        "contactno={4},"+
        "profilepic='{5}',"+
        "school='{6}',"+
        "college='{7}',"+
        "bdate='{8}',"+
        "gender='{9}',"+
        "enrollno='{10}',"+
        "department = '{11}' where student_id = {12}",
        first_name.Text,
        Middle_name.Text,
        last_name.Text,
        mail_id.Text,
        contactno.Text,
        img_path,
        high_school.Text,
        college.Text,
        bdate_date.Text,
        gender.Text,
        enrollmentno.Text,
        department.Text, id );

        m.insertvalues(update);
        m = null;
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Student_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
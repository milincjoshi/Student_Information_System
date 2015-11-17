using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student_SearchDocs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = "";
        try { username = Session["Student_Username"].ToString(); }
        catch (Exception ex) { Response.Redirect("Student_login.aspx"); }
       
    //    RachanaC r = new RachanaC();
    //    SqlConnection cn = new SqlConnection(RachanaC.cs);
    //    cn.Open();

    //    string i = ((Button)sender).CommandArgument.ToString();
    //    string d = string.Format("select * from  RachanaPhotoGallery where Id = {0}", i);
    //    SqlDataAdapter adp = new SqlDataAdapter(d, cn);
    //    DataTable dt = new DataTable();
    //    adp.Fill(dt);


    //    string q = dt.Rows[0]["image_path"].ToString();
    //    // MapPath(q);

    //    string remoteUri = @"http://www.rachanaconstruction.co/images/PhotoGallery/";

    //    //  string filePath = (sender as LinkButton).CommandArgument;
    //    string filePath = q;
    //    Response.ContentType = ContentType;
    //    Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
    //    Response.WriteFile(filePath);
    //    Response.End();

    //    cn.Close();
    }
    protected void view_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();
        string i = ((Button)sender).CommandArgument.ToString();
        string get = string.Format("select * from docs where docs_id = '{0}' ",i);
        DataTable dt = m.filldt(get);

        string outputPdfFile = dt.Rows[0]["doc_path"].ToString();
        
        Response.ContentType = "Application/pdf";
        Response.TransmitFile(outputPdfFile);

    }
    protected void searchbtn_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string get_docs = string.Format("SELECT * FROM docs WHERE doc_title LIKE '%{0}%' ", search.Text );
        DataTable dt = m.filldt(get_docs);

        docs.DataSource = dt;
        docs.DataBind();

        m.cn.Close();
        m = null;
    }
    protected void download_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();

        string i = ((Button)sender).CommandArgument.ToString();
        string d = string.Format("select * from docs where docs_id = {0}", i);
        DataTable dt = m.filldt(d);

        string q = dt.Rows[0]["doc_path"].ToString();
        string filePath = q;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();

        m.cn.Close();
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Student_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
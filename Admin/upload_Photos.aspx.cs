using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_upload_Photos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Admin_upload_Photos_LoadComplete;
    }

    void Admin_upload_Photos_LoadComplete(object sender, EventArgs e)
    {
        if (Session.Count == 0)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else
        {
            string User = Session["admin"].ToString();

            main_class m = new main_class(); 
            Image_Results.DataSource = m.displayImages();
            Image_Results.DataBind();
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("index.aspx");
    }
    protected void Upload_Image_Click(object sender, EventArgs e)
    {
        string User = Session["admin"].ToString();

        if (User == null || User == string.Empty)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else
        {

            string cat = "hello";
            main_class m = new main_class();

            //file upload code
            if (FileUpload1.HasFile)
            {

            
                    string q = "/images/PhotoGallery/" + FileUpload1.PostedFile.FileName;
                    FileUpload1.SaveAs(MapPath(q));


                    int max_id = m.get_maxid("PhotoGallery");
                    //Inserting in db
                    string q1 = string.Format("insert into PhotoGallery values ({0},'{1}','{2}','{3}') ", max_id, q, cat, User);

                    SqlCommand insertCommand = new SqlCommand(q1, m.cn);
                    insertCommand.ExecuteNonQuery();
                    Response.Write("Image Uploaded");
            
            }
          
            m.cn.Close();
            m = null;
        }
    }
    protected void Image_Results_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        main_class m = new main_class();

        string i = Image_Results.Rows[e.RowIndex].Cells[0].Text;
        string deleterow = string.Format("delete from PhotoGallery where PhotoGallery_Id = {0}", i);
        SqlCommand delete_cmd = new SqlCommand(deleterow, m.cn);
        delete_cmd.ExecuteNonQuery();

        Image_Results.DataSource = m.displayImages();

        m.cn.Close();
        m= null;
        i = null;

        delete_cmd.Dispose();
    }
    protected void Image_Results_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void download_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();
        
        string i = ((Button)sender).CommandArgument.ToString();
        string d = string.Format("select * from  PhotoGallery where PhotoGallery_Id = {0}", i);
        SqlDataAdapter adp = new SqlDataAdapter(d, m.cn);
        DataTable dt = new DataTable();
        adp.Fill(dt);


        string q = dt.Rows[0]["image_path"].ToString();
        // MapPath(q);

        // string remoteUri = @"http://www.rachanaconstruction.co/images/PhotoGallery/";

        //  string filePath = (sender as LinkButton).CommandArgument;
        string filePath = q;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();

        m.cn.Close();
    
    }
}
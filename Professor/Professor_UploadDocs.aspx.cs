using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Professor_UploadDocs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Professor_Professor_UploadDocs_LoadComplete;
    }
    void Professor_Professor_UploadDocs_LoadComplete(object sender, EventArgs e)
    {
        if (Session.Count == 0){Response.Redirect("Professor_Login.aspx");}
        else{string professor = Session["Professor_Username"].ToString();
                bind_files();}
    }
    protected void docs_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {   
        main_class m = new main_class();
       
        string i = docs.Rows[e.RowIndex].Cells[0].Text;
        string deleterow = string.Format("delete from docs where Id = {0}", i);
        SqlCommand delete_cmd = new SqlCommand(deleterow,m.cn);
        delete_cmd.ExecuteNonQuery();

        string get_docs = string.Format("select * from docs where Professor_username = '{0}' ", professor);
       
        DataTable dt = m.filldt(get_docs);

        docs.DataSource = dt;
        docs.DataBind();

        m.cn.Close();
        i = null;

        delete_cmd.Dispose();
    }
    protected void docs_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    protected void Upload_doc_Click(object sender, EventArgs e)
    {
        string professor = Session["Professor_Username"].ToString();
        main_class m = new main_class();
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".PPTX" || ext == ".pptx" || ext == ".PPT" || ext == ".ppt" || ext == ".pdf" || ext == ".PDF" || ext == ".txt" || ext == ".TXT" || ext == ".DOC" || ext == ".doc" || ext == ".DOCX" || ext == ".docx")
                {
                    string q = "/Docs/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(MapPath(q));

                    int max_id = m.get_maxid("docs");
                    //Inserting in db
                    string q1 = string.Format("insert into docs values ({0},'{1}','{2}','{3}') ", max_id, professor, q, doc_title.Text);
                    m.insertvalues(q1);
                    Response.Write("File Uploaded");

                    bind_files();
                }
                else
                {
                    Response.Write("Only PDF Files allowed");
                }
            }
    }
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        main_class m = new main_class();
     
        string i = ((LinkButton)sender).CommandArgument.ToString();
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

    public void bind_files() {

        main_class m = new main_class();

        string professor = Session["Professor_Username"].ToString();

        string get_docs = string.Format("select * from docs where Professor_username = '{0}' order by docs_id DESC ",professor);

        DataTable dt = m.filldt(get_docs);
        dt.Columns.Add("doc_name");
        dt.Columns.Add("filename");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            FileInfo f = new FileInfo( MapPath( dt.Rows[i]["doc_path"].ToString()));
            dt.Rows[i]["doc_name"] = getsize(f.Length);
            dt.Rows[i]["filename"] = f.Name;
        }

        docs.DataSource = dt;
        docs.DataBind();

    }

    public string getsize(double len) {

        string[] sizes = { "B", "KB", "MB", "GB" };
        int order = 0;
        while (len >= 1024 && order + 1 < sizes.Length)
        {
            order++;
            len = len / 1024;
        }
        // Adjust the format string to your preferences. For example "{0:0.#}{1}" would
        // show a single decimal place, and no space.
        string result = String.Format("{0:0.##} {1}", len, sizes[order]);
        return result;
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Professor_Username"] = null;
        Response.Redirect("/Home.aspx");
    }
}
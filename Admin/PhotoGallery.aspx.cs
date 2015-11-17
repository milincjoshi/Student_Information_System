using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_PhotoGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += Admin_PhotoGallery_LoadComplete;
    }

    void Admin_PhotoGallery_LoadComplete(object sender, EventArgs e)
    {
        main_class m = new main_class();
        DataTable dt = m.displayImages();

        //dt.Columns.Add("Image_toshare");

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{   
        //    dt.Rows[i]["image_toshare"] = Path.GetFileName(dt.Rows[i]["image_path"].ToString()); ;
        //}

        Image_Results.DataSource = dt;
        Image_Results.DataBind();
    }
}
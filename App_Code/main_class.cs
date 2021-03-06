﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for main_class
/// </summary>
public class main_class
{
    public SqlConnection cn;

    public main_class()
    {
        cn = new SqlConnection(cs);
        cn.Open();

    }

    public static string cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ravi a\Documents\Visual Studio 2013\WebSites\college_project_ravi\App_Data\pupilporatldb.mdf";
    public void insertvalues(string insert)
    {

        SqlCommand cmd = new SqlCommand(insert, cn);
       cmd.ExecuteNonQuery();

        cmd.Dispose();
        insert = null;
    }
    public DataTable filldt(string getValue)
    {

        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(getValue, cn);
        adp.Fill(dt);

        adp.Dispose();
        return dt;
    }
    public string get_usernamefromid(string table_name, int id)
    {
        string get_username = string.Format("select * from {0}_list where Id = '{1}' ", table_name, id);
        SqlDataAdapter username_adp = new SqlDataAdapter(get_username, cn);
        DataTable username_dt = new DataTable();
        username_adp.Fill(username_dt);

        string Username_fromid = username_dt.Rows[0][4].ToString();

        //disposing
        get_username = null;
        username_adp.Dispose();
        username_dt.Dispose();

        return Username_fromid;
    }

    public int get_idfromusername(string table_name, string username)
    {
        string get_id = string.Format("select * from {0} where username = '{1}' ", table_name, username);
        SqlDataAdapter id_adp = new SqlDataAdapter(get_id, cn);
        DataTable id_dt = new DataTable();
        id_adp.Fill(id_dt);

        int id_fromusername = int.Parse(id_dt.Rows[0][0].ToString());

        //disposing
        get_id = null;
        id_adp.Dispose();
        id_dt.Dispose();

        return id_fromusername;
    }
    public int get_maxid(string tablename)
    {
        string get_max_id = string.Format("select MAX(" + tablename + "_id) from {0} ", tablename);
        SqlDataAdapter max_adp = new SqlDataAdapter(get_max_id, cn);
        DataTable max_dt = new DataTable();
        max_adp.Fill(max_dt);

        int maxid;

        try { maxid = int.Parse(max_dt.Rows[0][0].ToString()); maxid++; }
        catch (Exception) { maxid = 0; }

        //disposing
        get_max_id = null;
        max_adp.Dispose();
        max_dt.Dispose();

        return maxid;
    }
    public DataTable displayImages()
    {

        SqlConnection cn = new SqlConnection(cs);
        cn.Open();

        string get_imgs = string.Format("Select * from PhotoGallery ORDER BY PhotoGallery_Id DESC");
        SqlDataAdapter get_imgs_adp = new SqlDataAdapter(get_imgs, cn);
        DataTable get_imgsdt = new DataTable();
        get_imgs_adp.Fill(get_imgsdt);

        cn.Close();
        return get_imgsdt;

    }


}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class oppilaat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGet3_Click(object sender, EventArgs e)
    {
        DataTable dt = JAMK.ICT.Data.DBPlacebo.Get3TestStudents();
        gvStudents.DataSource = dt;
        gvStudents.DataBind();
    }

    protected void btnGetAll_Click(object sender, EventArgs e)
    {
        //Haetaan oppilaat tietokannasta datatableen
        string cs = ConfigurationManager.ConnectionStrings["Oppilaat"].ConnectionString;
        string messu = "";
        try
        {
            DataTable dt = JAMK.ICT.Data.DBPlacebo.GetAllStudentsFromSQLServer(cs, "oppilaat", out messu);
            gvStudents.DataSource = dt;
            gvStudents.DataBind();
            lblMessages.Text = messu;
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }

    }
}
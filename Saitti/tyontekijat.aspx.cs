using System;
using System.Data;                  //Dataa ja yleisiä ADO.NET
using System.Configuration;         //web conffing lukemista varten
using System.Collections.Generic;   
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tyontekijat : System.Web.UI.Page
{
    string xmlfilu;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Haetaan web.configista xml-tiedoston nimi
        xmlfilu = ConfigurationManager.AppSettings["xmlfilu"];
        lblMessages.Text = xmlfilu;
    }

    protected void BtnHae_Click(object sender, EventArgs e)
    {
        //Haetaan XML-data DataView-olioon, joka kytketään GridViewhen
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataView dv = new DataView();
        ds.ReadXml(Server.MapPath(xmlfilu)); //Huom! MapPath muuttaa viittauksen websaitille!
        dt = ds.Tables[0];
        dv = dt.DefaultView;
        gvData.DataSource = dv;
        gvData.DataBind();
    }
}
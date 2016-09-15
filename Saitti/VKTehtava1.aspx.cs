using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Configuration;

public partial class VKTehtava1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLaske_Click(object sender, EventArgs e)
    {
        //Lasketaan ikkunan tarjoushinta
        try{
            //Käyttäjän syötteet on AINA syytä tarkistaa
            if(txtKorkeus.Text.Length * txtLeveys.Text.Length * txtKarmi.Text.Length > 0)
            {
                double leveys = Convert.ToDouble(txtLeveys.Text);
                double korkeus = Convert.ToDouble(txtKorkeus.Text);
                double karmi = Convert.ToDouble(txtKarmi.Text);
                double pintaAla = ((leveys - (2* karmi)) / 1000) * ((korkeus - (2* karmi)) / 1000 ); // m2
                double piiri = 2 * ((leveys / 1000) + (korkeus / 1000)); // jm
                double aluhinta = Convert.ToDouble(ConfigurationManager.AppSettings["alumiininhinta"]); // € / m2
                double lasihinta = Convert.ToDouble(ConfigurationManager.AppSettings["lasihinta"]); // € / jm
                double tyomenekki = Convert.ToDouble(ConfigurationManager.AppSettings["tyomenekki"]); // € / ikkuna
                double kate = 0.3;
                //hinnan laskenta
                double hinta = (1 + kate) * ((pintaAla * lasihinta) + (piiri * aluhinta) + tyomenekki);
                //tulos UI:hin
                lblTarjoushinta.Text = hinta.ToString("C2", CultureInfo.CreateSpecificCulture("fi-FI"));
                lblKarminPiiri.Text = piiri.ToString();
                lblPintaAla.Text = pintaAla.ToString();
            }
            else
            {
                lblMessages.Text = "Tarkista syötteet!";
            }
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }
}
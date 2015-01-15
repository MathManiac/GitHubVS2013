using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathManiac1.Formelsamling
{
    public partial class andengrads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string andengrads = @"x=\frac{-b\pm \sqrt{d}}{2a}";
            andenGrads.Text = andengrads;

            string toppunkt = @"Tp=\left(\frac{-b}{2a};\frac{-d}{4a}\right)";
            topPunkt.Text = toppunkt;

            string toppunkteks = @"Tp=(\frac{-3}{-2};\frac{-25}{-4})";
            topPunkteks.Text = toppunkteks;
        }
    }
}
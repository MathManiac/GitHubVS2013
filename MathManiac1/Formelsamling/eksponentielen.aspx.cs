using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathManiac1.Formelsamling
{
    public partial class eksponentielen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string eksponentiel = @"a=\sqrt[\Large x_2-x_1]{\frac{y_2}{y_1}}";
            eksponenTiel.Text = eksponentiel;

            string eksponentieleks = @"a=\sqrt[\LARGE {8-3}]{\frac{10}{7}}";
            eksponenTieleks.Text = eksponentieleks;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathManiac1.Tasks
{
    public partial class topunkteksp : System.Web.UI.Page
    {
        Random rnd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void newTasks_Click(object sender, EventArgs e)
        {
            int newa = rnd.Next(-4, 5);
            int newb = rnd.Next(1, 7);
            int newc = rnd.Next(-4, 5);
            int newd = rnd.Next(1, 5);

            newTask.Text = "";

            if (newa == newc)
            {
                newc = (newc % 9) + 1;
            }
            avalue.Value = string.Format("{0}", newa);
            bvalue.Value = string.Format("{0}", newb);

            string punkter = "A(x1;y1) og B(x2;y2)";

            string firstx = punkter.Replace("x1", newa.ToString());
            string firsty = firstx.Replace("y1", newb.ToString());
            string secondx = firsty.Replace("x2", newc.ToString());
            string secondy = secondx.Replace("y2", newd.ToString());

            newTask.Text = secondy;

            CurrentTask.Value = String.Format("{0};{1};{2};{3}",
                    newa, newb, newc, newd);

            newtaskkoefficienter.Text = "";
            slope.Text = "";
            croosYaxis.Text = "";
            forskrift.Text = "";

            box.Visible = false;
        }

        public void newTasksSolution_Click(object sender, EventArgs e)
        {

            var values = CurrentTask.Value.Split(new char[] { ';' });

            double vista = 0;
            double vistb = 0;
            double vistc = 0;
            double vistd = 0;

            if (!double.TryParse(values[0], out vista)
                || !double.TryParse(values[1], out vistb)
                || !double.TryParse(values[2], out vistc)
                || !double.TryParse(values[3], out vistd))
            {
                newtaskkoefficienter.Text = "Der skete en fejl under reetabelering af opgaven.";
            }

            newtaskkoefficienter.Text = "x_1=" + vista.ToString() + " , " + "y_1=" + vistb.ToString() + " , " +
                "x_2=" + vistc.ToString() + " , " + "y_2=" + vistd.ToString();

            {
                double yere = Math.Round(((vistd / vistb)), 3);
                double xere = Math.Round((1 / (vistc - vista)), 3);

                double a = Math.Round((Math.Pow(yere, xere)), 3);
                double b = Math.Round((vistb / (Math.Pow(a, vista))), 2);

                slope.Text = "a=" + a.ToString();
                croosYaxis.Text = "b=" + b.ToString();



                if (b < 0)
                {
                    forskrift.Text = "f(x)=" + a + " x " + b;
                }
                else
                {
                    string nyforskrift = @"f(x)=b*a^x";

                    string showna = nyforskrift.Replace("a", a.ToString());
                    string shownb = showna.Replace("b", b.ToString());

                    forskrift.Text = shownb;
                }

                avalue.Value = string.Format("{0}", a);
                bvalue.Value = string.Format("{0}", b);

                
            }

            box.Visible = true;
        }
    }
}
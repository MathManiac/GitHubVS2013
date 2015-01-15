using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathManiac1.Tasks
{
    public partial class topunktret : System.Web.UI.Page
    {
        Random rnd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void newTasks_Click(object sender, EventArgs e)
        {
            int newa = rnd.Next(-4, 5);
            int newb = rnd.Next(-4, 7);
            int newc = rnd.Next(-4, 5);
            int newd = rnd.Next(-4, 5);

            string punkter = "A(x1;y1) og B(x2;y2)";
            newTask.Text = "";
            if (newa == newc)
            {
                newc = (newc % 9) + 1;
            }
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


            double a = Math.Round(((vistd - vistb) / (vistc - vista)), 2);
            double b = Math.Round((vistb - a * vista), 2);

            slope.Text = "a=" + a.ToString();
            croosYaxis.Text = "b=" + b.ToString();
            if (b < 0)
            {
                forskrift.Text = "f(x)=" + a + " x " + b;
            }
            else
            {
                forskrift.Text = "f(x)=" + a + " x " + " + " + b;
            }

            avalue.Value = string.Format("{0}", a);
            bvalue.Value = string.Format("{0}", b);

            box.Visible = true;
        }
    }
}
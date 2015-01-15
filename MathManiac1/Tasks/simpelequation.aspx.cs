using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathManiac1.Tasks
{
    public partial class simpelequation : System.Web.UI.Page
    {
        Random rnd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void newTasks_Click(object sender, EventArgs e)
        {
            int newa = rnd.Next(1, 19) + 1; if (newa > 9) newa -= 20;
            int newb = rnd.Next(1, 19) + 1; if (newb > 9) newb -= 20;
            int newd = rnd.Next(1, 19) + 1; if (newd > 9) newd -= 20;
            int newe = rnd.Next(1, 19) + 1; if (newe > 9) newe -= 20;

            int newc = newd * newa + newb;

            int newf = newe + newd;


            if (newb < 0 && newe > 0 && newa != 0 && newb != 0 && newd != 0 && newe != 0 && newf != 0)
            {
                string ligning = @"{0}x{1}={2}+{3}x";

                newTask.Text = string.Format(ligning, newf, newb, newc, newe);

                Xligmed.Value = string.Format("{0}", newa);
            }

            if (newb < 0 && newe < 0 && newa != 0 && newb != 0 && newd != 0 && newe != 0 && newf != 0)
            {

                string ligning = @"{0}x{1}={2}{3}x";
                newTask.Text = string.Format(ligning, newf, newb, newc, newe);


                Xligmed.Value = string.Format("{0}", newa);
            }

            if (newb > 0 && newe < 0 && newa != 0 && newb != 0 && newd != 0 && newe != 0 && newf != 0)
            {

                string ligning = @"{0}x+{1}={2}{3}x";
                newTask.Text = string.Format(ligning, newf, newb, newc, newe);



                Xligmed.Value = string.Format("{0}", newa);
            }

            if (newb > 0 && newe > 0 && newa != 0 && newb != 0 && newd != 0 && newe != 0 && newf != 0)
            {

                string ligning = @"{0}x+{1}={2}+{3}x";
                newTask.Text = string.Format(ligning, newf, newb, newc, newe);


                Xligmed.Value = string.Format("{0}", newa);
            }
            newtaskkoefficienter.Text = "";
        }

        public void newTasksSolution_Click(object sender, EventArgs e)
        {

            var values = Xligmed.Value.Split(new char[] { ';' });

            int xlig = 0;

            int.TryParse(values[0], out xlig);

            newtaskkoefficienter.Text = "x = " + xlig.ToString();
        }
    }
}
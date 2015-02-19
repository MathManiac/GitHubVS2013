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
            //rosellerris.Text = "";
            studentSolution.Text = "";
            studentSolution.BackColor = System.Drawing.ColorTranslator.FromHtml("");
        }

        public void newTasksSolution_Click(object sender, EventArgs e)
        {
            int counter = 0; 
            var counterValues = counterbackup.Value.Split(new char[] { ';' });
            int.TryParse(counterValues[0], out counter);
 
            int xlig = 0;
            var values = Xligmed.Value.Split(new char[] { ';' });
            int.TryParse(values[0], out xlig);

            var studentAnswer = studentSolution.Text;
            rosellerris.Text = studentAnswer;

            int answer;
            bool isNumerical = int.TryParse(studentAnswer, out answer);
            if (answer == xlig)
            {
                counter = counter + 1;
                rosellerris.Text = "Godt arbejde, x er lig " + xlig.ToString() + " ,din score er " + counter.ToString() + "." + " Når du 10 rigtige i træk ringer NASA (måske)";
                studentSolution.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                counterbackup.Value = string.Format("{0}", counter);
                if(counter==10){
                    rosellerris.Text = "Du er for sej, rigtigt godt arbejde. Fortsæt denne flid, og så VIL NASA ringe";
                }
            }
            else
            {
                counter = 0;
                counterbackup.Value = string.Format("{0}", counter);
                rosellerris.Text = "Æv, prøv igen, fokuser på at isolere x på en af siderne af lighedstegnet. Score = "+ counter.ToString();
                studentSolution.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");      
            }
            //newtaskkoefficienter.Text = "x = " + xlig.ToString();
            //newtaskkoefficienter.Text = "x = " + counter.ToString();
            studentSolution.Text = "";
        }
    }
}
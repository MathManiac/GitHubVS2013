using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace MathManiac1.Tasks
{
    public partial class modellering : System.Web.UI.Page
    {
        Random rnd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void newTasks_Click(object sender, EventArgs e)
        {
            //finder a og b for prisfunktionen
            double a = rnd.Next(1, 6) + 1; if (a > 1) a -= 7;
            double b = 1;
            double c;
            double newa = a * 0.01;
            double newb = b / newa;

            avalue.Value = string.Format("0", newa);

            if (newb % 10 != 0)
            {
                while (newb % 10 != 0)
                {
                    b = rnd.Next(1, 160) + 1; if (b > 1) b -= 176;
                    newb = b / newa;

                    c = b * (-1);
                    dm.Value = string.Format("{0}", newb);
                    avalue.Value = string.Format("{0}", newa);
                    bvalue.Value = string.Format("{0}", c);


                    string prisfunktion = @"p(x)=ax+b";

                    string showna = prisfunktion.Replace("a", newa.ToString());
                    string shownb = showna.Replace("b", c.ToString());
                    
                    firmatekst.Text = "Firmaet \"I do Love math\" sælger variabler. En brugerundersøgelse har fremskaffet følgende prisfunktion:";
                    firmatekst.Visible = true;
                    newTask.Text = shownb.ToString();
                    opgave_1.Text = "Din opgave er nu at finde i hvilket interval vores definitionsmængde for afsætningen skal være.";
                    opgave_1.Visible = true;
                    //to.Text = newb.ToString();
                }
            }
            studentSolution_a.BackColor = System.Drawing.ColorTranslator.FromHtml("");
            studentSolution_b.BackColor = System.Drawing.ColorTranslator.FromHtml("");
            rev_1.BackColor = System.Drawing.ColorTranslator.FromHtml("");
            rev_2.BackColor = System.Drawing.ColorTranslator.FromHtml("");
            profit_1.BackColor = System.Drawing.ColorTranslator.FromHtml("");
            profit_2.BackColor = System.Drawing.ColorTranslator.FromHtml("");
            revenue_start.Visible = false;
            cost_start.Visible = false;
            profit_start.Visible = false;
        }
        public void newTasksSolution_Click(object sender, EventArgs e)
        {
            bool svar_a;
            bool svar_b;
            int min = 0;

            int dM_max;
            var dM = dm.Value.Split(new char[] { ';' });
            int.TryParse(dM[0], out dM_max);

            var studentAnswer_a = studentSolution_a.Text;
            double answer_a;
            bool isNumerical_a = double.TryParse(studentAnswer_a, out answer_a);

            var studentAnswer_b = studentSolution_b.Text;
            double answer_b;
            bool isNumerical_b = double.TryParse(studentAnswer_b, out answer_b);

            if (answer_a == 0)
            {         
                studentSolution_a.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                svar_a = true;
            }
            else
            {     
                studentSolution_a.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                svar_a = false;
                fejl_min.Text = "Hvad er den den absolut mindste mængde vare du kan afsætte?";
            }
            studentSolution_a.Text = "";

            if (answer_b == dM_max)
            {
                studentSolution_b.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                svar_b = true;
            }
            else
            {
                studentSolution_b.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                svar_b = false;
                fejl_max.Text = "Husk, hvad er prisen når din prisfunktion vil skære x-aksen? Det må være max afsætningen.";
            }
            if (svar_a && svar_b == true)
            {
                dm_svar.Text = "Helt korrekt. Vores definitionsmængde er:";
                dm_svar.Visible = true;

                string def = @"Dm(x) \in [a;b]";

                string showna = def.Replace("a", min.ToString());
                string shownb = showna.Replace("b", dM_max.ToString());

                dm_solution.Text = shownb;

                revenue.Text = "Du ved jo at prisen ganget med afsætningen giver omsætningen. \n I dette tilfælde bliver det en andengradsfunktion. (Hvorfor?) Find nulpunkterne for omsætningsfunktionen.";
                revenue_start.Visible = true;

            }
           //if (counter == 10)
           // {
           //     svar.Text = "Du har ti rigtige i træk. Mon ikke du har styr på det her?";
           // }
            studentSolution_b.Text = "";
        }

        public void revenue_Click(object sender, EventArgs e)
        {
            bool svar_a;
            bool svar_b; 
            int ve = 0;

            int dM_max;
            var dM = dm.Value.Split(new char[] { ';' });
            int.TryParse(dM[0], out dM_max);

            var studentAnswer_a = rev_1.Text;
            double answer_a;
            bool isNumerical_a = double.TryParse(studentAnswer_a, out answer_a);

            var studentAnswer_b = rev_2.Text;
            double answer_b;
            bool isNumerical_b = double.TryParse(studentAnswer_b, out answer_b);

            if (answer_a == 0)
            {
                rev_1.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                svar_a = true;
                rev_1.Text = "";
            }
            else
            {
                rev_1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                svar_a = false;
                fejl_min.Text = "Har du styr på koefficienterne i funktionen?";
                rev_1.Text = "";
            }
            studentSolution_a.Text = "";

            if (answer_b == dM_max)
            {
                rev_2.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                svar_b = true;
                rev_2.Text = "";
            }
            else
            {
                rev_2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                svar_b = false;
                fejl_max.Text = "Har du styr på koefficienterne i funktionen?";
                rev_2.Text = "";
            }
            if (svar_a && svar_b == true)
            {
                rev_svar.Text = "Helt korrekt. Brugte du nulpunktsformlen? Eller din økonomiske forståelse? \n Har du brugt mere end 10 sekunder på opgaven, er det nok førstnævnte.";
                rev_svar.Visible = true;
                rev_1.Text = "";
                rev_2.Text = "";

               // revenue.Text = "Du ved jo at prisen ganget med afsætningen giver omsætningen. \n I dette tilfælde bliver det en andengradsfunktion. (Hvorfor?) Find nulpunkterne for omsætningsfunktionen.";
               // revenue_start.Visible = true;

            }
            //if (counter == 10)
            // {
            //     svar.Text = "Du har ti rigtige i træk. Mon ikke du har styr på det her?";
            // }
            studentSolution_b.Text = "";

            cost.Text = "I enhver virksomhed vil der naturligvis være omkostninger. Omkostningerne står herunder:";
            double a;
            var a_1 = avalue.Value.Split(new char[] { ';' });
            double.TryParse(a_1[0], out a);
            double b;
            var b_1 = bvalue.Value.Split(new char[] { ';' });
            double.TryParse(b_1[0], out b);

            double tp = (b * b )/ ((-4)*a);
            double ko = 0.5 * tp;
            decimal ko_2 = Math.Ceiling((decimal)ko / 1000) * 1000;
            decimal ko_3 = (ko_2 - 1000);

            ve = rnd.Next(3, 11)+1;

            costs.Text ="C(x)=" + ve.ToString() + "x+" + ko_3.ToString();
            dommy_1.Text = ko_3.ToString();
            dommy_2.Text = ve.ToString();
            cost_task.Text = "Du ved jo at dit overskud er lig omsætning minus dine samlede omkostninger. \n Find i hvilket interval der er overskud. Med to decimaler";
            ve_value.Value = string.Format("{0}", ve);
            ko_value.Value = string.Format("{0}", ko_3);
            cost_start.Visible = true;
            profit_start.Visible = true;
        }

        public void profitSolution_Click(object sender, EventArgs e)
        {
            bool svar_a;
            bool svar_b;

            int counter = 0;
            var counterValues = counterbackup.Value.Split(new char[] { ';' });
            int.TryParse(counterValues[0], out counter);

            double a;
            var a_1 = avalue.Value.Split(new char[] { ';' });
            double.TryParse(a_1[0], out a);

            double b;
            var b_1 = bvalue.Value.Split(new char[] { ';' });
            double.TryParse(b_1[0], out b);

            double ve_1;
            var ve_2 = ve_value.Value.Split(new char[] { ';' });
            double.TryParse(ve_2[0], out ve_1);

            double ko_1;
            var ko_2 = ko_value.Value.Split(new char[] { ';' });
            double.TryParse(ko_2[0], out ko_1);

            var profitAnswer_1 = profit_1.Text;
            double answer_a;
            bool isNumerical_a = double.TryParse(profitAnswer_1, out answer_a);

            var profitAnswer_2 = profit_2.Text;
            double answer_b;
            bool isNumerical_b = double.TryParse(profitAnswer_2, out answer_b);

            double b_profit = (b - ve_1);

            double dommy = -1;
            double dommy_ko = -1 * ko_1;

            double d = b_profit * b_profit - 4 * a * dommy_ko;

            double solutionone = Math.Round((dommy * b_profit + Math.Sqrt(d)) / (2 * a), 2);
            double solutiontwo = Math.Round((dommy * b_profit - Math.Sqrt(d)) / (2 * a), 2);

            if (answer_a == solutionone)
            {
                profit_1.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                svar_a = true;
                profit_1.Text = "";
            }
            else
            {
                profit_1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                svar_a = false;
                fejl_min.Text = "Det er dit nulpunkt du skal have styr på, eller afrunding";
                profit_1.Text = "";
            }
            profit_2.Text = "";

            if (answer_b == solutiontwo)
            {
                profit_2.BackColor = System.Drawing.ColorTranslator.FromHtml("#00FF00");
                svar_b = true;
                profit_2.Text = "";
            }
            else
            {
                profit_2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                svar_b = false;
                fejl_max.Text = "Det er dit nulpunkt der driller, har du styr på fortegnene?";
                profit_2.Text = "";
            }
            if (svar_a && svar_b == true)
            {
                ros_profit.Text = "Det var et rigtigt godt stykke arbejde.";
                ros_profit.Visible = true;

                string profit_dm = @"Dm(x) \in ]a;b[";

                string shownb = profit_dm.Replace("a", solutionone.ToString());
                string shownc = shownb.Replace("b", solutiontwo.ToString());

               profit_answer.Text = shownc;


            }
            //if (counter == 10)
            // {
            //     svar.Text = "Du har ti rigtige i træk. Mon ikke du har styr på det her?";
            // }
            studentSolution_b.Text = "";
            dum_pro1.Text = solutionone.ToString();
            dum_pro2.Text = solutiontwo.ToString();
            dum_pro3.Text = "sande b = " + b_profit.ToString();
            dum_pro4.Text = "b = " + b.ToString();
            dum_pro7.Text = "ve = " + ve_1.ToString();
            dum_pro5.Text = "c = " + ko_1.ToString();
            dum_pro6.Text = "d = " + d.ToString();
        }
    }
}
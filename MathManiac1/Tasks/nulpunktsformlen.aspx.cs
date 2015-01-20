using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathManiac1.Tasks
{
    public partial class nulpunktsformlen : System.Web.UI.Page
    {
        Random rnd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         public void newTasks_Click(object sender, EventArgs e)
        {
            //placere tilfældige tal for a,b og c i et andengradspolynomium

            int newa = rnd.Next(1, 3) + 1; if (newa > 9) newa -= 3;
            int newb = rnd.Next(1, 19) + 1; if (newb > 9) newb -= 20;
            int newc = rnd.Next(1, 19) + 1; if (newc > 9) newc -= 20;

            avalue.Value = string.Format("{0}",newa);
            bvalue.Value = string.Format("{0}", newb);
            cvalue.Value = string.Format("{0}", newc);

           

            if (newb < 0 && newc > 0 && newa!=0 && newb !=0 && newc != 0)
            {
                string andengrads = @"f(x)=ax^2bx+c";


                string showna = andengrads.Replace("a", newa.ToString());
                string shownb = showna.Replace("b", newb.ToString());
                string shownc = shownb.Replace("c", newc.ToString());

                newTask.Text = shownc;

                CurrentTask.Value = String.Format("{0};{1};{2}",
                    newa, newb, newc);
            }

            if (newb > 0 && newc > 0 && newa != 0 && newb != 0 && newc != 0)
            {
                string andengrads = @"f(x)=ax^2+bx+c";


                string showna = andengrads.Replace("a", newa.ToString());
                string shownb = showna.Replace("b", newb.ToString());
                string shownc = shownb.Replace("c", newc.ToString());

                newTask.Text = shownc;

                CurrentTask.Value = String.Format("{0};{1};{2}",
                    newa, newb, newc);
            }
            if (newc < 0 && newb < 0 && newa != 0 && newb != 0 && newc != 0)
            {
                string andengrads = @"f(x)=ax^2bxc";


                string showna = andengrads.Replace("a", newa.ToString());
                string shownb = showna.Replace("b", newb.ToString());
                string shownc = shownb.Replace("c", newc.ToString());

                newTask.Text = shownc;

                CurrentTask.Value = String.Format("{0};{1};{2}",
                    newa, newb, newc);
            }

            if (newb > 0 && newc < 0 && newa != 0 && newb != 0 && newc != 0)
            {
                string andengrads = @"f(x)=ax^2+bxc";


                string showna = andengrads.Replace("a", newa.ToString());
                string shownb = showna.Replace("b", newb.ToString());
                string shownc = shownb.Replace("c", newc.ToString());

                newTask.Text = shownc;

                CurrentTask.Value = String.Format("{0};{1};{2}",
                    newa, newb, newc);
            }


            newtaskkoefficienter.Text = "";
            diskreminant.Text = "";
            newtasksolutionone.Text = "";
            newtasksolutiontwo.Text = "";
            ekstrema.Text = "";
            canvas.Visible = false;
            box.Visible = false;

            definition.Text = "";
            nulpunkt.Text = "";
            variationet.Text = "";
            variationto.Text = "";
            variationtre.Text = "";
            tp.Text = "";
            monotoniet.Text = "";
            monotonito.Text = "";
            vm.Text = "";
        }

        public void newTasksSolution_Click(object sender, EventArgs e)
        {

            var values = CurrentTask.Value.Split(new char[] { ';' });          

            int vista = 0;
            int vistb = 0;
            int vistc = 0;

            if (!int.TryParse(values[0], out vista)
                || !int.TryParse(values[1], out vistb)
                || !int.TryParse(values[2], out vistc))
            {
                newtaskkoefficienter.Text = "Der skete en fejl under reetabelering af opgaven.";
            }

            newtaskkoefficienter.Text = "a=" + vista.ToString() + " , " + "b=" + vistb.ToString() + " , " + "c=" + vistc.ToString();
            

            double dommy = -1;
            
            double d = vistb * vistb - 4 * vista * vistc;
            
            double solutionone = Math.Round((dommy * vistb + Math.Sqrt(d)) / (2 * vista),2);
            double solutiontwo = Math.Round((dommy * vistb - Math.Sqrt(d)) / (2 * vista),2);
            double ekstremax = Math.Round(dommy*vistb / (2 * vista),2);
            double ekstremay = Math.Round(dommy * d / (4 * vista),2);
            if (d < 0)
            {
                diskreminant.Text = "Diskriminanten = " + d.ToString();
                newtasksolutionone.Text = "Ingen " + " " + "nulpunkter";
                ekstrema.Text = "Tp = (" + ekstremax.ToString() + ";" + ekstremay.ToString() + ")";
            }
            else if (d == 0)
            {
                diskreminant.Text = "Diskriminanten = " + d.ToString();
                newtasksolutionone.Text = "x = " + solutionone.ToString();

                ekstrema.Text = "Tp = (" + ekstremax.ToString() + ";" + ekstremay.ToString() + ")";
            }
            else if(vista < 0)
            {
                diskreminant.Text = "Diskriminanten = " + d.ToString();
                newtasksolutionone.Text = "x_1 = " + solutionone.ToString();
                newtasksolutiontwo.Text = "x_2 = " + solutiontwo.ToString();
                ekstrema.Text = "Tp = (" + ekstremax.ToString() + ";" + ekstremay.ToString() + ")";
            }
            else if(vista > 0)
            {
                diskreminant.Text = "Diskriminanten = " + d.ToString();
                newtasksolutionone.Text = "x_1 = " + solutiontwo.ToString();
                newtasksolutiontwo.Text = "x_2 = " + solutionone.ToString();
                ekstrema.Text = "Tp = (" + ekstremax.ToString() + ";" + ekstremay.ToString() + ")";
            }
            canvas.Visible = false;
            box.Visible = true;

            xet.Value = string.Format("{0}", solutionone);
            xto.Value = string.Format("{0}", solutiontwo);
            topx.Value = string.Format("{0}", ekstremax);
            topy.Value = string.Format("{0}", ekstremay);
            disk.Value = string.Format("{0}", d);

            Analysevariable.Value = String.Format("{0};{1};{2};{3};{4}",
                    solutionone, solutiontwo, ekstremax,d,ekstremay);

            definition.Text = "";
            nulpunkt.Text = "";
            variationet.Text = "";
            variationto.Text = "";
            variationtre.Text = "";
            tp.Text = "";
            monotoniet.Text = "";
            monotonito.Text = "";
            vm.Text = "";
        }

        public void newTasksAnalyseSolution_Click(object sender, EventArgs e)
        {
            var values = CurrentTask.Value.Split(new char[] { ';' });

            int vista = 0;
            int vistb = 0;
            int vistc = 0;

            if (!int.TryParse(values[0], out vista)
                || !int.TryParse(values[1], out vistb)
                || !int.TryParse(values[2], out vistc))
            {
                newtaskkoefficienter.Text = "Der skete en fejl under reetabelering af opgaven.";
            }
            var valuesanalyse = Analysevariable.Value.Split(new char[] { ';' });

            double vistxet = 0;
            double vistxto = 0;
            double visttopx = 0;
            double vistd = 0;
            double visttopy = 0;

            if (!double.TryParse(valuesanalyse[0], out vistxet)
                || !double.TryParse(valuesanalyse[1], out vistxto)
                || !double.TryParse(valuesanalyse[2], out visttopx)
                || !double.TryParse(valuesanalyse[3], out vistd)
                || !double.TryParse(valuesanalyse[4], out visttopy))
            {
                newtaskkoefficienter.Text = "Der skete en fejl under reetabelering af opgaven.";
            }
            
            string dm = @"Dm(x) \in \mathbb{R}";
            definition.Text = dm;

            if (vista < 0 && vistd > 0)
            {
                nulpunkt.Text = @"Nulpunkterne \; er: \; x_1 = " + vistxet.ToString() + @" \; og \;x_2 = " + vistxto.ToString();
                variationet.Text = @"f(x) \; er \;negativ \;for \;x\in ]-\infty;" + vistxet.ToString() + @"[";
                variationto.Text = @"f(x) \; er \;positivt \;for \;x\in ]" + vistxet.ToString() + @";" + vistxto.ToString() + "[";
                variationtre.Text = @"f(x) \; er \;negativ \;for \;x\in ]" + vistxto.ToString() + @"; \infty[";
                tp.Text = @"f(x) \; har \; ekstrema \; i \; punktet \; : (" + visttopx.ToString() + ";" + visttopy.ToString() + ")";
                monotoniet.Text = @"f(x) \; er \; voksende \; for \; x\in ]-\infty;" + visttopx.ToString() + @"[";
                monotonito.Text = @"f(x) \; er \; \; aftagende \; for \; x\in ]" + visttopx.ToString() + @";\infty[";
                vm.Text = @"f(x) \; har \; Vm(f) \in ]-\infty;" + visttopy.ToString() + @"]";
            }
            if(vista > 0 && vistd > 0)
            {
                nulpunkt.Text = @"Nulpunkterne \; er: \; x_1 = " + vistxto.ToString() + @" \; og \;x_2 = " + vistxet.ToString();
                variationet.Text = @"f(x) \; er \;positiv \;for \;x\in ]-\infty;" + vistxto.ToString() + @"[";
                variationto.Text = @"f(x) \; er \;negativ \;for \;x\in ]" + vistxto.ToString() + @";" + vistxet.ToString() + "[";
                variationtre.Text = @"f(x) \; er \;positiv \;for \;x\in ]" + vistxet.ToString() + @"; \infty[";
                tp.Text = @"f(x) \; har \; ekstrema \; i \; punktet \; : (" + visttopx.ToString() + ";" + visttopy.ToString() + ")";
                monotoniet.Text = @"f(x) \; er \; aftagende \; for \; x\in ]-\infty;" + visttopx.ToString() + @"[";
                monotonito.Text = @"f(x) \; er \; \; voksende \; for \; x\in ]" + visttopx.ToString() + @";\infty[";
                vm.Text = @"f(x) \; har \; Vm(f) \in [" + visttopy.ToString() + @";\infty[";
            }
            if (vista > 0 && vistd < 0)
            {
                nulpunkt.Text = @"Der \; er \; ingen \; nulpunkter";
                variationet.Text = @"f(x) \; er \;positiv \;for \;x\in \mathbb{R}";
                variationto.Text = @"";
                variationtre.Text = @"";
                tp.Text = @"f(x) \; har \; ekstrema \; i \; punktet \; : (" + visttopx.ToString() + ";" + visttopy.ToString() + ")";
                monotoniet.Text = @"f(x) \; er \; aftagende \; for \; x\in ]-\infty;" + visttopx.ToString() + @"[";
                monotonito.Text = @"f(x) \; er \; \; voksende \; for \; x\in ]" + visttopx.ToString() + @";\infty[";
                vm.Text = @"f(x) \; har \; Vm(f) \in ["  + visttopy.ToString() + @";\infty[";
            }
            if (vista < 0 && vistd < 0)
            {
                nulpunkt.Text = @"Der \; er \; ingen \; nulpunkter";
                variationet.Text = @"f(x) \; er \;negativ \;for \;x\in \mathbb{R}";
                variationto.Text = @"";
                variationtre.Text = @"";
                tp.Text = @"f(x) \; har \; ekstrema \; i \; punktet \; : (" + visttopx.ToString() + ";" + visttopy.ToString() + ")";
                monotoniet.Text = @"f(x) \; er \; voksende \; for \; x\in ]-\infty;" + visttopx.ToString() + @"[";
                monotonito.Text = @"f(x) \; er \; \; aftagende \; for \; x\in ]" + visttopx.ToString() + @";\infty[";
                vm.Text = @"f(x) \; har \; Vm(f) \in ]-\infty ;" + visttopy.ToString() + "]";
            }
            if (vista > 0 && vistd == 0)
            {
                nulpunkt.Text = @"f(x) \; tangere x-aksen \; ved x =" + vistxet.ToString();
                variationet.Text = @"f(x) \; er \;positiv \;for \;x\in ]-\infty;" + vistxet.ToString() + "[";
                variationto.Text = @"f(x) \; er \;positiv \;for \;x\in ]-\infty;" + vistxet.ToString() + "[";
                variationtre.Text = @"";
                tp.Text = @"f(x) \; har \; ekstrema \; i \; punktet \; : (" + visttopx.ToString() + ";" + visttopy.ToString() + ")";
                monotoniet.Text = @"f(x) \; er \; aftagende \; for \; x\in ]-\infty;" + visttopx.ToString() + @"[";
                monotonito.Text = @"f(x) \; er \; \; voksende \; for \; x\in ]" + visttopx.ToString() + @";\infty[";
                vm.Text = @"f(x) \; har \; Vm(f) \in [" + visttopy.ToString() + @";\infty";
            }
            if (vista < 0 && vistd == 0)
            {
                nulpunkt.Text = @"f(x) \; tangere x-aksen \; ved x =" + vistxet.ToString();
                variationet.Text = @"f(x) \; er \;negativ \;for \;x\in ]-\infty;" + vistxet.ToString() + "[";
                variationto.Text = @"f(x) \; er \;negativ \;for \;x\in ]-\infty;" + vistxet.ToString() + "[";
                variationtre.Text = @"";
                tp.Text = @"f(x) \; har \; ekstrema \; i \; punktet \; : (" + visttopx.ToString() + ";" + visttopy.ToString() + ")";
                monotoniet.Text = @"f(x) \; er \; voksende \; for \; x\in ]-\infty;" + visttopx.ToString() + @"[";
                monotonito.Text = @"f(x) \; er \; \; aftagende \; for \; x\in ]" + visttopx.ToString() + @";\infty[";
                vm.Text = @"f(x) \; har \; Vm(f) \in ]\-infty ;" + visttopy.ToString() + "]";
            }
        }
    }
}
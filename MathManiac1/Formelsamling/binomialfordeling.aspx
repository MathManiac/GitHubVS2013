<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="binomialfordeling.aspx.cs" Inherits="MathManiac1.Formelsamling.binomialfordeling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
     <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr >
                            <th>Tilgang
                            </th>
                            <th>Formel
                            </th>
                            <th>Eksempel
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr >
                            <td class="success">Binomialfordeling kan tænkes som en enten-eller fordeling, er der succes eller ikke-succes. <br />
                                Det kan være sandsynligheden for et givent antal femmere ud af 20 kast. <br /> 
                                Sandsynligheden for fire gange "krone" ud af 10 forsøg. <br />
                                Så den bruges hvis jeg skal kende sandsynligheden for en række succeser ud af et antal forsøg.</td>
                            <td class="warning">Man skal lige være helt skarp om en række kriterier er opfyldt inden man bruger fordelingen. <br />
                               1) n uafhængige forsøg, hvor n er et fast tal. <br />
                                2) Alle n forsøg er succes/fiasko forsøg. (kaldes også Bernoulli-forsøg)<br />
                                3) Samme sandsynlighed p for succes, samt sandsynligheden 1-p for fiasko.<br />
                                Er disse tre betingelser opfyldt kan vi benytte formlen:<br />
                                $$P(X=x_i)=\frac{n!}{x!(n-x)!}p^{x_i}(1-p)^{n-x_i}$$
                                $\text{Husk 3! betyder } 3 \cdot 2 \cdot 1 = 6$
                            </td>
                            <td class="success"> Jeg vil vide sandsynligheden for 7 seksere ud af 25 kast med en fair terning <br />
                                ad 1) n er 25 og det ene kast vil ikke påvirke et andet kast.<br />
                                ad 2) enten slår jeg en sekser eller også slår jeg en ikke-sekser.<br />
                                ad 3) Terningen er fair så det er den samme sandsynlighed for en sekser hver gang.<br />
                                $$\text{Sandsynligheden for succes er } \frac{1}{6}$$
                                Så de tre betingelser er opfyldt og jeg kan bruge formlen.
                                $$P(X=7)=\frac{25!}{7!(25-7)!} \cdot \left(\frac16\right)^{7} \cdot \left(1-\frac{1}{6}\right)^{25-7}=0,0645$$
                                Det vil sige at der er 6,45% chance for at få 7 seksere ud af 25 kast.
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

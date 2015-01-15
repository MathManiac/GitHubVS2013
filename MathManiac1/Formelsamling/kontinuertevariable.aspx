<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="kontinuertevariable.aspx.cs" Inherits="MathManiac1.Formelsamling.kontinuertevariable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Formel
                            </th>
                            <th>Illustration
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>Kender du hyppigheden eller frekvensen finder du gennemsnittet med en af følgende formeler.<br />
                                Du skal være opmærksom på at du skal bruge den midterste værdi af dit interval.
                                       $$\bar{x}={{\sum\limits_{i=0}^k m_ih_i} \over{n}}=\sum\limits_{i=0}^k m_if_i$$
                                        Variansen finder du ved følgende formel:
                                        $$s^2={{\sum\limits_{i=0}^k (m_i-\bar{x})^2\cdot h_i} \over{n-1}}$$
                                        Så kan du finde standartafvigelsen, eller spredning, ved at tage kvadratroden af variansen.
                                        $$s=\sqrt{s^2}$$
                                        Der er  nogle begreber som vi lige skal have styr på:<br />
                                $$\mathbf{Kvartilsæt}$$
                                        25% kvartilen = nedre kvartil<br />
                                50% kvartilen = median<br />
                                75% kvartilen = øvre kvartil<br />
                                $$\mathbf{Fraktilsæt}$$
                                        Det er udviklingen i et givent område angivet i procent fx 10% fraktilen.
                                        Husk at du illustrere frekvensen med et histogram og summerede frekvens med en sumkurve.
                            </td>
                            <td class="warning">
                                <img id="Img4" class="contentIllustration" runat="server" src="~/Assets\Histogram.png" alt="Sample Photo" />
                                <img id="Img5" class="contentIllustration" runat="server" src="~/Assets\sumkurve.png" alt="Sample Photo" />
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

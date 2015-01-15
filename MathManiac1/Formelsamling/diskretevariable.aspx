<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="diskretevariable.aspx.cs" Inherits="MathManiac1.Formelsamling.diskretevariable" %>

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
                            <td>Kender du hyppigheden eller frekvensen finder du gennemsnittet med en af følgende formeler.
                                       $$\bar{x}={{\sum\limits_{i=0}^k x_ih_i} \over{n}}=\sum\limits_{i=0}^k x_if_i$$
                                        Variansen finder du ved følgende formel:
                                        $$s^2={{\sum\limits_{i=0}^k (x_i-\bar{x})^2\cdot h_i} \over{n-1}}$$
                                        Så kan du finde standartafvigelsen, eller spredning, ved at tage kvadratroden af variansen.
                                        $$s=\sqrt{s^2}$$
                                        Der er  nogle begreber som vi lige skal have styr på:<br />
                                $$\mathbf{Kvartilsæt}$$
                                        25% kvartilen = nedre kvartil<br />
                                50% kvartilen = median<br />
                                75% kvartilen = øvre kvartil<br />
                                $$\mathbf{Fraktilsæt}$$
                                        Det er udviklingen i et givent område angivet i procent fx 10% fraktilen.
                                        Husk at du illustrer frekvensen med et pindediagram og din summerede frekvens med et trappediagram.
                            </td>
                            <td class="warning">
                                <img id="Img3" class="contentIllustration" runat="server" src="~/Assets\pindediagram.png" alt="Sample Photo" />
                                <img id="Img1" class="contentIllustration" runat="server" src="~/Assets\trappediagram.png" alt="Sample Photo" />
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="eksponentielen.aspx.cs" Inherits="MathManiac1.Formelsamling.eksponentielen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Formel
                            </th>
                            <th>Eksempel
                            </th>
                            <th>Illustration
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>Funktionsforskriften for den eksponentiele funktion er : $$f(x)=b \cdot a^x = b(1+r)^x \; hvor \; a>0$$
                                a kaldes fremskrivningsfaktoren, b startværdien, r den relative tilvækst og x kaldes eksponenten.
                                Husk, hvis det er en afskrivning er det $1-r.$
                                Hvis du har to punkter som ligger på kurven for en eksponentielfunktion $$(x_1;y_1)\; og\; (x_2;y_2)$$ 
                                        kan man finde forskriften med følgende formel:
                                         $$<asp:Literal ID="eksponenTiel" runat="server" />$$
                                        så kan vi finde b:
                                        $$b={y_1 \over a^{x_1}}$$
                                Fordoblingskonstanten. HUSK, kun på VOKSENDE funktioner
                                        $$T_2={ln(2) \over ln(a)}$$
                                        Halveringskonstanten. HUSK, kun på AFTAGENDE funktioner
                                        $$T_½={ln(½) \over ln(a)}$$
                            </td>
                            <td class="warning">Vi tager udgangspunkt i to punkter $$A(3;7) \; og \; B(8;10)$$
                                        Vi indsætter i formlen:
                                        $$<asp:Literal ID="eksponenTieleks" runat="server" />$$
                                        $$a=1,07$$ altså en relativ tilvækst på 7%. Vi finder nu b
                                        $$b={{7} \over {1,07^3}}=5,65$$
                                        $$f(x)=5,65 \cdot 1,07^x$$
                            </td>
                            <td>
                                <img id="Img1" class="contentIllustration" runat="server" src="~/Assets\ekspon.png" alt="Sample Photo" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

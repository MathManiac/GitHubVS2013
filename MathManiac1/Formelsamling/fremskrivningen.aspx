<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="fremskrivningen.aspx.cs" Inherits="MathManiac1.Formelsamling.fremskrivningen" %>
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
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>Når man befinder sig i den finansielle verden er udgangspunktet fremskrivningsformlen.<br />
                                $$K_n=K_0(1+r)^n$$ den opmærksomme læser vil nok kunne genkende den eksponentielle funktion
                                        $$f(x)=b(1+r)^x$$og det er helt korrekt, der er ingen forskel. De forskellige værdier er af historiske årsager repræsenteret ved andre bogstaver,
                                         men rent matematisk er der ingen forskel. Så konklusionen bliver at fremskrivningsformelen er en eksponentiel funktion.<br />
                                Du kan med fordel få lært dig at isolere alle parametrerne (bogstaverne) i formlen.
                            </td>
                            <td class="warning">Mads sætter 2000kr ind på en konto til 3% i rente, hvad står der efter 4 år?
                                        $$k_4=2000(1+0.03)^4=2251,02kr$$
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

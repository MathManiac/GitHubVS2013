<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="restgeldsformlen.aspx.cs" Inherits="MathManiac1.Formelsamling.restgeldsformlen" %>

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
                            <td>Restgældsformlen benyttes når man har betalt et antal terminer og så pludselig vil betale resten på en gang.
                                        $$R_t=A_0*(1+r)^t-y*{{(1+r)^t-1} \over {r}}$$
                                         y er ydelsen<br />
                                r er renten<br />
                                t er det antal terminer hvorefter man vil betale resten.<br />
                                Formlen er sammensat af to andre formlen her fra siden, kan du gennemskue hvilke?
                            </td>
                            <td class="warning">Peter har et lån på 30426,80kr, efter 9 terminer vil han betale det hele ud, hvor stort et beløb skal han af med når ydelsen er 1100kr og renten er 1,5% i rente pr måned?
                                        $$R_t=30426,80*(1+0,015)^9-1100*{{(1+0,015)^9-1} \over {0,015}}=24274,40kr$$
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

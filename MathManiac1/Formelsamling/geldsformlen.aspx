<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="geldsformlen.aspx.cs" Inherits="MathManiac1.Formelsamling.geldsformlen" %>

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
                            <td>Gældsformlen. Den benyttes når man vil kende et låns størrelse, nar man ved hvor meget man kan betale hver termin.
                                        $$A_0=y*{{1-(1+r)^{-n} \over {r}}}$$
                                        y er ydelsen<br />
                                r er renten<br />
                                n er antal terminer
                            </td>
                            <td class="warning">Peter kan afdrage 1100kr pr måned i 36 måneder til 1,5% i rente pr måned. Hvad kan han låne?
                                        $$A_0=1100*{{1-(1+0,015)^{-36} \over {0,015}}}=30426,80kr$$
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

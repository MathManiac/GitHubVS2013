<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="opsparingsformlen.aspx.cs" Inherits="MathManiac1.Formelsamling.opsparingsformlen" %>

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
                            <td>Opsparingsformlen. Den benyttes når man sætter lige store beløb ind og til en fast rente.
                                        $$A_n=y*{{(1+r)^n-1} \over {r}}$$
                                        y er ydelsen<br />
                                r er renten<br />
                                n er antal terminer
                            </td>
                            <td class="warning">Dorthe spare 15000kr op om året, hvad står der på kontoen efter 7 år hvis renten er 6% pr. år?
                                    $$A_7=15000*{{(1+0,06)^7-1} \over {0,06}}=125908kr$$        
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

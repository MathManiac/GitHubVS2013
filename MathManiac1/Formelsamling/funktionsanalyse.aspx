<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="funktionsanalyse.aspx.cs" Inherits="MathManiac1.Formelsamling.funktionsanalyse" %>

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
                            <td>Til en komplet funktionsanalyse skal man igennem følgende trin, du skal dog være 
                    opmærksom på dit niveau. Det er ikke alle trin man skal igennem på fx c-niveau.
                            </td>
                            <td class="warning col-md-4">
                                <ol>
                                    <li>Definitionsmængden Dm(x)</li>
                                    <li>Nulpunkter</li>
                                    <li>Fortegnsvariation</li>
                                    <li>Ekstrema</li>
                                    <li>Monotoniforhold</li>
                                    <li>Vendetangenter. (Mindst B-niveau)</li>
                                    <li>Asymptoter. (Mindst B-niveau)</li>
                                    <li>Værdimængden Vm(f)</li>
                                </ol>
                            </td>
                            <td class="success col-md-4">

                                ad 1: Hvilke tal kan jeg benytte som variabel, dvs tal jeg indsætter i funktionen. Pas på ved brøkker og rødder.<br />
                                ad 2: Ved hvilke x-værdier er funktionsværdien lig nul.<br />
                                ad 3: I hvilke intervaller er funktionsværdien henholdsvis positivt eller negativt.<br />
                                ad 4: Hvor har funktionen lokalt max eller min.<br />
                                ad 5: I hvilke intervaller er funktionsværdien voksende eller aftagende.<br />
                                ad 6: Ved hvilke x-værdier vil funktionen skifte fra prograsiv til degrasiv eller omvendt.<br />
                                ad 7: Hvilke konstante værdier vil en funktion gå i mod når x går imod konstant tal eller uendelig.<br />
                                ad 8: I hvilket interval vil funktionsværdierne ligge, dvs hvilke værdier har y når jeg har indsat x.
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

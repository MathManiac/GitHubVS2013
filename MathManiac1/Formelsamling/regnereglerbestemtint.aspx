<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="regnereglerbestemtint.aspx.cs" Inherits="MathManiac1.Formelsamling.regnereglerbestemtint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Funktion
                            </th>
                            <th>Stamfunktion F
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>Ved det bestemte integral arbejder man værdien af integralet, inden for bestemte grænser.
                    $$f(x)=\int_a^b f(x)dx$$
                            </td>
                            <td>En løsning bliver så at vi finder stamfunktionen, indsætter først øvre og dernest nedre begrænsning, og trækker dem fra hinanden.
                    $$[F(x)]_a^b=F(b)-F(a)$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>Man kan integrere to funktioner der adderes ved at integrere dem hver for sig.
                    $$\int_a^b (f(x)+g(x))dx$$
                            </td>
                            <td>$$\int_a^b f(x)dx+\int_a^b g(x)dx$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>Man kan integrere to funktioner der substraheres ved at integrere dem hver for sig.
                    $$\int_a^b (f(x)-g(x))dx$$
                            </td>
                            <td>$$\int_a^b f(x)dx-\int_a^b g(x)dx$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>Hvis en funktion ganges med en konstant, kan denne sættes udenfor integraletegnet.
                    $$\int_a^b k \cdot f(x)dx$$
                            </td>
                            <td>$$k\int_a^b f(x)dx$$
                            </td>
                        </tr>

                        <tr class="success">
                            <td>Indskudsreglen. Man kan indskyde en en begrænsning, hvis den ligger mellem de oprindlige begrænsninger.
                    $$\int_a^b  f(x)dx$$
                            </td>
                            <td>$$\int_a^b f(x)dx=\int_a^c f(x)dx+\int_c^b f(x)dx$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>Et eksempel, husk dine regneregler for ubestemt integral.
                    $$f(x)=\int_1^5 x \; dx$$
                            </td>
                            <td>$$\left[{{1} \over {2}}x^2\right]_1^5=\left({{1} \over {2}}5^2\right)-\left({{1} \over {2}}1^2\right)=12$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>Et eksempel, husk dine regneregler for ubestemt integral.
                    $$f(x)=\int_2^4 x^3 \; dx$$
                            </td>
                            <td>$$\left[{{1} \over {4}}x^4\right]_2^4=\left({{1} \over {4}}4^4\right)-\left({{1} \over {4}}2^4\right)=\left({{1} \over {4}}\right)(4^4-2^4)=60$$
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

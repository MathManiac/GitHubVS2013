<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="regnereglerubestint.aspx.cs" Inherits="MathManiac1.Formelsamling.regnereglerubestint" %>

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
                            <th>Eksempel
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>$$f(x)=x^n$$
                            </td>
                            <td>$$F(x)={{1} \over {n+1}}x^{n+1}+k$$
                            </td>
                            <td>$$f(x)=\int x^3dx$$
                    $$F(x)={{1} \over {3+1}}x^{3+1}+k={{1} \over {4}}x^{4}+k$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>$$f(x)=\sqrt x$$
                            </td>
                            <td>$$F(x)={{2} \over {3}}x^{{3} \over {2}}+k$$
                            </td>
                            <td>Reglen er egentligt overflødigt da
                    $$\sqrt x=x^{{1} \over {2}}$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>$$f(x)=e^{qx} dx$$
                            </td>
                            <td>$$F(x)={{e^{qx}} \over {q}}+k$$
                            </td>

                        </tr>
                        <tr class="warning">
                            <td>$$f(x)={{1} \over {x}}$$
                            </td>
                            <td>$$F(x)=ln |x|+k$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>$$f(x)=e^x$$
                            </td>
                            <td>$$F(x)=e^x+k$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>$$f(x)=a^x$$
                            </td>
                            <td>$$F(x)={{a^x} \over {ln(a)}}+k$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>$$f(x)=ln(x)$$
                            </td>
                            <td>$$F(x)=x \cdot ln(x)-x+k$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>$$f(x)=sin(x) dx$$
                            </td>
                            <td>$$F(x)=-cos(x)+k$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>$$f(x)=cos(x) dx$$
                            </td>
                            <td>$$F(x)=sin(x)+k$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>$$f(x)=tan(x) dx$$
                            </td>
                            <td>$$F(x)=-ln|cos(x)|+k$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>Man kan integrere to funktioner der adderes ved at integrere dem hver for sig.
                    $$\int (f(x)+g(x))dx$$
                            </td>
                            <td>$$\int f(x)dx+\int g(x)dx$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>Man kan integrere to funktioner der substraheres ved at integrere dem hver for sig.
                    $$\int (f(x)-g(x))dx$$
                            </td>
                            <td>$$\int f(x)dx-\int g(x)dx$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>Hvis en funktion ganges med en konstant, kan denne sættes udenfor integraletegnet.
                    $$\int k \cdot f(x)dx$$
                            </td>
                            <td>$$k\int f(x)dx$$
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>Partiel integration, kun hvis g(x) er differentiabel og f(x) og g´(x) er kontinuerte.
                    $$\int f(x) \cdot g(x) dx$$ 
                            </td>
                            <td>$$F(x) \cdot g(x)- \int F(x) \cdot g´(x) dx$$
                            </td>
                            <td>Husk dine regneregler
                    $$\int e^x \cdot x \; dx = e^x \cdot x-\int e^x \; dx= x \cdot e^x-e^x=(x-1)e^x$$
                            </td>
                        </tr>
                        <tr class="success">
                            <td>Partiel integration, kun hvis g(x) er differentiabel og f(x) og g´(x) er kontinuerte.
                    $$\int f(g(x)) \cdot g´(x) dx$$ 
                            </td>
                            <td>$$\int f(t) dt \; , \; hvor \; t=g(x)$$
                            </td>
                            <td>$$ sæt \; t=g(x)=2x-3 \; ; \; dt=g´(x)=2dx \; så \; er \; \small({{1} \over {2}})dt=dx$$
                    $$\int (2x-3)^2dx=\int t^2 \cdot {{1} \over {2}}dt=$$
                    $${{1} \over {2}}\int t^2 dt={{1} \over {2}}\cdot {{1} \over {3}}t^3={{1} \over {6}}t^3=$$
                    $${{1} \over {6}}(2x-3)^3$$
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

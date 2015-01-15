<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="intproven.aspx.cs" Inherits="MathManiac1.Formelsamling.intproven" %>

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
                            <td>Man kan altid se om man har integreret rigtigt ved at differentiere resultatet.
                    $$\int f(x)dx=F(x)+k, når F'(x)=f(x)$$
                            </td>
                            <td class="warning">$$\int x^2 dx= {{1} \over {3}}x^3+k.\; tjek: \;F'(x)=3 \cdot {{1} \over {3}}x^{3-1}=x^2$$
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

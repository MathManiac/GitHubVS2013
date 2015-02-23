<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Regneregler.master" AutoEventWireup="true" CodeBehind="parentesreglerne.aspx.cs" Inherits="MathManiac1.Regneregler.parentesreglerne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
      <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Regel
                            </th>
                            <th>Formel
                            </th>
                            <th>Eksempel
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>Regel 1 : En parentes med positivt fortegn kan hæves uden videre.</td>
                            <td>$$a+(b+c)=a+b+c$$
                                <br />
                                $$a+(-b+c)=a-b+c$$</td>
                            <td>$$2+(x+3)=2+x+3=x+5$$<br />
                                $$2+(-x+4)=2-x+4=6-x$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 2 : En parentes med negativt fortegn kan hæves ved at skifte fortegn på samtlige led i parentesen.</td>
                            <td>$$a-(b+c)=a-b-c$$
                                <br />
                                $$a-(-b+c)=(a+b-c)$$</td>
                            <td>$$4-(2+x)=4-2-x=2-x$$<br />
                                $$3-(-1+x)=(4+x)$$</td>
                        </tr>
                        <tr class="success">
                            <td>Regel 3 : En flerleddet parentes ganges med et tal ved at gange hvert led i parentesen med tallet.</td>
                            <td>$$a(b+c)=ab+ac$$</td>
                            <td>$$2(x+4)=2x+8$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 4 : To toledede parenteser ganges ved at gange hvert led i den ene parentes med hvert led i den anden.</td>
                            <td>$$(a+b) \cdot (c+d)=ac+ad+bc+bd$$</td>
                            <td>$$(2+w) \cdot (y+3) = 2y+6+wy+3w$$</td>
                        </tr>
                        <tr class="success">
                            <td>Regel 5 : Kvadratet på en toleddet parentes er første led i anden plus andet led i anden plus eller minus det dobbelte produkt.</td>
                            <td>$$(a+b)^2=a^2+b^2+2ab$$</td>
                            <td>$$(x+3)^2=x^2+9+6x$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 6 : To tals sum gange de samme to tals differnes er lige med første led i anden minus andet led i anden.</td>
                            <td>$$(a+b)(a-b)=a^2-b^2$$</td>
                            <td>$$(x+2)(x-2)=x^2-4$$</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Regneregler.master" AutoEventWireup="true" CodeBehind="potensrodregler.aspx.cs" Inherits="MathManiac1.Regneregler.potensrodregler" %>

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
                            <td>For alle tal x og for n = 1,2,3..., definerer man potensen på formen : </td>
                            <td>$$x^n = x \cdot x \cdot ...\cdot x $$(n gange), hvor x er <strong>grundtal</strong>  og n <strong>eksponent</strong> .</td>
                            <td>$$x^3= x \cdot x \cdot x$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 1 : Man ganger to potenser med samme grundtal ved at beholde grundtallet og lægge eksponenterne sammen.</td>
                            <td>$$x^m \cdot x^n=x^{m+n}$$</td>
                            <td>$$x^3 \cdot x^2= x^{3+2}=x^5$$</td>
                        </tr>
                        <tr class="success">
                            <td>Regel 2 : Man dividerer to potenser med samme grundtal ved at beholde grundtallet og trække eksponenterne fra hinanden.</td>
                            <td>$${x^m \over x^n}=x^{m-n}$$</td>
                            <td>$${x^5 \over x^2}=x^{5-2}=x^3$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 3 : Man ganger to potenser med samme eksponent ved at gange gruntallene og beholde eksponenten.</td>
                            <td>$$x^n \cdot y^n=(x \cdot y)^n$$</td>
                            <td>$$2^3 \cdot 3^3=(2 \cdot 3)^3=6^3$$</td>
                        </tr>
                        <tr class="success">
                            <td>Regel 4 : Man dividerer to potenser med samme eksponent ved at dividere grundtallene og beholde eksponenten.</td>
                            <td>$${x^n \over y^n}=\left({x \over y}\right)^n$$</td>
                            <td>$${4^4 \over 2^4}=\left({4 \over 2}\right)^4=2^4$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 5 : Man opløfter en potens til en ny potens ved at beholde grundtallet og gange eksponenterne.</td>
                            <td>$$(x^m)^n=x^{mn}$$</td>
                            <td>$$(x^2)^3=x^{2 \cdot 3}= x^6$$</td>
                        </tr>
                        <tr class="success">
                            <td>Regel 6 : En negativ eksponent omskrives vha. en brøk til en positiv eksponent.</td>
                            <td>$$x^{-n}={1 \over x^n}$$</td>
                            <td>$$x^{-4}={1 \over x^4}$$</td>
                        </tr>
                        <tr class="warning">
                            <td>Regel 7 : En rod størrelse omskrives til en potens ved at opløfte roden i een over n.</td>
                            <td>$$\sqrt[n]{x}=x^{1 \over n}$$</td>
                            <td>$$\sqrt[3]{x}=x^{1 \over 3}$$</td>
                        </tr>
                        <tr class="success">
                            <td>Regel 8 : Ethvert tal opløftet i 0 giver altid 1.</td>
                            <td>$$x^0=1$$</td>
                            <td>$$5^0=1$$ eller $$12^0=1$$ Find selv på flere...</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

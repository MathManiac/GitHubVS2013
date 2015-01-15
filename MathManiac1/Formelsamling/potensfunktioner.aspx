<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="potensfunktioner.aspx.cs" Inherits="MathManiac1.Formelsamling.potensfunktioner" %>

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
                            <td>Funktionsforskriften for potensfunktionen er : $$f(x)=b \cdot x^a \; hvor \; x>0 \;, \;b>0 \; og \; a\in \mathbf{R}$$
                                Hvis du har to punkter som ligger på kurven for en potensfunktion $$(x_1;y_1)\; og\; (x_2;y_2)$$ 
                                        kan man finde forskriften med følgende formel:
                                        $$a={ln{\left({y_2} \over {y_1}\right)}\over ln{\left({x_2} \over {x_1}\right)}}$$
                                        så kan vi finde b:
                                        $$b={{y_1} \over {x_1^a}}$$
                            </td>
                            <td class="warning">Vi tager udgangspunkt i to punkter $$A(2;7) \; og \; B(8;11)$$
                                        Vi indsætter i formlen:
                                        $$a={ln{\left({11} \over {7}\right)}\over ln{\left({8} \over {2}\right)}}=0,33$$
                                        så kan vi finde b:
                                        $$b={{7} \over {2^{0,33}}}=5,58$$
                                        $$f(x)=5,58 \cdot x^{0,33}$$
                            </td>
                            <td>
                                <img id="Img2" class="contentIllustration" runat="server" src="~/Assets\potensfunktion.png" alt="Sample Photo" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

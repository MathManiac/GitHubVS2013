<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="bevisretlinietopunkter.aspx.cs" Inherits="MathManiac1.Formelsamling.bevisretlinietopunkter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <strong><b>Bevis</b></strong><br />
                Når vi har to punkter som vi ved ligger på den rette linie, kan vi benytte formlen
            $$a=\frac{y_2-y_1}{x_2-x_1}$$
            Vi indsætter de to punkter $A(x_1;y_1)$ og $B(x_2;y_2)$ i forskriften for den rette linie
            $$f(x)=ax+b$$
            $$y_1=ax_1+b$$
            $$y_2=ax_2+b$$
            Vi isolere b i begge ligninger
            $$y_1-ax_1=b$$
            $$y_2-ax_2=b$$
            Når begge ligninger er lig b må de være lig hinanden
            $$y_1-ax_1=y_2-ax_2$$
            Så trækker vi $y_1$ fra og lægger $ax_2$ til på begge sider
            $$ax_2-ax_1=y_2-y_1$$
            Vi sætter a uden for en parantes
            $$a(x_2-x_1)=y_2-y_1$$
            Vi deler med $(x_2-x_1)$ på begge sider, og vi er færdige
            $$a=\frac{y_2-y_1}{x_2-x_1}$$
            Hvilket skulle bevises.
            </div>
        </div>
    </div>
</asp:Content>

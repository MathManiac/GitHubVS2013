<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="definitiondiff.aspx.cs" Inherits="MathManiac1.Formelsamling.definitiondiff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
     <div class="container">
        <div class="row clearfix">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Formel
                            </th>
                            <th>Illustration
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>
                                <strong>Definition.</strong><br />
                                Definition af f´(x) skal tolkes således at man for et vilkårligt punkt på en funktion, kan finde hældningskoefficienten 
                                        til den rette linie, der tangere punktet. Det smarte ligger i at man netop ved et ekstrema har hældningskoefficienten lig nul.
                                        Da tangenten netop her er vandret.<br />
                                For en funktion f(x) er den afledte f'(x) defineret som følger:
                                        $$f'(x)=\lim_{x \rightarrow 0} {{f(x + \Delta x)-f(x)} \over {\Delta x}}$$
                            </td>
                            <td class="warning">Vi har to punkter på den rette linie og bruger formlen<br />
                                $$A(2;7)\;og\;B(5;13)$$ 
                                        $$a={13-7 \over 5-2}=2$$
                                        så finder vi b:
                                        $$b=7-2\cdot 2=3$$
                                        så den rette linie er f(x)=2x+3.
                                <br />
                                Du kan jo tænke over om det vil gøre en forskel om vi brugte det andet punkt.
                            </td>
                            <td>
                                  <img id="Img6" class="contentIllustration" runat="server" src="~/Assets\def_diff.png" alt="Sample Photo" />
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

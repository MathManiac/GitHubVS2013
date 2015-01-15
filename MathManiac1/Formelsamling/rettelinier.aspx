<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="rettelinier.aspx.cs" Inherits="MathManiac1.Formelsamling.rettelinier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="container ">    
            <div class="row clearfix ">
                <div class="col-md-9 ">
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
                                <td>Funktionsforskriften for den rette linie er : $$f(x)=ax+b$$<br />
                                    Hvor a er hældningskoefficienten og b er skæring med y-aksen dvs (0;b)<br />
                                    Har vi to punkter på den rette linie $$(x_1;y_1)\; og\; (x_2;y_2)$$ kan man finde hældningskoefficienten
                                        på følgende måde:<br />
                                    $$a=\frac{y_2-y_1}{x_2-x_1}$$<br />
                                    så kan b, skæringen med y, findes da vi nu kender a,x og y<br />
                                    $$b=y_1-ax_1$$
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
                                    <img id="Img2" class="contentIllustration" runat="server" src="~/Assets\denrettelinieword.gif.png" alt="Sample Photo" />
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
              </div>
        </div>
</asp:Content>

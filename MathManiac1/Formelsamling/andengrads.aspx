<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="andengrads.aspx.cs" Inherits="MathManiac1.Formelsamling.andengrads" %>

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
                            <td>Funktionsforskriften for andengradspolynomiet er : $$f(x)=ax^2+bx+c$$
                                hvor a,b og c er koefficienterne, dvs de tal som står foran variablen x. For at finde nulpunkterne
                                        til funktionen har vi følgende formel:
                                        Først skal vi dog bruge en talværdi $$d=b^2-4ac$$
                                        $$<asp:Literal ID="andenGrads" runat="server" />$$
                                        udtrykket under rodtegnet kaldes også diskriminanten d:
                                        alene ved at se på d ved man en del om funktionen, hvis:
                                        $$d>0 \; er \; der \; to \; løsninger$$
                                        $$d=0 \; er \; der \; en \; løsning$$
                                        $$d<0 \; er \; der \; ingen \; løsninger$$
                                        Ved at kikke på selve nulpunktsformlen, kan du måske regne ud forfor det forholder sig sådan.
                                Et andengradspolynomium vil altid have et ekstrema (toppunkt) og formlen lyder således:
                                        $$<asp:Literal ID="topPunkt" runat="server" />$$
                            </td>
                            <td class="warning">Hvis vi tager udgangspunkt i funktionen:
                                        $$f(x)=-x^2+3x+4$$
                                        så har vi at a=-1, b=3 og c=4. Vi finder d og bruger så vores nulpunktsformel
                                        $$d=3^2-4\cdot (-1) \cdot 4=25$$
                                        $$x_1={{-3 + \sqrt{25}} \over {2 \cdot (-1)}}$$
                                        $$x_2={{-3 - \sqrt {25}} \over {-2}}$$
                                        så det vil sige at mine to nulpunkter er
                                        $$x_1=-1 \; og \; x_2=4$$
                                        For at finde ekstrema så bruger vi den formel. (husk diskriminanten d er jo fundet)
                                        $$<asp:Literal ID="topPunkteks" runat="server" />$$
                                        eller
                                        $$Tp=(1,5;6,25)$$
                                        hvis brøker stadig gør dig angst...
                            </td>
                            <td>
                                <img id="Img1" class="contentIllustration" runat="server" src="~/Assets\andengrads.png" alt="Sample Photo" /></td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

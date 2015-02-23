<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="konfidens.aspx.cs" Inherits="MathManiac1.Formelsamling.konfidens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <h1>Konfidensintervaller</h1>
    <h3>Hvis spredningen $\sigma$ er kendt</h3>
    Et konfidensinterval for gennemsnittet $\mu$ hvis spredningen $\sigma$ er kendt<br />
    
            $\mu = \bar x \pm z_{\alpha /2} \dfrac{\sigma}{\sqrt{n}}$<br />
    Generelt skal du slå op i en tabel for z-fordelingen, for at finde den faktor du skal gange med fx:<br />
    95%: 1,96<br />
    90%: 1,64<br />
    <br />

     <h3>Hvis spredningen $\sigma$ er ukendt</h3>
    Et konfidensinterval for gennemsnittet $\mu$ hvis spredningen $\sigma$ er ukendt<br />
    I så fald skal du bruge den såkaldte t-fordeling, den arbejder med en lidt større spredning, fordi vi mister en frihedsgrad.
     Det gør vi fordi at vi også skal finde spredningen s i den samme stikprøve som vi har gennemsnittet fra.<br />
    
            $\mu = \bar x \pm t_{\alpha /2} \dfrac{s}{\sqrt{n}}$<br />
   Du skal via tabelopslag finde din t værdi, og husk at her skal du tage højde for frihedsgraderne.<br />
    <br />
   
    <h3>Konfidensinterval for en andel,  p-værdien</h3>
    Hvis $n  p>5$ og $n(1-p)>5$ så kan man antage en tilnærmet normalfordeling.<br /><br />
    $p = \hat{p} \pm z_{\alpha/2}\sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$
</asp:Content>

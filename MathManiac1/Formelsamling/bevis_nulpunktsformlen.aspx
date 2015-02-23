<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="bevis_nulpunktsformlen.aspx.cs" Inherits="MathManiac1.Formelsamling.bevis_nulpunktsformlen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <h3>Bevis for nulpunktsformlen</h3>
    <p>Som med alle andre beviser, <strong>FÅ NU STYR PÅ DINE REGNEREGLER</strong></p>
    Udgangspunktet er at vi gerne vil vise at $x=\frac{-b \pm \sqrt{d}}{2a}$
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                Udgangspunkt:<br />
                $ax^2+bx+c=0$  
                <br />
                $ax^2+bx=-c$    
                <br />
                $x^2+\frac{b}{a}x=-\frac{c}{a}$<br /><br />
                $(x+ \frac{b}{2a})^2-(\frac{b}{2a})^2=-\frac{c}{a}$<br /><br />
                $(x+ \frac{b}{2a})^2=(\frac{b}{2a})^2-\frac{c}{a}$<br /><br />
                $(x+ \frac{b}{2a})^2=\frac{b^2}{4a^2}-\frac{c}{a}$<br /><br />
                $(x+ \frac{b}{2a})^2=\frac{b^2-4ac}{4a^2}$<br /><br />
                $x+ \frac{b}{2a}=\pm\sqrt{\frac{b^2-4ac}{4a^2}}$<br /><br />
                $x+ \frac{b}{2a}=\pm\frac{\sqrt{b^2-4ac}}{\sqrt{4a^2}}$<br /><br />
                $x+ \frac{b}{2a}=\pm\frac{\sqrt{b^2-4ac}}{2a}$<br /><br />
                $x=-\frac{b}{2a}\pm\frac{\sqrt{b^2-4ac}}{2a}$<br /><br />
                $x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}$<br /><br />
                <strong>Hvis du skal have succes, så følg med og brug blyant og papir. Matematik SKAL læses langsomt og med blyant og papir</strong>
            </div>
            <div class="col-md-6">
                <br /><br />
                Træk nu c fra på begge sidder.<br />
                Del samtlige led med a.<br /><br />
               Den kan være lidt grum, læs nederst på siden hvis du mangler en uddybende forklaring.<br /><br />
                Læg $(\frac{b}{2a})^2$ til på begge sidder.<br /><br />
                Man kan kvadrere en brøk tæller for sig og nævner for sig.<br /><br />
                Vi har forlænget den sidste brøk med 4a og sat på fællesbrøkstreg.<br /><br />
                Tag kvadratroden på begge sidder.<br /><br /><br />
                Kvadratroden kan tages på tæller og nævner hver for sig.<br /><br /><br />
                Nævneren indeholder produktet af to kvadrattal.<br /><br />
                Vi trækker $\frac{b}{2a}$ fra på begge sidder.<br /><br /><br />
                Fællesnævner. sæt evt $d=b^2-4ac$
            </div>
        </div>
    </div>
    Husk kvadratet på en to-leddet størrelse. Første led i anden, andet led i anden samt det dobbelte produkt $(p+q)^2=p^2+q^2+2pq$
    Nu tager vi et helt konkret eksempel $x^2+10x$ Jeg vil gerne have det på formen $(p+q)^2$ så:<br />
    Første led p må svare til x<br />
    10x må så være det dobbelte produkt:<br />
    $10x=2pq$ men jeg ved jo at p=x så<br />
    $10x=2xq$ det må så betyder at 5=q når jeg deler med 2x på begge sidder. så umiddelbart har jeg at,<br />
    $(x+5)^2$ er min løsning MEN hvis jeg ganger parentessen ud får jeg: $x^2+5^2+10x$ men mit udgangspunkt var jo
    $x^2+10x$ så derfor bliver jeg nødt til at fratrække andet led i anden, hvis det skal passe, derfor:<br />
    $x^2+10x=(x+5)^2-5^2$ det er nøjagtigt det som sker i linie 4. Regne selv efter, prøv evt $x^2+12x$
</asp:Content>

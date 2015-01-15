<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Masterpages/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MathManiac1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" >
        <h1 class="text-center">MathManiac</h1>
        <p class="lead text-center">Det er her du ser lyset, hvis du vil gøre en indsats.....</p>
        <p class="text-center">
             <img id="Img1" style="height:200px" class="contentIllustration" runat="server"  src="Assets/Baggrund.png" alt="Sample Photo" /></td>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Hvor skal jeg starte?</h2>
            <p>
               Der er ikke nogle rækkefølge, men erfaring viser at de fleste, som har problemer med matematik, 
                kan spores tilbage til manglende kendskab til regnereglerne.       
            </p>
            <p>
               <a href="Regneregler/index.aspx">Regneregler</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Formelsamling</h2>
            <p>
               De fleste formler, med eksempler, kan findes her. Mangler der nogle formler så skriv venligst, bare husk at i langt 
                de fleste opgaver, kan man isolere sig til den ubekendte. 
            </p>
            <p>
                <a href="Formelsamling/index.aspx">Formelsamling</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Opgaver</h2>
            <p>
                 I opgave samlingen er der mulighed for at træne sine færdigheder. At kunne indsætte i en formel og trykke
                på en lommeregner, er ikke det samme som at forstå. Men det er en god start at få en rutine i opgaveløsning,
                 så man ikke også er udfordret på det punkt.
            </p>
            <p>
                <a href="Tasks/index.aspx">Opgaver</a>
            </p>
        </div>
    </div>

</asp:Content>

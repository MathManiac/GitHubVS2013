<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="topunkteksp.aspx.cs" Inherits="MathManiac1.Tasks.topunkteksp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div style="margin: 30px">
        Der er ikke meget interaktion på denne side, skriv dit svar på et stykke papir, og klik på løsningen for at kontrollere.<br />
        Du kan godt have formalsamlingen åben samtidige med opgavestilleren.<br />
        Med udgangspunkt i to punkter som begge ligger på en eksponentialfunktion, skal du finde forskriften for eksponentielle funktion.<br />
    </div>
    <div style="margin: 30px">
        <asp:HiddenField ID="CurrentTask" runat="server" />

        <asp:HiddenField ID="avalue" runat="server" ClientIDMode="Static" Value="hidden value" />
        <asp:HiddenField ID="bvalue" runat="server" ClientIDMode="Static" />

        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ny opgave" OnClick="newTasks_Click" />

        $$<asp:Literal ID="newTask" runat="server" />$$
    </div>

    <div style="margin: 30px">
        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Løsning" OnClick="newTasksSolution_Click" />

        $$<asp:Literal ID="newtaskkoefficienter" runat="server" />$$
            $$<asp:Literal ID="slope" runat="server" />$$
            $$<asp:Literal ID="croosYaxis" runat="server" />$$
            $$<asp:Literal ID="forskrift" runat="server" />$$
            $$<asp:Literal ID="ekstrema" runat="server" />$$      

    </div>

    <div id="box" class="jxgbox" style="width: 300px; height: 300px;" runat="server" visible="false"></div>

    <script type="text/javascript">

        var aValue = +document.getElementById('<%=avalue.ClientID%>').value;
     
        var bValue = +document.getElementById('<%=bvalue.ClientID%>').value;

        var board = JXG.JSXGraph.initBoard('<%=box.ClientID%>', { boundingbox: [-10, 10, 10, -10], axis: true });
            board.create('functiongraph', [function (x) { return (bValue) * (Math.pow(aValue, x)); }]);
    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="topunktpotens.aspx.cs" Inherits="MathManiac1.Tasks.topunktpotens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
        <div style="margin: 30px">
        Der er ikke meget interaktion på denne side, skriv dit svar på et stykke papir, og klik på løsningen for at kontrollere.<br />
        Du kan godt have formalsamlingen åben samtidige med opgavestilleren.<br />
        Med udgangspunkt i to punkter som begge ligger på en potensfunktion, skal du finde forskriften for potensfunktionen.<br />
         
    </div>
  
    <div style="margin: 30px">
            <asp:HiddenField ID="CurrentTask" runat="server" />

            <asp:HiddenField ID="avalue" runat="server" ClientIDMode="static" />
            <asp:HiddenField ID="bvalue" runat="server" ClientIDMode="static" />

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

            var aValue = +document.getElementById('<%=avalue.ClientID%>').value.replace(",", ".");
            var bValue = +document.getElementById('<%=bvalue.ClientID%>').value.replace(",", ".");


            var board = JXG.JSXGraph.initBoard('<%=box.ClientID%>', { boundingbox: [-10, 10, 10, -10], axis: true });
            board.create('functiongraph', [function (x) { return (bValue) * (Math.pow(x, aValue)); }]);
        </script>
 
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="topunktret.aspx.cs" Inherits="MathManiac1.Tasks.topunktret" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div style="margin: 30px">
     
        Med udgangspunkt i to punkter som begge ligger på den rette linie, skal du finde forskriften for den rette linie.<br />
    </div>
    <div style="margin: 30px">
        <asp:HiddenField ID="CurrentTask" runat="server" />

        <asp:HiddenField ID="avalue" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="bvalue" runat="server" ClientIDMode="static" />

        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ny opgave" OnClick="newTasks_Click" />

        $$<asp:Literal ID="newTask" runat="server" />$$
    </div>

    <div style="margin: 30px">
        <p>Skriv a med to decimaler, husk at afrunde rigtigt.</p>
        <asp:TextBox type="double" ID="studentSolution_a" class="form-control" placeholder="Din løsning" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
        <p>Skriv b med to decimaler, husk at afrunde rigtigt.</p>
        <asp:TextBox type="double" ID="studentSolution_b" class="form-control" placeholder="Din løsning" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />

        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Løsning" OnClick="newTasksSolution_Click" /><br /><br />
        <p>Nedstående kan du se din funktion samlet</p><br />

        <asp:Label ID="rosellerris_a" runat="server" AutoEventWireup="true" /><br />
        <asp:Label ID="rosellerris_b" runat="server" AutoEventWireup="true" /><br />
        <asp:Label ID="svar" runat="server"  /><br />
         <asp:HiddenField ID="counterbackup" runat="server" />
        $$<asp:Literal ID="newtaskkoefficienter" runat="server" Visible="false"/>$$
            $$<asp:Literal ID="slope" runat="server" Visible="false"/>$$
            $$<asp:Literal ID="croosYaxis" runat="server" Visible="false" />$$
            $$<asp:Literal ID="forskrift" runat="server" Visible="false" />$$
            $$<asp:Literal ID="ekstrema" runat="server" Visible="false" />$$      
        
    </div>

    <div id="box" class="jxgbox" style="width: 300px; height: 300px;" runat="server" visible="false"></div>
    <script type="text/javascript">

        var aValue = +document.getElementById('<%=avalue.ClientID%>').value.replace(",", ".");
        var bValue = +document.getElementById('<%=bvalue.ClientID%>').value.replace(",", ".");


        var board = JXG.JSXGraph.initBoard('<%=box.ClientID%>', { boundingbox: [-10, 10, 10, -10], axis: true });
        board.create('functiongraph', [function (x) { return (aValue * x) + (bValue); }]);
    </script>
</asp:Content>

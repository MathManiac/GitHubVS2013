<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="nulpunktsformlen.aspx.cs" Inherits="MathManiac1.Tasks.nulpunktsformlen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <link rel="stylesheet" type="text/css" href="http://jsxgraph.uni-bayreuth.de/distrib/jsxgraph.css" />
    <script type="text/javascript" src="http://jsxgraph.uni-bayreuth.de/distrib/jsxgraphcore.js"></script>

    <div style="margin: 30px">
        Der er ikke meget interaktion på denne side, skriv dit svar på et stykke papir, og klik på løsningen for at kontrollere.<br />
        Du kan godt have formalsamlingen åben samtidige med opgavestilleren.<br />
        Du skal finde diskriminaten, nulpunkter og toppunkt inden du klikker på løsningen, ellers giver det ikke meget mening.<br />
        <br />
    </div>

    <div style="margin: 30px">
        <asp:HiddenField ID="CurrentTask" runat="server" />
        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ny opgave" OnClick="newTasks_Click" />

        $$<asp:Literal ID="newTask" runat="server" />$$

             <asp:HiddenField ID="avalue" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="bvalue" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="cvalue" runat="server" ClientIDMode="static" />

        $$<asp:Literal ID="test" Visible="true" runat="server" />$$

    </div>

    <div style="margin: 30px">
    </div>

    <div style="margin: 30px">
        <table class="table table-bordered table-hover">
            <tr>
                <td>
                     <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Løsning" OnClick="newTasksSolution_Click" />                   
                </td>
                <td>
                    <div style="margin: 30px">
                        <canvas id="canvas" width="502" height="300" visible="false" runat="server"></canvas>
                    </div>

                    <div id="box" class="jxgbox" style="width: 300px; height: 300px;" runat="server" visible="false"></div>
                </td>
                <td>$$<asp:Literal ID="newtaskkoefficienter" runat="server" />$$
                        $$<asp:Literal ID="diskreminant" runat="server" />$$
                        $$<asp:Literal ID="newtasksolutionone" runat="server" />$$
                        $$<asp:Literal ID="newtasksolutiontwo" runat="server" />$$
                        $$<asp:Literal ID="ekstrema" runat="server" />$$
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Funktionsanalyse" OnClick="newTasksAnalyseSolution_Click" />
                </td>
                <td>1) Definitionsmængde
                        
                </td>
                <td>$$<asp:Literal ID="definition" runat="server" />$$                     
                </td>
            </tr>
            <tr>
                <td></td>
                <td>2) Nulpunkter
                </td>
                <td>$$<asp:Literal ID="nulpunkt" runat="server" />$$
                </td>
            </tr>
            <tr>
                <td></td>
                <td>3) Fortegnsvariation
                </td>
                <td>$$<asp:Literal ID="variationet" runat="server" />$$
                        $$<asp:Literal ID="variationto" runat="server" />$$
                        $$<asp:Literal ID="variationtre" runat="server" />$$
                </td>
            </tr>
            <tr>
                <td></td>
                <td>4) Ekstrema
                </td>
                <td>$$<asp:Literal ID="tp" runat="server" />$$
                </td>
            </tr>
            <tr>
                <td></td>
                <td>5) Monotoniforhold
                </td>
                <td>$$<asp:Literal ID="monotoniet" runat="server" />$$
                        $$<asp:Literal ID="monotonito" runat="server" />$$
                </td>
            </tr>
            <tr>
                <td></td>
                <td>6) Værdimængde
                </td>
                <td>$$<asp:Literal ID="vm" runat="server" />$$ 
                </td>
            </tr>
        </table>

        <asp:HiddenField ID="Analysevariable" runat="server" />
        <asp:HiddenField ID="disk" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="xet" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="xto" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="topx" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="topy" runat="server" ClientIDMode="static" />

    </div>
    <div>
        <script type="text/javascript">




            var aValue = +document.getElementById('<%=avalue.ClientID%>').value;
            var bValue = +document.getElementById('<%=bvalue.ClientID%>').value;
            var cValue = +document.getElementById('<%=cvalue.ClientID%>').value;

            var board = JXG.JSXGraph.initBoard('<%=box.ClientID%>', { boundingbox: [-10, 10, 10, -10], axis: true });
            board.create('functiongraph', [function (x) { return (aValue * x * x) + (bValue * x) + cValue; }]);
        </script>

        <script>

            var aValue = +document.getElementById('<%=avalue.ClientID%>').value;
            var bValue = +document.getElementById('<%=bvalue.ClientID%>').value;
            var cValue = +document.getElementById('<%=cvalue.ClientID%>').value;


            function fun1(x) { return (aValue * x * x) + (bValue * x) + cValue }

            function draw() {
                var canvas = document.getElementById("<%=canvas.ClientID%>");
                if (null == canvas || !canvas.getContext) return;

                var axes = {}, ctx = canvas.getContext("2d");
                axes.x0 = .5 + .5 * canvas.width;  // x0 pixels from left to x=0
                axes.y0 = .5 + .5 * canvas.height; // y0 pixels from top to y=0
                axes.scale = 10;                 // 40 pixels from x=0 to x=1
                axes.doNegativeX = true;


                showAxes(ctx, axes);
                funGraph(ctx, axes, fun1, "rgb(11,153,11)", 1);

            }

            function funGraph(ctx, axes, func, color, thick) {
                var xx, yy, dx = 4, x0 = axes.x0, y0 = axes.y0, scale = axes.scale;
                var iMax = Math.round((ctx.canvas.width - x0) / dx);
                var iMin = axes.doNegativeX ? Math.round(-x0 / dx) : 0;
                ctx.beginPath();
                ctx.lineWidth = thick;
                ctx.strokeStyle = color;

                for (var i = iMin; i <= iMax; i++) {
                    xx = dx * i; yy = scale * func(xx / scale);
                    if (i == iMin) ctx.moveTo(x0 + xx, y0 - yy);
                    else ctx.lineTo(x0 + xx, y0 - yy);
                }
                ctx.stroke();
            }

            function showAxes(ctx, axes) {
                var x0 = axes.x0, w = ctx.canvas.width;
                var y0 = axes.y0, h = ctx.canvas.height;
                var xmin = axes.doNegativeX ? 0 : x0;
                ctx.beginPath();
                ctx.strokeStyle = "rgb(128,128,128)";
                ctx.moveTo(xmin, y0); ctx.lineTo(w, y0);  // X axis
                ctx.moveTo(x0, 0); ctx.lineTo(x0, h);  // Y axis
                ctx.stroke();

            }

        </script>
    </div>
      <script type="text/javascript">
          function myJsFunction() {
              var text = +document.getElementById('<%=newtasksolutionone.ClientID%>').value;
             
              alert(text);
          }
                    </script>
</asp:Content>

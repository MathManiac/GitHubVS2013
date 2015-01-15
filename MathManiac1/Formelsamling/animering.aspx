<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Formelsamling.master" AutoEventWireup="true" CodeBehind="animering.aspx.cs" Inherits="MathManiac1.Formelsamling.animering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
     <style>
        body {
            padding: 30px;
        }

        input[type=range] {
            /*removes default webkit styles*/
            -webkit-appearance: none;
            /*fix for FF unable to apply focus style bug */
            border: 1px solid white;
            /*required for proper track sizing in FF*/
            width: 300px;
        }

            input[type=range]::-webkit-slider-runnable-track {
                width: 300px;
                height: 5px;
                background: #ddd;
                border: none;
                border-radius: 3px;
            }

            input[type=range]::-webkit-slider-thumb {
                -webkit-appearance: none;
                border: none;
                height: 16px;
                width: 16px;
                border-radius: 50%;
                background: goldenrod;
                margin-top: -4px;
            }

            input[type=range]:focus {
                outline: none;
            }

                input[type=range]:focus::-webkit-slider-runnable-track {
                    background: #ccc;
                }

            input[type=range]::-moz-range-track {
                width: 300px;
                height: 5px;
                background: #ddd;
                border: none;
                border-radius: 3px;
            }

            input[type=range]::-moz-range-thumb {
                border: none;
                height: 16px;
                width: 16px;
                border-radius: 50%;
                background: goldenrod;
            }

            /*hide the outline behind the border*/
            input[type=range]:-moz-focusring {
                outline: 1px solid white;
                outline-offset: -1px;
            }

            input[type=range]::-ms-track {
                width: 300px;
                height: 16px;
                background: #ddd;
                border: none;
                border-radius: 10px;
                /*remove default tick marks*/
                color: transparent;
            }

            input[type=range]::-ms-fill-lower {
                outline: none;
                background: #777;
                border-radius: 10px 0 0 10px;
            }

            input[type=range]::-ms-thumb {
                border: none;
                height: 16px;
                width: 16px;
                border-radius: 50%;
                background: goldenrod;
            }

            input[type=range]:focus::-ms-track {
                background: #ccc;
            }

            input[type=range]:focus::-ms-fill-lower {
                background: #888;
            }
    </style>
    <div class="jumbotron">
        <strong>Formålet med denne sidde er at du skal finde forståelse for koefficienternes betydning for parablens udseende, flyt lidt med "skyderne" og se hvad der sker.<br />
    Hvad gør koefficienten a ved parablen? <br />
    Hvad gør koefficienten b ved parablen? <br />
    Hvad gør koefficienten c ved parablen?</strong>
    </div>
    <div class="row clearfix">
		<div class="col-md-4 column">
              <input id="Range1" type="range" min="-10" max="10" value="1" step="0.1" runat="server" onchange="updateUI();" oninput="updateUI();" />
    <br />
    a =<span id="sliderStatusA">0</span>
    <br />
    <input id="Range2" type="range" min="-10" max="10" value="0" step="0.1" runat="server" onchange="updateUI();" oninput="updateUI();" />
    <br />
    b =<span id="sliderStatusB">0</span>
    <br />
    <input id="Range3" type="range" min="-10" max="10" value="0" step="0.1" runat="server" onchange="updateUI();" oninput="updateUI();" />
    <br />
    c =<span id="sliderStatusC">0</span>
    <br />

    <div id="divforskrift">
        Parablen følger følgende ligning: \({ f(x) = x^2 }\)
    </div>
		</div>
		<div class="col-md-5 column">
             <script type="text/javascript">
                 function sliderChange(vala) {
                     updateUI();
                 }

                 function updateUI() {

                     var valA = parseFloat(document.getElementById('<%=Range1.ClientID%>').value);
            var valB = parseFloat(document.getElementById('<%=Range2.ClientID%>').value);
            var valC = parseFloat(document.getElementById('<%=Range3.ClientID%>').value);

            valA = Math.round(valA * 10) / 10;
            valB = Math.round(valB * 10) / 10;
            valC = Math.round(valC * 10) / 10;

            document.getElementById('sliderStatusA').innerHTML = valA;
            document.getElementById('sliderStatusB').innerHTML = valB;
            document.getElementById('sliderStatusC').innerHTML = valC;

            updateGraph(valA, valB, valC);
            var eqn = "";
            if (valA != 0) eqn += valA + "x^2 ";
            if (valB != 0) eqn += valB + "x ";
            if (valC != 0) eqn += valC;

            //var eqn = valA + 'x^2 + ' + valB + 'x +' + valC;
            //alert(eqn);

            var forskrift = MathJax.Hub.getAllJax("divforskrift")[0];
            MathJax.Hub.Queue(["Text", forskrift, buildEquationText(valA, valB, valC)]);

        }

        function buildEquationText(a, b, c) {
            var eqn = "";

            if (a != 0) {
                if (a == -1) eqn += "-";
                if (a != 1 && a != -1) eqn += a;

                eqn += " x^2";
            }

            if (b != 0) {
                if (eqn != "" && b > 0) {
                    eqn += "+";
                }

                if (b != 1 && b != -1) eqn += b;
                if (b == -1) eqn += "-";

                eqn += " x";
            }
            if (c != 0) {
                if (eqn != "" && c > 0) {
                    eqn += "+";
                }
                eqn += c;
            }

            if (eqn == "") eqn = "0";
            return "f(x) = " + eqn;
        }
    </script>


    <canvas id="myCanvas" width="500" height="500"></canvas>
    <script type="text/javascript">
        function Graph(config) {
            // user defined properties
            this.canvas = document.getElementById(config.canvasId);
            this.minX = config.minX;
            this.minY = config.minY;
            this.maxX = config.maxX;
            this.maxY = config.maxY;
            this.unitsPerTick = config.unitsPerTick;

            // constants
            this.axisColor = '#aaa';
            this.font = '8pt Calibri';
            this.tickSize = 20;

            // relationships
            this.context = this.canvas.getContext('2d');
            this.rangeX = this.maxX - this.minX;
            this.rangeY = this.maxY - this.minY;
            this.unitX = this.canvas.width / this.rangeX;
            this.unitY = this.canvas.height / this.rangeY;
            this.centerY = Math.round(Math.abs(this.minY / this.rangeY) * this.canvas.height);
            this.centerX = Math.round(Math.abs(this.minX / this.rangeX) * this.canvas.width);
            this.iteration = (this.maxX - this.minX) / 1000;
            this.scaleX = this.canvas.width / this.rangeX;
            this.scaleY = this.canvas.height / this.rangeY;

            // draw x and y axis
            this.drawXAxis();
            this.drawYAxis();
        }

        Graph.prototype.drawXAxis = function () {
            var context = this.context;
            context.save();
            context.beginPath();
            context.moveTo(0, this.centerY);
            context.lineTo(this.canvas.width, this.centerY);
            context.strokeStyle = this.axisColor;
            context.lineWidth = 2;
            context.stroke();

            // draw tick marks
            var xPosIncrement = this.unitsPerTick * this.unitX;
            var xPos, unit;
            context.font = this.font;
            context.textAlign = 'center';
            context.textBaseline = 'top';

            // draw left tick marks
            xPos = this.centerX - xPosIncrement;
            unit = -1 * this.unitsPerTick;
            while (xPos > 0) {
                context.moveTo(xPos, this.centerY - this.tickSize / 2);
                context.lineTo(xPos, this.centerY + this.tickSize / 2);
                context.stroke();
                context.fillText(unit, xPos, this.centerY + this.tickSize / 2 + 3);
                unit -= this.unitsPerTick;
                xPos = Math.round(xPos - xPosIncrement);
            }

            // draw right tick marks
            xPos = this.centerX + xPosIncrement;
            unit = this.unitsPerTick;
            while (xPos < this.canvas.width) {
                context.moveTo(xPos, this.centerY - this.tickSize / 2);
                context.lineTo(xPos, this.centerY + this.tickSize / 2);
                context.stroke();
                context.fillText(unit, xPos, this.centerY + this.tickSize / 2 + 3);
                unit += this.unitsPerTick;
                xPos = Math.round(xPos + xPosIncrement);
            }
            context.restore();
        };

        Graph.prototype.drawYAxis = function () {
            var context = this.context;
            context.save();
            context.beginPath();
            context.moveTo(this.centerX, 0);
            context.lineTo(this.centerX, this.canvas.height);
            context.strokeStyle = this.axisColor;
            context.lineWidth = 2;
            context.stroke();

            // draw tick marks
            var yPosIncrement = this.unitsPerTick * this.unitY;
            var yPos, unit;
            context.font = this.font;
            context.textAlign = 'right';
            context.textBaseline = 'middle';

            // draw top tick marks
            yPos = this.centerY - yPosIncrement;
            unit = this.unitsPerTick;
            while (yPos > 0) {
                context.moveTo(this.centerX - this.tickSize / 2, yPos);
                context.lineTo(this.centerX + this.tickSize / 2, yPos);
                context.stroke();
                context.fillText(unit, this.centerX - this.tickSize / 2 - 3, yPos);
                unit += this.unitsPerTick;
                yPos = Math.round(yPos - yPosIncrement);
            }

            // draw bottom tick marks
            yPos = this.centerY + yPosIncrement;
            unit = -1 * this.unitsPerTick;
            while (yPos < this.canvas.height) {
                context.moveTo(this.centerX - this.tickSize / 2, yPos);
                context.lineTo(this.centerX + this.tickSize / 2, yPos);
                context.stroke();
                context.fillText(unit, this.centerX - this.tickSize / 2 - 3, yPos);
                unit -= this.unitsPerTick;
                yPos = Math.round(yPos + yPosIncrement);
            }
            context.restore();
        };

        Graph.prototype.drawEquation = function (equation, color, thickness) {
            var context = this.context;
            context.save();
            context.save();
            this.transformContext();

            context.beginPath();
            context.moveTo(this.minX, equation(this.minX));

            for (var x = this.minX + this.iteration; x <= this.maxX; x += this.iteration) {
                context.lineTo(x, equation(x));
            }

            context.restore();
            context.lineJoin = 'round';
            context.lineWidth = thickness;
            context.strokeStyle = color;
            context.stroke();
            context.restore();
        };

        Graph.prototype.transformContext = function () {
            var context = this.context;

            // move context to center of canvas
            this.context.translate(this.centerX, this.centerY);

            /*
             * stretch grid to fit the canvas window, and
             * invert the y scale so that that increments
             * as you move upwards
             */
            context.scale(this.scaleX, -this.scaleY);
        };
        var myGraph = new Graph({
            canvasId: 'myCanvas',
            minX: -10,
            minY: -10,
            maxX: 10,
            maxY: 10,
            unitsPerTick: 1
        });


    </script>
    <script>
        function updateGraph(aValue, bValue, cValue) {
            var canvas = document.getElementById('myCanvas');

            var context = canvas.getContext('2d');
            context.clearRect(0, 0, 500, 500);

            myGraph = new Graph({
                canvasId: 'myCanvas',
                minX: -10,
                minY: -10,
                maxX: 10,
                maxY: 10,
                unitsPerTick: 1
            });

            myGraph.drawEquation(function (x) {
                return (aValue * x * x) + (bValue * x) + cValue;
            }, 'blue', 3);
        }


        updateUI();
    </script>
		</div>
	</div>
</asp:Content>

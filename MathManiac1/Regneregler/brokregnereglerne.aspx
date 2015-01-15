<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Regneregler.master" AutoEventWireup="true" CodeBehind="brokregnereglerne.aspx.cs" Inherits="MathManiac1.Regneregler.brokregnereglerne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
     <div class="container">
	<div class="row clearfix">
		<div class="col-md-9">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>
							Regel
						</th>
						<th>
							Formel
						</th>
						<th>
							Eksempel
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="success">
						<td>
							1: Man forlænger en brøk med et tal ved gange tæller og nævner med tallet.
						</td>
						<td>
							$${a \over b} = {a \cdot c \over b \cdot c}$$
						</td>
						<td>
							$${2 \over 3} = {2 \cdot 3 \over 3 \cdot 3} = {6 \over 9}$$
						</td>
		            </tr>
					<tr class="warning">
						<td>
							2 : Man forkorter en brøk med et tal ved at dividere tæller og nævner med tallet.
						</td>
						<td>
							$${a:c \over b:c} = {d  \over e }$$
						</td>
						<td>
							$${2:2 \over 4:2} = {1 \over 2}$$
						</td>
					</tr>
					<tr class="success">
						<td>
							3 : Man ganger en brøk med et tal ved at gange tælleren med tallet.
						</td>
						<td>
							$${a \over b} \cdot c = { a \cdot c \over b}$$
						</td>
						<td>
							$${2 \over 5} \cdot 2 = {2 \cdot 2 \over 5} = {4 \over 5}$$
						</td>
					</tr>
					<tr class="warning">
						<td>
							4 : Man dividerer en brøk med et tal ved at gange nævneren med tallet.
						</td>
						<td>
							$${a \over b} : c = { a  \over b \cdot c}$$
						</td>
						<td>
							$${2 \over 5} : 2 = {2  \over 5 \cdot 2}= {2 \over 10}$$
						</td>
					</tr>
					<tr class="success">
						<td>
							5 : Man ganger to brøker med hinanden ved at gange tæller med tæller og nævner med nævner.
						</td>
						<td>
							$${{a \over b} \cdot {c \over d}} = {{a \cdot c} \over {b \cdot d}}$$
						</td>
						<td>
							$${{3 \over 5} \cdot {2  \over 3}} = {{3 \cdot 2} \over {5 \cdot 3}} = {6 \over 15}$$
						</td>
					</tr>
                    <tr class="warning">
						<td>
							6 : Man dividerer en brøk ved at gange med den omvendte.
						</td>
						<td>
							$${{a \over b} : {c \over d}} = {{a  \over b} \cdot {d \over c}}= {{a \cdot d} \over {b \cdot c}}$$
						</td>
						<td>
							$${{3 \over 5} : {2  \over 3}} = {{3 \cdot 3} \over {5 \cdot 2}} = {9 \over 10}$$
						</td>
					</tr>
                    <tr class="success">
						<td>
							7 : Man lægger to brøker med samme nævner sammen ved at lægge tællerne samme og beholde nævneren.
						</td>
						<td>
							$${a \over b} + {c \over b} = {a + c \over b}$$
						</td>
						<td>
							$${1 \over 3} + {4 \over 3} = {1 + 4 \over 3} = {5 \over 3}$$
						</td>
					</tr>
                    <tr class="warning">
						<td>
							8 : Man trækker to brøker med samme nævner sammen ved at trække tællerne fra hinanden og beholde nævneren.
						</td>
						<td>
							$${a \over b} - {c \over b} = {a - c \over b}$$
						</td>
						<td>
							$${4 \over 3} - {2 \over 3} = {4 - 2 \over 3} = {2 \over 3}$$
						</td>
					</tr>
                    <tr class="success">
						<td>
							9 : Man lægger to vilkårlige brøker sammen ved først at forlænge brøkerne, så de har samme nævner.
						</td>
						<td>
							$${a \over b} + {c \over d} = {{a \cdot d} \over {b \cdot d}} + {{b \cdot c} \over {b \cdot d}} = {{a \cdot d + b \cdot c} \over {b \cdot d}}$$
						</td>
						<td>
							$${1 \over 3} + {2 \over 5} = {{1 \cdot 5} \over {3 \cdot 5}} + {{3 \cdot 2} \over {3 \cdot 5}} = {5 + 6 \over 15} = {11 \over 15}$$
						</td>
					</tr>
                    <tr class="warning">
						<td>
							10 : Man trækker to vilkårlige brøker fra hinanden ved først at forlænge brøkerne, så de har samme nævner.
						</td>
						<td>
							$${a \over b} - {c \over d} = {{a \cdot d} \over {b \cdot d}} - {{b \cdot c} \over {b \cdot d}} = {{a \cdot d - b \cdot c} \over {b \cdot d}}$$
						</td>
						<td>
							$${2 \over 3} - {2 \over 5} = {{2 \cdot 5} \over {3 \cdot 5}} - {{3 \cdot 2} \over {3 \cdot 5}} = {10 - 6 \over 15} = {4 \over 15}$$
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</asp:Content>

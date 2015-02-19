<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="modellering.aspx.cs" Inherits="MathManiac1.Tasks.modellering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div class="jumbotron">
        Disse opgaver er specifikt egnet til emnet "Modellering" på HHX. Det betyder ikke at andre spilder deres tid, 
        men kun at der kan være fagtermer som for ikke HHXére virker fremmede.<br />
        Det bedste udbytte opnås ved at løse opgaverne sideløbende med man indtaster de svar som der bliver bedt om.
    </div>
    <div>
        <asp:HiddenField id="avalue" runat="server"/>
        <asp:HiddenField id="cvalue" runat="server"/>
      
       
        <asp:HiddenField ID="CurrentTask" runat="server" />
        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ny opgave" OnClick="newTasks_Click" /><br /><br />
       <asp:Label id="firmatekst" visible="false" runat="server"></asp:Label>
         $$<asp:Literal ID="newTask" runat="server" />$$   
      <asp:Label ID="opgave_1" Visible="false" runat="server"></asp:Label>

        <p>Vores mindste afsætningsmulighed.</p>
        <asp:TextBox type="text" ID="studentSolution_a" class="form-control" placeholder="Mindste" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
         <!--<asp:RequiredFieldValidator id="RequiredFieldValidator1"  
      ControlToValidate="studentSolution_a"
      Text="Skriv mindste værdien i feltet" 
      runat="server"/>-->
        <strong><asp:Label ID="fejl_min" runat="server" AutoEventWireup="true" /></strong><br />
        <p>Vores største afsætningsmulighed.</p>
        <asp:TextBox type="text" ID="studentSolution_b" class="form-control" placeholder="Største" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
         <!--<asp:RequiredFieldValidator id="RequiredFieldValidator2"  
      ControlToValidate="studentSolution_b"
      Text="Skriv største værdien i feltet" 
      runat="server"/>-->
        <strong><asp:Label ID="fejl_max" runat="server" AutoEventWireup="true" /></strong><br />
        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Løsning" OnClick="newTasksSolution_Click" /><br /><br />
         
        <asp:Label ID="dm_svar" Visible="false" runat="server"></asp:Label>
        $$<asp:Literal ID="dm_solution" runat="server" />$$
        $$<asp:Literal ID="to" runat="server" />$$
        <asp:HiddenField ID="dm" runat="server" ClientIDMode="static" />
        <asp:HiddenField ID="bvalue" runat="server" ClientIDMode="static" />

        <asp:Label ID="revenue" Visible="true" runat="server"></asp:Label>
    </div>
    <div id="revenue_start" runat="server">
         <p>Første nulpunkt.</p>
        <asp:TextBox type="text" ID="rev_1" class="form-control" placeholder="Mindste" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
        <!-- <asp:RequiredFieldValidator id="RequiredFieldValidator3" ControlToValidate="studentSolution_a" Text="Skriv nulpunkt" runat="server"/>-->
        <strong><asp:Label ID="sv_rev_1" runat="server" AutoEventWireup="true" /></strong><br />
        <p>Andet nulpunkt.</p>
        <asp:TextBox type="text" ID="rev_2" class="form-control" placeholder="Største" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
        <!-- <asp:RequiredFieldValidator id="RequiredFieldValidator4" ControlToValidate="studentSolution_b" Text="Skriv nulpunkt" runat="server"/>-->
        <strong><asp:Label ID="sv_rev_2" runat="server" AutoEventWireup="true" /></strong><br />
        <asp:Button CssClass="btn btn-primary" ID="rev_nulpunkt" runat="server" Text="Løsning" OnClick="revenue_Click" /><br /><br />
        <asp:Label ID="rev_svar" Visible="false" runat="server"></asp:Label>
    </div>
    <div id="cost_start" runat="server">
        <asp:Label ID="cost" runat="server"></asp:Label>
        $$<asp:Literal ID="costs" runat="server"></asp:Literal>$$
         <!--$$<asp:Literal ID="dommy_1" runat="server"></asp:Literal>$$
         $$<asp:Literal ID="dommy_2" runat="server"></asp:Literal>$$-->
        <asp:Label ID="cost_task" runat="server"></asp:Label>
          <asp:HiddenField id="ve_value" runat="server" />
        <asp:HiddenField ID="ko_value" runat="server" />
    </div>
    <div id="profit_start" runat="server">
         <p>Vores mindste afsætningsmulighed.</p>
        <asp:TextBox type="text" ID="profit_1" class="form-control" placeholder="Mindste" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
      
        <strong><asp:Label ID="profitfejl_1" runat="server" AutoEventWireup="true" /></strong><br />
        <p>Vores største afsætningsmulighed.</p>
        <asp:TextBox type="text" ID="profit_2" class="form-control" placeholder="Største" aria-describedby="basic-addon1" runat="server" Width="130px" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
        <br />
      
        <strong><asp:Label ID="profitfejl_2" runat="server" AutoEventWireup="true" /></strong><br />
        <asp:Button CssClass="btn btn-primary" ID="profit_solution" runat="server" Text="Løsning" OnClick="profitSolution_Click" /><br /><br />
        <asp:HiddenField ID="counterbackup" runat="server" />
       <!-- $$<asp:Literal ID="profit_dm" runat="server"></asp:Literal>$$
        $$<asp:Literal ID="dum_pro3" runat="server"></asp:Literal>$$
         $$<asp:Literal ID="dum_pro4" runat="server"></asp:Literal>$$
        $$<asp:Literal ID="dum_pro5" runat="server"></asp:Literal>$$
         $$<asp:Literal ID="dum_pro6" runat="server"></asp:Literal>$$
        $$<asp:Literal ID="dum_pro7" runat="server"></asp:Literal>$$
         $$<asp:Literal ID="dum_pro8" runat="server"></asp:Literal>$$
        $$<asp:Literal ID="dum_pro1" runat="server"></asp:Literal>$$
         $$<asp:Literal ID="dum_pro2" runat="server"></asp:Literal>$$-->
        <asp:Label ID="ros_profit" runat="server" Visible="false"></asp:Label>
        $$<asp:Literal ID="profit_answer" runat="server"></asp:Literal>$$
    </div>
</asp:Content>

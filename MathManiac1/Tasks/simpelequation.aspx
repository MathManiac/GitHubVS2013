<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="simpelequation.aspx.cs" Inherits="MathManiac1.Tasks.simpelequation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div style="margin: 30px">
        Dette er meget simple ligninger, klik på "ny opgave" og løs ligningen. Lad være med det tænkesæt "at flytte over på den anden side"<br />
        Det er matematisk forkert og pædagogisk vildledende. Du skal konsekvent gøre det samme på begge sider af lighedstegnet,<br />
        lige indtil du kun har et enkelt x. klik så på "Løsning" og se om du har fanget den.<br />
        <br />
    </div>
    <div style="margin: 30px">
        <asp:HiddenField ID="Xligmed" runat="server" />
        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ny opgave" OnClick="newTasks_Click" />

        $$<asp:Literal ID="newTask" runat="server" />$$

        <div >
          <p>Skriv din løsning i feltet nedenunder, kun tallet.</p>
            <Asp:TextBox type="number" id="studentSolution" class="form-control" placeholder="Din løsning" aria-describedby="basic-addon1" runat="server" width="130px" onkeydown = "return (event.keyCode!=13);" ></Asp:TextBox>
            <br />
            <br />
        </div>

        <div>
            <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Løsning" OnClick="newTasksSolution_Click" />

            $$<asp:Literal ID="newtaskkoefficienter" runat="server" />$$
            <asp:label id="rosellerris" runat="server" AutoEventWireup="true" />
            <asp:HiddenField ID="counterbackup" runat="server" />
        </div>
    </div>
</asp:Content>

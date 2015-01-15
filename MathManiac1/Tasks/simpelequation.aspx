<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Tasks.master" AutoEventWireup="true" CodeBehind="simpelequation.aspx.cs" Inherits="MathManiac1.Tasks.simpelequation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <div style="margin: 30px">
        Dette er meget simple ligninger, klik på "ny opgave" og løs ligning. Lad være med det tænkesæt "at flytte over på den anden side"<br />
        Det er matematisk forkert og pædagogisk vildledende. Du skal konsekvent gøre det samme på begge sider af lighedstegnet,<br />
        lige indtil du kun har et enkelt x. klik så på "Løsning" og se om du er enig.<br />
        <br />
    </div>
    <div style="margin: 30px">
        <asp:HiddenField ID="Xligmed" runat="server" />
        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Ny opgave" OnClick="newTasks_Click" />

        $$<asp:Literal ID="newTask" runat="server" />$$
       
        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Løsning" OnClick="newTasksSolution_Click" />

        $$<asp:Literal ID="newtaskkoefficienter" runat="server" />$$
    </div>
</asp:Content>

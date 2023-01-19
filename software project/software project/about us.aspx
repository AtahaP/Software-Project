<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="about us.aspx.cs" Inherits="software_project.about_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>About US</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="txtBaslik" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
    <br />
    <br />
    <asp:Label ID="txtOzet" runat="server" ></asp:Label>
    <br />
    <br />
    <asp:Label ID="txtDetay" runat="server" ></asp:Label>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="software_project.Yonetim.Ayarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Settings Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-header">
                Basic form elements
            </div>
            <div class="card-body" style="height: 400px; overflow: scroll">


                <form class="forms-sample" runat="server">
                    <div class="form-group">
                        <label for="exampleInputName1">E-Mail</label>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Phone Number</label>
                        <asp:TextBox ID="txtTlf" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Address</label>
                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Address"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Twitter</label>
                        <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Youtube</label>
                        <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" placeholder="Youtube"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Instagram</label>
                        <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Facebook</label>
                        <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" placeholder="Facebook"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Site Description</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Description"></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <br />
                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-danger" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success" OnClick="Button2_Click" />


                </form>
            </div>
        </div>
    </div>
</asp:Content>

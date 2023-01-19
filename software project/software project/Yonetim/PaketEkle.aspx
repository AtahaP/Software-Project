<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="software_project.Yonetim.PaketEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Add New Tour Package Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-header">
                <h3>Paket Ekleme Formu</h3>
                <br />
                <asp:Label ID="lblSonuc" runat="server" Text=""></asp:Label>
            </div>
            <div class="card-body" style="height:400px; overflow:scroll;">
                <%--<form class="forms-sample" runat="server" enctype="multipart/form-data">--%>
                <form class="forms-sample" runat="server" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="exampleInputName1">Tour Name</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tour Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Tour Price</label>
                        <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Tour Price"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Tour Time</label>
                        <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Tour Time"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleSelectGender">Tour Location</label>
                        <asp:TextBox ID="txtKonum" runat="server" CssClass="form-control" placeholder="Tour Location"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tour upload</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />    
                        <%--<asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />--%>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Tour Detail</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Tour Detail"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click"/>
                    
                </form>
            </div>
        </div>
    </div>
</asp:Content>

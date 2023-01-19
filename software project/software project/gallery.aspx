<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="software_project.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Gallery</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>Image Gallery</h3>
    <div class="row gallery-item">
        <div class="col-md-4">
            <a href="assets/img/elements/g1.jpg" class="img-pop-up">
                <div class="single-gallery-image" style="background: url(images/galeri/izmir-de-tatil-yapabileceginiz-en-iyi-yerler-ve-fiyatlari-240651.jpg);"></div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="assets/img/elements/g2.jpg" class="img-pop-up">
                <div class="single-gallery-image" style="background: url(images/galeri/Titanic-Mardan-Palace-Genel-280380_1.jpg);"></div>

            </a>
        </div>
        <div class="col-md-6">
            <a href="assets/img/elements/g4.jpg" class="img-pop-up">
                <div class="single-gallery-image" style="background: url(images/galeri/unnamed.jpg);"></div>

            </a>
        </div>
    </div>
</asp:Content>

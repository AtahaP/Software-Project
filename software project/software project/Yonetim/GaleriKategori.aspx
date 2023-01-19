<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="software_project.Yonetim.GaleriKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Gallery Category Operations Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <p class="card-description">
                    Basic form elements
                </p>
                <form class="forms-sample" runat="server">
                    <div class="form-group">
                        <label for="exampleInputName1">Category Name</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tour Name"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Add Category" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                </form>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEkle.aspx.cs" Inherits="software_project.Yonetim.BlogEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Add Blog Page</h3>
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
                        <label for="exampleInputName1">Title</label>
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Summary</label>
                        <asp:TextBox ID="txtOzet" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Blog Summary"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Category</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>Blog Image</label>
                        <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />

                    </div>

                    <div class="form-group">
                        <label for="exampleTextarea1">Blog Detail</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detail"></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />

                </form>
            </div>
        </div>
    </div>
</asp:Content>

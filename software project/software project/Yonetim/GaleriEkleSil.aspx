<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="software_project.Yonetim.GaleriEkleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">İmage Gallery Operations Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <p class="card-description">
                    Basic form elements
                </p>
                <form class="forms-sample" runat="server">

                    <h3>Gallery İmage Upload Area</h3>
                    <div class="form-group">
                        <label for="exampleInputName1">Image Name</label>
                        <asp:TextBox ID="txtResimAd" CssClass="form-control" runat="server" placeholder="Image Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Category Name</label>
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>İmage Gallery</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Upload A Picture" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>İmage Gallery</label>
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

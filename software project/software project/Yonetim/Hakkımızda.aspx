<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="software_project.Yonetim.Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">About Us Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-header">
                Basic form elements
            </div>
            <div class="card-body" style="height: 511px; overflow: scroll">


                <form class="forms-sample" runat="server">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleTextarea1">Özet</label>
                        <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Özet"></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="" style="display:none;" ></asp:Label>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-danger" OnClick="Button2_Click"  />
                    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success" OnClick="Button1_Click" />


                </form>
            </div>
        </div>
    </div>
</asp:Content>

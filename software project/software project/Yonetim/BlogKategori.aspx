<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="software_project.Yonetim.BlogKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Add/Delete Blog Category</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">

                    <p class="card-description">
                        Basic form elements
                    </p>

                    <div class="form-group">
                        <label for="exampleInputName1">Category Name</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tour Name"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />

                </div>
            </div>
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoTripConnectionString %>" DeleteCommand="DELETE FROM [tblBlogKategori] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlogKategori] ([Adi]) VALUES (@Adi)" SelectCommand="SELECT * FROM [tblBlogKategori]" UpdateCommand="UPDATE [tblBlogKategori] SET [Adi] = @Adi WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Adi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Adi" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>

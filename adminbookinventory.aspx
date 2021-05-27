<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="virtual_library.adminbookinventory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtuallibraryConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                    <img id="imgview" height="150px" width="100px" src="book_inventory/books1.jpg" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Kitap Bilgileri</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <span class="input-group-text">Kitap Numarası</span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged">

                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <span class="input-group-text">Yazar İsmi</span>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" OnTextChanged="TextBox5_TextChanged">

                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <span class="input-group-text">Kitap Adı</span>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" OnTextChanged="TextBox4_TextChanged">

                                    </asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <span class="input-group-text">Tür</span>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control">

                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <span class="input-group-text">Kitap Hakkında Düşüncelerim</span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" OnTextChanged="TextBox2_TextChanged">

                                    </asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success m-2" ID="Button3" runat="server" Text="Ekle" OnClick="Button3_Click" />
                                    <asp:Button class="btn btn-danger m-2" ID="Button2" runat="server" Text="Sil" OnClick="Button2_Click" />

                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="/assets/prof.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Kitap Listesi</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                        <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>

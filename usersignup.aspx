<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="virtual_library.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Yeni Kullanıcı Kayıt</h3>
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
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Üye Numarası</span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Üye Numaranız">

                                    </asp:TextBox>
                                </div>
                                

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">E-mail</span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control">

                                    </asp:TextBox>
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Şifre</span>

                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password">

                                    </asp:TextBox>
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Tam İsim</span>

                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control">

                                    </asp:TextBox>
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Telefon Numarası</span>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control">

                                    </asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-primary m-2" ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click" />
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

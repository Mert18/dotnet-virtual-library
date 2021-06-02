<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="virtual_library.userlogin" %>
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
                                    <h3>Kullanıcı Girişi</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="/assets/ad.png" width="200px" />
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
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control">

                                    </asp:TextBox>
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Şifre</span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password">

                                    </asp:TextBox>
                                </div>

                                    <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" />

                                    <a href="usersignup.aspx"><input class="btn btn-secondary btn-lg btn-block" id="Button2" type="button" value="Kayıt Ol" /></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

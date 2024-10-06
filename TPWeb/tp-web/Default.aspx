<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="row">
            <div class="col-4"></div>
            <div class="col">
                <h1 id="aspnetTitle">Sorteo Premios</h1>
                <p class=" lead">&nbsp;Ingresé el código de su voucher</p>
                <asp:TextBox ID="TxtVoucher" runat="server" autocomplete="off" Width="182px" Height="35px" placeholder="Ingrese un valor alfanumerico.." Font-Size="Small" Font-Italic="True"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnInicial" CssClass="btn btn-primary" OnClick="btnInicial_Click" runat="server" Text="Siguiente" />

            </div>
        </div>
        <div class="col-4">
        </div>





    </main>

</asp:Content>

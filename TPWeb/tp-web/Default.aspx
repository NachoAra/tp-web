<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    body {
        background-image: url('Images/fondo.jpg'); 
        background-size: cover; 
        background-repeat: no-repeat; 
        background-attachment: fixed;
        background-position: center;
        margin: 0; 
        padding: 0;
        height: 100vh;
    }

    .RequiredMessage {
        font-style: italic;
        padding: 0;
        margin: 0;
        font-size: 14px;
    }
    h1,p {
        color: white;
    }
    </style>

    <main>
        <div class="row">
            <div class="col-4"></div>
            <div class="col d-flex flex-column">
                <h1 id="aspnetTitle">Sorteo Premios</h1>
                <p class=" lead">&nbsp;Ingresé el código de su voucher</p>
                <asp:TextBox ID="TxtVoucher" runat="server" CssClass="w-100" Width="182px" Height="35px" placeholder="Ingrese un valor alfanumerico.." Font-Size="Small" Font-Italic="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorVoucher" runat="server" ErrorMessage="*El campo requiere un valor" Display="Dynamic" ControlToValidate="TxtVoucher" CssClass="RequiredMessage" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorVoucher" runat="server" ErrorMessage="*Ingrese solo valores alfanuméricos" Display="Dynamic" ControlToValidate="TxtVoucher" ValidationExpression="^[a-zA-Z0-9 ]+$" CssClass="RequiredMessage" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                <asp:Button ID="btnInicial" CssClass="btn btn-primary mt-2" OnClick="btnInicial_Click" OnClientClick="return validarAlfanumerico()" runat="server" Text="Siguiente" />
            </div>
            <div class="col-4"></div>
        </div>
    </main>
</asp:Content>

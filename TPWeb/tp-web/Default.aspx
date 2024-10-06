<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
        /* Agrega el estilo de fondo aquí */
        body {
            background-image: url('Images/fondo.jpg'); /* Cambia esta URL a la de tu imagen */
            background-size: cover; /* Asegura que la imagen cubra toda la pantalla */
            background-repeat: no-repeat; /* Evita que la imagen se repita */
            background-attachment: fixed; /* Mantiene la imagen fija al hacer scroll */
            background-position: center; /* Centra la imagen en la pantalla */
            margin: 0; /* Elimina el margen predeterminado del body */
            padding: 0; /* Elimina el padding predeterminado del body */
            height: 100vh; /* Asegura que el body ocupe toda la altura de la ventana */
        }

       
    </style>
    <style>
        .RequiredMessage {
            font-style: italic;
            padding: 0;
            margin: 0;
            font-size: 14px;
        }
    </style>

    <main>
        <div class="row">
            <div class="col-4"></div>
            <div class="col">
                <h1 id="aspnetTitle"  style=color:white >Sorteo Premios</h1>
                <p style=color:black class=" lead">&nbsp;Ingresé el código de su voucher</p>
                <asp:TextBox ID="TxtVoucher" runat="server" autocomplete="off" Width="182px" Height="35px" placeholder="Ingrese un valor alfanumerico.." Font-Size="Small" Font-Italic="True"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnInicial" CssClass="btn btn-primary" OnClick="btnInicial_Click" OnClientClick="return validarAlfanumerico()" runat="server" Text="Siguiente" />
                <script>
                    function validarAlfanumerico() {
                        var valor = document.getElementById('<%= TxtVoucher.ClientID %>').value;
                        var regex = /^[a-zA-Z0-9]+$/; // Expresión regular para alfanumérico

                        if (!regex.test(valor)) {
                            alert("Por favor, ingrese solo valores alfanuméricos (letras y números).");
                            return false; // Detiene el envío del formulario
                        }
                        return true; // Permite el envío del formulario si es válido
                    }
</script>
            </div>
        </div>
        <div class="col-4">
        </div>





            <div class="col d-flex flex-column">
                <h1 id="aspnetTitle">Sorteo Premios</h1>
                <p class=" lead">&nbsp;Ingresé el código de su voucher</p>
                <asp:TextBox ID="TxtVoucher" runat="server" CssClass="w-100" Width="182px" Height="35px" placeholder="Ingrese un valor alfanumerico.." Font-Size="Small" Font-Italic="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorVoucher" runat="server" ErrorMessage="El campo requiere un valor" Display="Dynamic" ControlToValidate="TxtVoucher" CssClass="RequiredMessage" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorVoucher" runat="server" ErrorMessage="Ingrese solo valores alfanuméricos" Display="Dynamic" ControlToValidate="TxtVoucher" ValidationExpression="^[a-zA-Z0-9 ]+$" CssClass="RequiredMessage" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                <asp:Button ID="btnInicial" CssClass="btn btn-primary mt-2" OnClick="btnInicial_Click" OnClientClick="return validarAlfanumerico()" runat="server" Text="Siguiente" />
            </div>
        <div class="col-4"></div>
    </main>
</asp:Content>

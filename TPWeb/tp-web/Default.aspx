<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div>



        </div>
        <div class="row">
            <div class="col-4"></div>
            <div class="col">
                <h1 id="aspnetTitle">Sorteo Premios</h1>
                <p class=" lead">&nbsp;Ingresé el código de su voucher</p>
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





    </main>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="tp_web.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .form-label {
            font-size: 16px;
            color: white;
            padding: 2px 0;
            margin: 0.375rem 0 0 0;
        }

        .RequiredMessage {
            font-style: italic;
            padding: 0;
            margin: 0;
            font-size: 14px;
        }
        .title-form {
            color: white;
        }
        .alert p{
            margin-bottom:0;
        }
    </style>

    <div class="row justify-content-center position-relative">
        <div class="col-6 card mt-1 p-3 bg-dark rounded-3 align-items-center">
            <div class="alert alert-success w-100 text-center" id="CardTiempoEspera" style="display: none" runat="server">
                <p>Aguarde un momento...</p>
            </div>
            <asp:Timer ID="TiempoEspera" Interval="3000" OnTick="TiempoEspera_Tick" Enabled="false" runat="server"></asp:Timer>
            <h2 class="title-form">Registrate para ganar!</h2>
            <div class="row col-sm-6">
                <label for="DNIUsuario" class="form-label">DNI</label>
                <asp:TextBox ID="DNIUsuario" CssClass="form-control" placeholder="Ingrese su número de documento" OnTextChanged="DNIUsuario_TextChanged" AutoPostBack="true" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDNI" ControlToValidate="DNIUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo DNI es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorDNI" CssClass="RequiredMessage" runat="server" ErrorMessage="*Solo se aceptan valores numéricos." ControlToValidate="DNIUsuario" ValidationExpression="^\d+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-6">
                <label for="NombreUsuario" class="form-label">Nombre</label>
                <asp:TextBox type="text" ID="NombreUsuario" CssClass="form-control" placeholder="Ingrese su nombre" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" ControlToValidate="NombreUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo Nombre es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorNombre" CssClass="RequiredMessage" runat="server" ErrorMessage="*Solo se aceptan letras." ControlToValidate="NombreUsuario" ValidationExpression="[a-zA-Z ]{2,254}" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-6">
                <label for="ApellidoUsuario" class="form-label">Apellido</label>
                <asp:TextBox type="text" ID="ApellidoUsuario" CssClass="form-control" placeholder="Ingrese su apellido" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorApellido" ControlToValidate="ApellidoUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo Apellido es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorApellido" CssClass="RequiredMessage" runat="server" ErrorMessage="*Solo se aceptan letras." ControlToValidate="ApellidoUsuario" ValidationExpression="[a-zA-Z ]{2,254}" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>

            <div class="row col-sm-6">
                <label for="EmailUsuario" class="form-label">Email</label>
                <asp:TextBox type="text" ID="EmailUsuario" CssClass="form-control" placeholder="ejemplo@proveedor.com" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="EmailUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo Email es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo debe contener '@'." ControlToValidate="EmailUsuario" ValidationExpression="^.*@.*$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-6">
                <label for="DireccionUsuario" class="form-label">Dirección</label>
                <asp:TextBox type="text" ID="DireccionUsuario" CssClass="form-control" placeholder="Calle 123" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDireccion" ControlToValidate="DireccionUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo Dirección es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorDireccion" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo acepta solo letras y números." ControlToValidate="DireccionUsuario" ValidationExpression="^[a-zA-Z0-9 ]+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-6">
                <label for="CiudadUsuario" class="form-label">Ciudad</label>
                <asp:TextBox type="text" ID="CiudadUsuario" CssClass="form-control" placeholder="Buenos Aires" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCiudad" ControlToValidate="CiudadUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo Ciudad es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCiudad" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo acepta solo letras." ControlToValidate="CiudadUsuario" ValidationExpression="^[a-zA-Z ]+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-6">
                <label for="CPUsuario" class="form-label">Código postal</label>
                <asp:TextBox ID="CPUsuario" type="text" CssClass="form-control" placeholder="Ingrese su código postal" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCP" ControlToValidate="CPUsuario" CssClass="RequiredMessage" runat="server" ErrorMessage="*El campo Código postal es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCP" CssClass="RequiredMessage" runat="server" ErrorMessage="*Solo se aceptan valores numéricos." ControlToValidate="CPUsuario" ValidationExpression="^\d+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
            <div class="row col-sm-6 mt-4">
                <asp:Button Text="Enviar" type="button" ID="BtnEnviarForm" OnClick="BtnEnviarForm_Click" CssClass="btn btn-success" runat="server" />
            </div>
        </div>
    </div>
                


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="tp_web.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .ocultar {
            display: none;
            position:absolute;
            top: 50%;
            left: 50%;
            transform: translate(0%, -50%);
            z-index: 10;
        }
    </style>

    <div class="row position-relative g-2">
        <div>
            <label for="DNIUsuario" class="form-label">DNI</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox ID="DNIUsuario" CssClass="form-control" placeholder="Ingrese su número de documento" OnTextChanged="DNIUsuario_TextChanged" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDNI" ControlToValidate="DNIUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo DNI es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorDNI" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*Solo se aceptan valores numéricos." ControlToValidate="DNIUsuario" ValidationExpression="^\d+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="NombreUsuario" class="form-label">Nombre</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="NombreUsuario" CssClass="form-control" placeholder="Ingrese su nombre" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" ControlToValidate="NombreUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Nombre es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorNombre" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*Solo se aceptan letras." ControlToValidate="NombreUsuario" ValidationExpression="[a-zA-Z ]{2,254}" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="ApellidoUsuario" class="form-label">Apellido</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="ApellidoUsuario" CssClass="form-control" placeholder="Ingrese su apellido" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorApellido" ControlToValidate="ApellidoUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Apellido es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorApellido" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*Solo se aceptan letras." ControlToValidate="ApellidoUsuario" ValidationExpression="[a-zA-Z ]{2,254}" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="EmailUsuario" class="form-label">Email</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="EmailUsuario" CssClass="form-control" placeholder="ejemplo@proveedor.com" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="EmailUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Email es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo debe contener '@'." ControlToValidate="EmailUsuario" ValidationExpression="^.*@.*$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="DireccionUsuario" class="form-label">Dirección</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="DireccionUsuario" CssClass="form-control" placeholder="Calle 123" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDireccion" ControlToValidate="DireccionUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Dirección es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorDireccion" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo acepta solo letras y números." ControlToValidate="DireccionUsuario" ValidationExpression="^[a-zA-Z0-9 ]+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="CiudadUsuario" class="form-label">Ciudad</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="CiudadUsuario" CssClass="form-control" placeholder="Buenos Aires" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCiudad" ControlToValidate="CiudadUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Ciudad es obligatorio."  Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCiudad" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo acepta solo letras." ControlToValidate="CiudadUsuario" ValidationExpression="^[a-zA-Z ]+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="CPUsuario" class="form-label">Código postal</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox ID="CPUsuario" type="text" CssClass="form-control" placeholder="Ingrese su código postal" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCP" ControlToValidate="CPUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Código postal es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCP" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*Solo se aceptan valores numéricos." ControlToValidate="CPUsuario" ValidationExpression="^\d+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>

            </div>
        </div>
        <div class="d-grid">
            <asp:Button Text="Enviar" type="button" ID="BtnEnviarForm" OnClick="BtnEnviarForm_Click" CssClass="btn btn-success" runat="server" />
        </div>
        <div class="row ocultar" ID="CardRegistroExitoso" runat="server">
            <asp:Timer ID="TiempoEspera" Interval="3000" OnTick="TiempoEspera_Tick" Enabled="false" runat="server"></asp:Timer>
            <div class="card bg-success" style="width: 20rem; height: 8rem">
                <div class="card-body">
                    <p class="text-center fs-3 mb-0" style="color: white;">
                        Registro exitoso!
                    </p>
                    <p class="text-center fs-6 mb-0" style="color: white;">
                        Sera redirigido a la pagina de inicio a continuación...
                    </p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

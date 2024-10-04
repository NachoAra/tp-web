<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="tp_web.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row g-2">
        <div>
            <label for="DNIUsuario" class="form-label">DNI</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox ID="DNIUsuario" CssClass="form-control" placeholder="Ingrese su número de documento" OnTextChanged="DNIUsuario_TextChanged" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDNI" ControlToValidate="DNIUsuario" CssClass="fst-italic ms-2" runat="server"  ErrorMessage="*El campo DNI es obligatorio." Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*Solo se aceptan valores numéricos." ControlToValidate="DNIUsuario" ValidationExpression="^\d+$" EnableClientScript="true" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div>
            <label for="NombreUsuario" class="form-label">Nombre</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="NombreUsuario" CssClass="form-control" placeholder="Ingrese su nombre" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="NombreUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Nombre es obligatorio." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <label for="ApellidoUsuario" class="form-label">Apellido</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="ApellidoUsuario" CssClass="form-control" placeholder="Ingrese su apellido" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ApellidoUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Apellido es obligatorio." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <label for="EmailUsuario" class="form-label">Email</label>
            <div class="col-md-6 d-flex align-items-center" >
                <asp:TextBox type="email" ID="EmailUsuario" CssClass="form-control" placeholder="ejemplo@proveedor.com" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="EmailUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Email es obligatorio." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <label for="DireccionUsuario" class="form-label">Dirección</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="DireccionUsuario" CssClass="form-control" placeholder="Calle 123" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="DireccionUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Dirección es obligatorio." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <label for="CiudadUsuario" class="form-label">Ciudad</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox type="text" ID="CiudadUsuario" CssClass="form-control" placeholder="Buenos Aires" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CiudadUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Ciudad es obligatorio." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <label for="CPUsuario" class="form-label">Código postal</label>
            <div class="col-md-6 d-flex align-items-center">
                <asp:TextBox ID="CPUsuario" type="text" CssClass="form-control" placeholder="Ingrese su código postal" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CPUsuario" CssClass="fst-italic ms-2" runat="server" ErrorMessage="*El campo Código postal es obligatorio." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="d-grid">
            <asp:Button Text="Enviar" type="button" ID="BtnEnviarForm" OnClick="BtnEnviarForm_Click" CssClass="btn btn-success" runat="server" />
        </div>
    </div>
</asp:Content>

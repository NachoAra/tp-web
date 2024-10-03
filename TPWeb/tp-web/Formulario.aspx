<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="tp_web.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <!--public int IDCliente { get; set; }
  public string Documento { get; set; }
  public string Nombre { get; set; }
  public string Apellido { get; set; }
  public string Email { get; set; }
  public string Direccion { get; set; }
  public string Ciudad { get; set; }
  public int CodigoPostal { get; set; }!-->

    <div class="row g-2">
        <div>
            <label for="DNIUsuario" class="form-label">DNI</label>
            <asp:TextBox ID="DNIUsuario" CssClass="form-control" placeholder="Ingrese su número de documento" AutoPostBack="true" OnTextChanged="DNIUsuario_TextChanged" runat="server" />
        </div>
        <div>
            <label for="NombreUsuario" class="form-label">Nombre</label> 
            <asp:TextBox type="text" ID="NombreUsuario" CssClass="form-control" placeholder="Ingrese su nombre" runat="server" />
        </div>
        <div>
            <label for="ApellidoUsuario" class="form-label">Apellido</label>        
            <asp:TextBox type="text" ID="ApellidoUsuario" CssClass="form-control" placeholder="Ingrese su apellido" runat="server" />
        </div>
        <div>
            <label for="EmailUsuario" class="form-label">Email</label>        
            <asp:TextBox type="email" ID="EmailUsuario" CssClass="form-control" placeholder="ejemplo@proveedor.com" runat="server" />
        </div>
        <div>
            <label for="DireccionUsuario" class="form-label">Dirección</label>        
            <asp:TextBox type="text" ID="DireccionUsuario" CssClass="form-control" placeholder="Calle 123" runat="server" />
        </div>
        <div>
            <label for="CiudadUsuario" class="form-label">Ciudad</label>        
            <asp:TextBox type="text" ID="CiudadUsuario" CssClass="form-control" placeholder="Buenos Aires" runat="server" />
        </div>
        <div>
            <label for="CPUsuario" class="form-label">Código postal</label>         
            <asp:TextBox ID="CPUsuario" CssClass="form-control" placeholder="Ingrese su código postal" runat="server" />
        </div>
        <div class="d-grid">
            <asp:Button Text="Enviar" type="button" ID="BtnEnviarForm" OnClick="BtnEnviarForm_Click" CssClass="btn btn-success" runat="server"/>
        </div>
    </div>
</asp:Content>

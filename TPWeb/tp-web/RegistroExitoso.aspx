<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroExitoso.aspx.cs" Inherits="tp_web.RegistroExitoso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-center align-items-center" style="min-height: 80vh;">
        <div class="card col-12" style="width: 26rem; height: 24rem">
            <div class="card-body bg-success bg-opacity-25">
                <h3 class="card-title text-center">El voucher ha sido canjeado con exito!</h3>
                <p class="card-text fs-5">Cliente: <span class="fw-bold" id="NombreCliente" runat="server"></span></p>
                <p class="card-text fs-5">DNI: <span class="fw-bold" id="DNIUsuario" runat="server"></span></p>
                <p class="card-text fs-5">Codigo Voucher: <span class="fw-bold" id="CodigoVoucher" runat="server"></span></p>
                <p class="card-text fs-5">Artículo: <span class="fw-bold" id="NombreArticulo" runat="server"></span></p>
                <p class="fs-4 text-center">Muchas gracias por participar!</p>
                <div class="d-flex justify-content-center align-items-center text-center">
                    <asp:Button Text="Volver al inicio" ID="BtnVolverInicio" type="button" CssClass="btn btn-success" OnClick="BtnVolverInicio_Click" runat="server" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

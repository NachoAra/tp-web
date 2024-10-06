<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AvisoVoucher.aspx.cs" Inherits="tp_web.AvisoVoucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-center align-items-center" style="min-height: 80vh;">
        <div class="card col-12" style="width: 26rem; height: auto">
            <div class="card-body bg-success bg-opacity-25">
                <h3 class="card-text text-center">Lo sentimos, el voucher seleccionado fue canjeado o no existe.</h3>
                <div class="d-flex justify-content-center align-items-center text-center">
                    <asp:Button Text="Volver al inicio" ID="BtnVolverInicio" type="button" CssClass="btn btn-success" OnClick="BtnVolverInicio2_Click" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="tp_web.Articulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
        }
        .container_card{
            padding: 20px;
        }
        .titulo {
            text-align: center;
            margin-bottom: 20px;
        }
        .articulos-grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }
        .articulo-card {
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 5px 5px 10px #888888;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .articulo-imagen {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .articulo-contenido {
            padding: 15px;
        }
        .articulo-titulo {
            font-size: 1.2em;
            margin-bottom: 10px;
        }
        .articulo-descripcion {
            color: #666;
            margin-bottom: 15px;
        }
        .articulo-boton {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            text-align: center;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .articulo-boton:hover {
            background-color: #0056b3;
        }
    </style>

    <div class="container container_cards">
        <h1 class="titulo">Elegí tu premio</h1>
        <div class="articulos-grid">
            <asp:Repeater ID="rptArticulos" runat="server">
                <ItemTemplate>
                    <div class="articulo-card">
                        <img class="articulo-imagen" src='<%# GetImageUrl(Container.DataItem) %>' alt="Imagen Artículo" />
                        <div class="articulo-contenido">
                            <h3 class="articulo-titulo"><%# Eval("Nombre") %></h3>
                            <p class="articulo-descripcion"><%# Eval("Descripcion") %></p>
                            <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" 
                                CssClass="articulo-boton" 
                                CommandArgument='<%# Eval("IDArticulo") %>' 
                                OnClick="btnSeleccionar_Click" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="tp_web.Articulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .titulo {
            text-align: center;
            margin-bottom: 20px;
        }
        .articulos-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }
        .articulo-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
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
        .articulo-precio {
            font-weight: bold;
            margin-bottom: 10px;
        }
        .articulo-boton {
            display: inline-block;
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>

    <div class="container">
        <h1 class="titulo">Elegí tu premio</h1>
        <div class="articulos-grid">
            <asp:Repeater ID="rptArticulos" runat="server">
                <ItemTemplate>
                    <div class="articulo-card">
                        <img src='<%# GetImageUrl(Container.DataItem) %>' alt='<%# Eval("Nombre") %>' class="articulo-imagen">
                        <div class="articulo-contenido">
                            <h2 class="articulo-titulo"><%# Eval("Nombre") %></h2>
                            <p class="articulo-descripcion"><%# Eval("Descripcion") %></p>
                            <p class="articulo-precio">$<%# Eval("Precio", "{0:N2}") %></p>
                            <a href="#" class="articulo-boton"><%# GetButtonText(Eval("Nombre").ToString()) %></a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
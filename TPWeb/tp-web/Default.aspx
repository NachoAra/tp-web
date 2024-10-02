<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="row">
            <div class="col-4"></div>
                 <div class="col">
            <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Sorteo Premios</h1>
            <h2 =""</h2>
            <p class=" lead">&nbsp;Ingresé el código de su voucher</p>
            <asp:TextBox ID="TxtVoucher" runat="server" Width="182px"></asp:TextBox>
            <br />
            <asp:Button ID="BtnInicial" runat="server" Text="Siguiente"   BackColor="#0066FF" BorderColor="Black" BorderStyle="Groove" Font-Italic="True" Font-Size="Small" />
           <br />
                 </div>
            </div><div class="col-4">


            

        </div>   

                 
        </section>

       
    </main>

</asp:Content>

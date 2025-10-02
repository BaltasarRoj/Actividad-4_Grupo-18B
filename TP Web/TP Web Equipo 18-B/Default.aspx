<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_Web_Equipo_18_B._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Aplicacion WEB - Catalogo de Articulos</h1>
    <main>
        <div class="row row-cols-1 row-cols-md-3 g-4">

        <%
            foreach (Dominio.Articulo Art in listaArticulo)
            {
        %>
                  <div class="col">
                    <div class="card">
                      <img src="<%:Art.UrlImagen%>" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title"><%: Art.nombre %></h5>
                        <p class="card-text"><%:Art.descripcion %></p>
                        <button><a href="ArticuloSeleccionado.aspx?id= <%:Art.id %>">Seleccionar</a></button>
                      </div>
                    </div>
                  </div>
            <% }%>
          
        </div>
    </main>

</asp:Content>

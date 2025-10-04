<%@ Page Title="Listar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="TP_Web_Equipo_18_B.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Tu aplicacion para listar.</h3>
        <p>Parrafo de prueba para listar.</p>
        
<%--  Listar usando SP --%>
        <asp:GridView ID="dgvCatalogo" runat="server" CssClass="table" AutoGenerateColumns="false">

            <Columns>
                <asp:BoundField HeaderText="Tipo" DataField="Tipo" />
                <asp:BoundField HeaderText="Marca" DataField="Marca" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                <asp:BoundField HeaderText="Precio" DataField="Precio" />
            </Columns>
            
        </asp:GridView>

         <%--  Listar usando foreach para crear un contenedor dinamico segun la cantidad de elementos de la BD 
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
                          <button>

                          </button>
                          
                      </div>
                    </div>
                  </div>
            <% }%>
          
        </div>
        --%>
    </main>
</asp:Content>

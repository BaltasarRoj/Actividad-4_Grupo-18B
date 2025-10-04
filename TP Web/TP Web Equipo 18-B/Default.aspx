<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_Web_Equipo_18_B._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Aplicacion WEB - Catalogo de Articulos</h1>
    <main>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater ID="repRepetidor" runat="server">
                <ItemTemplate>
                    <div class="col">
                      <div class="card">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="..." 
                             style="width:100%; height:200px; object-fit:contain; background-color:#f8f9fa;" />
                        <div class="card-body">
                          <h5 class="card-title"><%#Eval("nombre") %></h5>
                          <p class="card-text"><%#Eval("descripcion") %></p>
<%--                          <a href="FormularioPaso3.aspx?id=<%#Eval("id") %>">Seleccionar</a>--%>
<%--                         <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" OnClick="btnSeleccionar_Click" CommandArgument='<%# Eval("id") %>' CommandName="ArtSelectArgument" />--%>
                         <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="btn btn-primary" CommandArgument='<%# Eval("id") %>' OnClick="btnSeleccionar_Click" />
                        </div>
                      </div>
                    </div>
                </ItemTemplate>                
            </asp:Repeater>
        </div>
    </main>
</asp:Content>


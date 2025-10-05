
<%--<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_Web_Equipo_18_B._Default" %>

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
                         <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="btn btn-primary" CommandArgument='<%# Eval("id") %>' OnClick="btnSeleccionar_Click" />
                        </div>
                      </div>
                    </div>
                </ItemTemplate>                
            </asp:Repeater>
        </div>
    </main>
</asp:Content>--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_Web_Equipo_18_B._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
  <h1 style="text-align:center";>Aplicacion WEB - Catalogo de Articulos</h1>
    <br />
    <br />
   <main>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater ID="repRepetidor" runat="server" OnItemDataBound="repRepetidor_ItemDataBound">
                <ItemTemplate>
                    <div class="col">
                      <div class="card">
                        <!-- Carrusel -->
                        <div id='carousel<%# Eval("id") %>' class="carousel slide" data-bs-ride="false" data-bs-interval="false"style="width:100%; height:200px;">                     
                            <div class="carousel-inner" style="height: 200px;">
                                <asp:Repeater ID="repImagenes" runat="server">
                                    <ItemTemplate>
                                        <div class='carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %>' style="text-align: center;">
                                            <img src='<%# Container.DataItem %>' 
                                                 class="d-block mx-auto" 
                                                 alt='Imagen <%# Container.ItemIndex + 1 %>'
                                                 style="max-height: 200px; max-width: 100%; object-fit: contain;">
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            
                            <!-- mas de una imagen -->
                            <asp:Panel ID="pnlControles" runat="server" Visible="false">
                                <button class="carousel-control-prev" type="button" data-bs-target='#carousel<%# Eval("id") %>' data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"style="background-color: #007bff; border-radius: 50%;"></span>
                                    <span class="visually-hidden">Anterior</span>

                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target='#carousel<%# Eval("id") %>' data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true" style="background-color: #007bff; border-radius: 50%;"></span>
                                    <span class="visually-hidden">Siguiente</span>
                                </button>
                            </asp:Panel>
                        </div>
                        
                        <div class="card-body">
                          <h5 class="card-title"><%# Eval("nombre") %></h5>
                          <p class="card-text"><%# Eval("descripcion") %></p>
                          <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="btn btn-primary"  CommandArgument='<%# Eval("id") %>' OnClick="btnSeleccionar_Click" />
                        </div>
                      </div>
                    </div>
                </ItemTemplate>                
            </asp:Repeater>
        </div>
    </main>
    <br />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>


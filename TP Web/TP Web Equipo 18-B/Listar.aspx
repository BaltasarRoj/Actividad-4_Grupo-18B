<%@ Page Title="Listar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="TP_Web_Equipo_18_B.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Tu aplicacion para listar.</h3>
        <p>Parrafo de prueba para listar.</p>
        

        <asp:GridView ID="dgvCatalogo" runat="server" CssClass="table" AutoGenerateColumns="false">

            <Columns>
                <asp:BoundField HeaderText="Tipo" DataField="Tipo" />
                <asp:BoundField HeaderText="Marca" DataField="Marca" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                <asp:BoundField HeaderText="Precio" DataField="Precio" />
            </Columns>
            
            <%-- 
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
                </Columns>
            --%>
        </asp:GridView>
    </main>
</asp:Content>

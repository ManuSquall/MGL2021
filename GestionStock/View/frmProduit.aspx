<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmProduit.aspx.cs" Inherits="GestionStock.View.frmProduit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- imported from register begin -->

    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Product management</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtNom" CssClass="col-md-2 control-label">Désignation</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtNom" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNom"
                    CssClass="text-danger" ErrorMessage="*" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDescription" CssClass="col-md-2 control-label">Description</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescription"
                    CssClass="text-danger" ErrorMessage="*" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cbbCategorie" CssClass="col-md-2 control-label">Catégorie </asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="cbbCategorie" runat="server" CssClass="form-control"></asp:DropDownList>
                                
            </div>
        </div>


        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPu" CssClass="col-md-2 control-label">Prix unitaire</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPu" CssClass="form-control" TextMode="Number" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPu"
                    CssClass="text-danger" ErrorMessage="*" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtQte" CssClass="col-md-2 control-label">Quantité</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtQte" CssClass="form-control" TextMode="Number" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQte"
                    CssClass="text-danger" ErrorMessage="*" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtQteSeuil" CssClass="col-md-2 control-label">Quantité seuil</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtQteSeuil" CssClass="form-control" TextMode="Number"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQteSeuil"
                    CssClass="text-danger" ErrorMessage="*" />
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Ajouter" CssClass="btn btn-default" ID="btnAjouter" OnClick="btnAjouter_Click" />
                <asp:Button runat="server" Text="Rechercher" CssClass="btn btn-success" ID="btnRechercher" OnClick="btnRechercher_Click"  />
            </div>
        </div>



        <div class="form-group">
            <div class="col-md-12">
                <asp:GridView ID="dgProduit" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="dgProduit_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>


    </div>

    <!--imported from register end-->

</asp:Content>

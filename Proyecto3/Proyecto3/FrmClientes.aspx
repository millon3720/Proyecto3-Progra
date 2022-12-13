<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="FrmClientes.aspx.cs" Inherits="Proyecto3.FrmClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <link href="Css/CssGridPrueba.css" rel="stylesheet" />

    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label> 
<asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label> 
<asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Telefono"></asp:Label> 
<asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Correo"></asp:Label> 
<asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Text="Clave"></asp:Label> 
<asp:TextBox ID="TxtClave" runat="server"></asp:TextBox>
<asp:DropDownList ID="DProvincia" runat="server" OnSelectedIndexChanged="DProvincia_SelectedIndexChanged"  AutoPostBack="True">
    <asp:ListItem Selected="True">Seleccione Una Provincia</asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="DCanton" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DCanton_SelectedIndexChanged" >
    <asp:ListItem Selected="True">Seleccione Un Canton</asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="DDistrito" runat="server" AutoPostBack="True">
    <asp:ListItem Selected="True">Seleccione Un Distrito</asp:ListItem>
</asp:DropDownList>
    <br />
    <asp:CheckBox ID="ChAdmin" runat="server" Text="Usuario Administrador?" />
    <br />
    <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" Text="Guardar" />
<br />
<br />

        <asp:GridView ID="datagrid" onrowdeleting="datagrid_RowDeleting" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnRowUpdating="datagrid_RowUpdating"  >
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Eliminar" ShowHeader="True" Text="Eliminar"  />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Actualizar" ShowHeader="True" Text="Actualizar" />
            </Columns>
<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
            </asp:GridView>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="FrmEjercicios.aspx.cs" Inherits="Proyecto3.FrmEjercicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/CssGridPrueba.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false">Ejercicio</asp:Label> <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox><asp:Button Visible="false" ID="Actualizar" runat="server" Text="Actualizar" OnClick="Actualizar_Click" />
        <asp:GridView ID="datagrid" onrowdeleting="datagrid_RowDeleting" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnRowUpdating="datagrid_RowUpdating" DataKeyNames="CodigoCliente,Ejercicio" OnSelectedIndexChanging="datagrid_SelectedIndexChanging"  >
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Eliminar" ShowHeader="True" Text="Eliminar"  />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Actualizar" ShowHeader="True" Text="Actualizar" />
            </Columns>
<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
            </asp:GridView>
       
</asp:Content>
 
<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="RestaurantWebb.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <article>
            <label>Item List</label>
            <br />
            <asp:ListBox ID="LB_Items" runat="server"></asp:ListBox>
            <br />
            <asp:Label ID="LabelItemPrice" runat="server"></asp:Label>
            <asp:Button ID="ButtonAdd" runat="server" Text="Add to Cart"/>
        </article>
        <article>
            <label>Item Cart</label>
            <br />
            <asp:ListBox ID="LB_Cart" runat="server"></asp:ListBox>
             <asp:Label ID="LabelCartTotal" runat="server"></asp:Label>
        </article>
    </section>
</asp:Content>

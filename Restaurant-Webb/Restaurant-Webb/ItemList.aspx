<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeFile="ItemList.aspx.cs" Inherits="Restaurant_Webb.ItemList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DivContent">
        <asp:GridView ID="GV_Items" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Item_ID" DataSourceID="SDS_Items" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Item_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Item_ID">
                <ControlStyle Font-Names="Adobe Caslon Pro Bold" />
                </asp:BoundField>
                <asp:BoundField DataField="Item_Name" HeaderText="Name" SortExpression="Item_Name">
                <ControlStyle Font-Names="Adobe Caslon Pro Bold" />
                </asp:BoundField>
                <asp:BoundField DataField="Item_Description" HeaderText="Description" SortExpression="Item_Description">
                <ControlStyle Font-Names="Adobe Caslon Pro Bold" />
                </asp:BoundField>
                <asp:BoundField DataField="Item_Price" HeaderText="Price" SortExpression="Item_Price">
                <ControlStyle Font-Names="Adobe Caslon Pro Bold" />
                </asp:BoundField>
                <asp:BoundField DataField="Item_Quantity" HeaderText="Quantity" SortExpression="Item_Quantity">
                <ControlStyle Font-Names="Adobe Caslon Pro Bold" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Item_Photo" DataImageUrlFormatString="images\{0}">
                    <ControlStyle Width="45%" />
                    <ItemStyle Width="10%" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                <p></p>
                <asp:Image ID="ImageBook" Visible="false" runat="server" CssClass="selectedImage" />
        </div>

    <asp:SqlDataSource ID="SDS_Items" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ItemsDB %>" 
        ProviderName="<%$ ConnectionStrings:ItemsDB.ProviderName %>" 
        SelectCommand="SELECT [Item_ID], [Item_Name], [Item_Description], [Item_Price], [Item_Quantity], [Item_Photo] FROM [Items]">
    </asp:SqlDataSource>
</asp:Content>

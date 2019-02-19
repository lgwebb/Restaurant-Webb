<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeFile="ItemAdd.aspx.cs" Inherits="Restaurant_Webb.ItemAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <table>
            <tr>
                <td>ID:</td>
                <td>
                    <asp:TextBox ID="TextBoxID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>
                    <asp:TextBox ID="TextBoxDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>
                    <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td>
                    <asp:TextBox ID="TextBoxQuantity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Photo:</td>
                <td>
                    <asp:Label ID="LabelPhoto" runat="server"></asp:Label>
                    <br />
                    <asp:FileUpload ID="FileUploadPhoto" runat="server" />                
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonAdd" runat="server" Text="Add" 
                        OnClick="ButtonAdd_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </article>

    <asp:SqlDataSource ID="SDS_Items" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ItemsDB %>" 
        DeleteCommand="DELETE FROM [Items] WHERE [Item_ID] = ?" 
        InsertCommand="INSERT INTO [Items] ([Item_ID], [Item_Name], [Item_Description], [Item_Price], [Item_Quantity], [Item_Photo]) VALUES (?, ?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:ItemsDB.ProviderName %>" 
        SelectCommand="SELECT [Item_ID], [Item_Name], [Item_Description], [Item_Price], [Item_Quantity], [Item_Photo] FROM [Items]" 
        UpdateCommand="UPDATE [Items] SET [Item_Name] = ?, [Item_Description] = ?, [Item_Price] = ?, [Item_Quantity] = ?, [Item_Photo] = ? WHERE [Item_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Item_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBoxID" Name="Item_ID" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="TextBoxName" Name="Item_Name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxDescription" Name="Item_Description" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxDescription" Name="Item_Price" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxQuantity" Name="Item_Quantity" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="LabelPhoto" Name="Item_Photo" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Item_Name" Type="String" />
            <asp:Parameter Name="Item_Description" Type="String" />
            <asp:Parameter Name="Item_Price" Type="String" />
            <asp:Parameter Name="Item_Quantity" Type="Int32" />
            <asp:Parameter Name="Item_Photo" Type="String" />
            <asp:Parameter Name="Item_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

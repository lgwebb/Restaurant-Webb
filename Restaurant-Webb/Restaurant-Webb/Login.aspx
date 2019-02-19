<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Restaurant_Webb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <table class="smallTable">
                <tr>
                    <td>Email Address</td>
                    <td>
                        <asp:TextBox ID="TextBoxEmail" CssClass="data"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBoxPassword" CssClass="data"
                            TextMode="Password"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Remember Me:</td>
                    <td>
                        <asp:CheckBox ID="CheckBoxRemember" AutoPostBack="true" 
                            checked="true"
                            runat="server" OnCheckedChanged="CheckBoxRemember_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="ButtonContinue" Visible="false" runat="server" 
                            Text="Continue" OnClick="ButtonContinue_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
    </article>

    <asp:SqlDataSource ID="SDS_Customer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ItemsDB %>" 
        ProviderName="<%$ ConnectionStrings:ItemsDB.ProviderName %>" 
        SelectCommand="SELECT [Customer_ID], [Customer_Email], [Customer_Password] FROM [Customer] WHERE (([Customer_Email] = ?) AND ([Customer_Password] = ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxEmail" Name="Customer_Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxPassword" Name="Customer_Password" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


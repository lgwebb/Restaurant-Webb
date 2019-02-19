<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="Restaurant_Webb.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article id="artCreate">
        <table>
            <thead>
                <tr>
                    <td>Create Account To Place Order</td>
                </tr>
            </thead>
            <tfoot><tr><td>&nbsp;</td></tr></tfoot>
            <tbody>
                <tr>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Street:</td>
                <td>
                    <asp:TextBox ID="TextBoxStreet" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
                    <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>State:</td>
                <td>
                    <asp:DropDownList ID="DDL_State" runat="server">
                        <asp:ListItem Value="" Text=""></asp:ListItem>
                        <asp:ListItem Value="MD" Text="MD"></asp:ListItem>
                        <asp:ListItem Value="PA" Text="PA"></asp:ListItem>
                        <asp:ListItem Value="VA" Text="VA"></asp:ListItem>
                        <asp:ListItem Value="WV" Text="WV"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Zipcode:</td>
                <td>
                    <asp:TextBox ID="TextBoxZipcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email_Address:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Primary Phone:</td>
                <td>
                    <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password Again:</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword2" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonCreate" runat="server" Text="Create Account" OnClick="ButtonCreate_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="VS_CreateAccount" runat="server" />     
                </td>
            </tr>
            </tbody> 
        </table>   
    </article>
    <!-- Validation -->

    <!-- First Name -->
    <asp:RequiredFieldValidator ID="RFV_FirstName" runat="server" 
        ControlToValidate="TextBoxFirstName"
        Display="None"
        ErrorMessage="First Name is required.">
    </asp:RequiredFieldValidator>

    <!-- Last Name -->
    <asp:RequiredFieldValidator ID="RFV_LastName" runat="server" 
        ControlToValidate="TextBoxLastName"
        Display="None"
        ErrorMessage="Last Name is required.">
    </asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomLastName" runat="server" 
        ControlToValidate="TextBoxLastName"
        OnServerValidate="ValidateLastName"
        Display="None"
        ErrorMessage="Last Name must be at least 3 characters.">
    </asp:CustomValidator>

    <!-- Street -->
    <asp:RequiredFieldValidator ID="RFV_Street" runat="server" 
        ControlToValidate="TextBoxStreet"
        Display="None"
        ErrorMessage="Street is required."
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <!-- City -->
    <asp:RequiredFieldValidator ID="RFV_City" runat="server" 
        ControlToValidate="TextBoxCity"
        Display="None"
        ErrorMessage="City is required."
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <!-- State -->
    <asp:RequiredFieldValidator ID="RFV_State" runat="server" 
        ControlToValidate="DDL_State"
        Display="None"
        ErrorMessage="State is required."
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <!--Zipcode-->
    <asp:RequiredFieldValidator ID="RFV_Zipcode" runat="server" 
        ControlToValidate="TextBoxZipcode"
        Display="None"
        ErrorMessage="Zipcode is required."
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="REV_Zipcode" runat="server" 
        ControlToValidate="TextBoxZipcode"
        Display="None"
        ErrorMessage="Zipcode must be 5 or 9 characters!" 
        ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"
        ForeColor="Red">
    </asp:RegularExpressionValidator>

    <!-- Email -->
    <asp:RegularExpressionValidator ID="REV_Email" runat="server" 
        ControlToValidate="TextBoxEmail"
        Display="None"
        ErrorMessage="Must be a valid email address" 
        ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$">
    </asp:RegularExpressionValidator>

    <!--Primary Phone-->
    <asp:RequiredFieldValidator ID="RFV_PrimaryPhone" runat="server" 
        ControlToValidate="TextBoxPhone"
        Display="None"
        ErrorMessage="Phone is required."
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="REV_PrimaryPhone" runat="server" 
        ControlToValidate="TextBoxPhone"
        Display="None"
        ErrorMessage="Phone must be 1 or 10 characters!" 
        ValidationExpression="^(\d{1}-\d{0}|\d{1}|\d{10})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"
        ForeColor="Red">
    </asp:RegularExpressionValidator>

    <!-- Password -->
    <asp:RequiredFieldValidator ID="RFV_Password" runat="server" 
        ControlToValidate="TextBoxPassword"
        Display="None"
        ErrorMessage="Password is required."
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomPassword" runat="server" 
        ControlToValidate="TextBoxPassword"
        OnServerValidate="ValidatePassword"
        Display="None"
        ErrorMessage="Password must be at least 8 characters"
        ForeColor="Red">
    </asp:CustomValidator>

    <!-- Password2 -->
    <asp:CompareValidator ID="CV_Password2" runat="server" 
        ControlToValidate="TextBoxPassword"
        ControlToCompare="TextBoxPassword2"
        Operator="DataTypeCheck"
        Type="Integer"
        Display="None"
        ErrorMessage="Passwords must match."
        ForeColor="Red">
    </asp:CompareValidator>
    <asp:SqlDataSource ID="SDS_Customer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ItemsDB %>" 
        DeleteCommand="DELETE FROM [Customer] WHERE [Customer_ID] = ?" 
        InsertCommand="INSERT INTO [Customer] ([Customer_FirstName], [Customer_LastName], [Customer_Street], [Customer_City], [Customer_State], [Customer_Zipcode], [Customer_Email], [Customer_Phone], [Customer_Password]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:ItemsDB.ProviderName %>" 
        SelectCommand="SELECT [Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Street], [Customer_City], [Customer_State], [Customer_Zipcode], [Customer_Email], [Customer_Phone], [Customer_Password] FROM [Customer]" 
        UpdateCommand="UPDATE [Customer] SET [Customer_FirstName] = ?, [Customer_LastName] = ?, [Customer_Street] = ?, [Customer_City] = ?, [Customer_State] = ?, [Customer_Zipcode] = ?, [Customer_Email] = ?, [Customer_Phone] = ?, [Customer_Password] = ? WHERE [Customer_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Customer_ID" Type="Int32" />
            <asp:Parameter Name="Customer_FirstName" Type="String" />
            <asp:Parameter Name="Customer_LastName" Type="String" />
            <asp:Parameter Name="Customer_Street" Type="String" />
            <asp:Parameter Name="Customer_City" Type="String" />
            <asp:Parameter Name="Customer_State" Type="String" />
            <asp:Parameter Name="Customer_Zipcode" Type="String" />
            <asp:Parameter Name="Customer_Email" Type="String" />
            <asp:Parameter Name="Customer_Phone" Type="String" />
            <asp:Parameter Name="Customer_Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customer_FirstName" Type="String" />
            <asp:Parameter Name="Customer_LastName" Type="String" />
            <asp:Parameter Name="Customer_Street" Type="String" />
            <asp:Parameter Name="Customer_City" Type="String" />
            <asp:Parameter Name="Customer_State" Type="String" />
            <asp:Parameter Name="Customer_Zipcode" Type="String" />
            <asp:Parameter Name="Customer_Email" Type="String" />
            <asp:Parameter Name="Customer_Phone" Type="String" />
            <asp:Parameter Name="Customer_Password" Type="String" />
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>

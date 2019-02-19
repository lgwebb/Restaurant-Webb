<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Restaurant_Webb.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article id="artMenu">
        <table id="tableMenu">
            <thead>
                <tr>
                    <td>Entrées</td>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>Order anytime at SignoreDellaFesta.com!</td>
                </tr>
            </tfoot>
            <tbody>
                <tr>
                    <td>
                        <img class="img" src="images/chicken.jpg" />
                        <span class="name"> Italian Chicken - </span>
                        <br />
                        Creamy Italian Chicken - cooked right to perfection.
                        <br />
                        <span class="price">$9.99</span>
                    </td>
                    <td>
                        <img class="img" src="images/pappardelle.jpg" />
                        <span class="name"> Pappardelle - </span>
                        <br />
                        This unbelievable dish is cooked with the finest noodles of your choice along with sizzled Italian sausage and mushrooms.
                        <br />
                        <span class="price">$12.99</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img class="img" src="images/fettuccine.jpg" />
                        <span class="name"> Fettuccine with Italian Tomato Sauce - </span>
                        <br />
                        A fun spin on Italian dishes make this fettuccine feature a homemade tomato-ground beef sauce.
                        <br />
                        <span class="price">$10.99</span>
                    </td>
                    <td>
                        <img class="img" src="images/pizza.jpg" />
                        <span class="name"> Margherita Pizza - </span>
                        <br />
                        Canned, whole peeled tomatoes plus a bit of olve oil, garlic, red pepper flakes and mozzarella.
                        <br />
                        <span class="price">$12.99</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img class="img" src="images/meatballs.jpg" />
                        <span class="name"> Slow-Cooked Italian Meatballs - </span>
                        <br />
                        This perfect dinner combines classic Italian cuisine with our restaurant's faimily cooking tradition.
                        <br />
                        <span class="price">$12.99</span>
                    </td>
                    <td>
                        <img class="img" src="images/ribolitta.jpg" />
                        <span class="name"> Slow-Cooker Ribolitta - </span>
                        <br />
                        Combination of vegetables and pancetta in a slow cooker while you start with a classic antipasti plate.
                        <br />
                        <span class="price">$11.99</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img class="img" src="images/mussels.jpg" />
                        <span class="name"> Mussels and Shrimp - </span>
                        <br />
                        Steamed mussels with shrimp and pasta make this dish a must have.
                        <br />
                        <span class="price">$14.99</span>
                    </td>
                    <td>
                        <img class="img" src="images/salad.jpg" />
                        <span class="name"> Vegetable Salad - </span>
                        <br />
                        This delicious, Italian Vegetable salad combines a fesh kale mixture with delicious warm vegetables.
                        <br />
                        <span class="price">$8.99</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img class="img" src="images/orzo.jpg" />
                        <span class="name"> Carrot Orzo - </span>
                        <br />
                        Carrot Orzo can be made to order as a full-entrée or as a standalone side dish.
                        <br />
                        <span class="price">$7.99</span>
                    </td>
                    <td>
                        <img class="img" src="images/scappati.jpg" />
                        <span class="name"> Uccellini Scappati - </span>
                        <br />
                        This classic Italian dish is similar to the famous saltimboca in that it blanaces mild pork or veal with salty proscuitto and sage adding wonderful flavor.
                        <br />
                        <span class="price">$13.99</span>
                    </td>
                </tr>
            </tbody>
        </table>
    </article>
</asp:Content>

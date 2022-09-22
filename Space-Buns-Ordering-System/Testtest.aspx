﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testtest.aspx.cs" Inherits="Space_Buns_Ordering_System.Testtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/sb_menu_test.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="menuProductDetails">
                        <div class="menuLeft">
                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" />
                        </div>
                        <div class="menuRight">
                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                            <br />
                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                            <br />
                            <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                            <div class="productBottom">
                                <div class="productQuantity">
                                    <div class="decrementButton">
                                        <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="btnQuantity" />
                                    </div>
                                    <div class="quantityNumber">
                                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("quantity") %>' CssClass="txtQuantity" />
                                    </div>
                                    <div class="incrementButton">
                                        <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="btnQuantity" />
                                    </div>
                                    <div class="addToCart">
                                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' />
                                    </div>
                                </div>

                            </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:QueryStringParameter Name="name" QueryStringField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

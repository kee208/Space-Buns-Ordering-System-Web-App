﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Space_Buns_Ordering_System.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/sb_checkout.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Checkout Page</strong>
            <br />
            <div class="content-area">
                <div class="left">
                    button 1
                    button 2
                </div>

                <div class="right">
                    a picture
                </div>
            </div>
        </div>
    </form>

    <section>
        <div class="container">
            <div class="content-wrapper">

                <div class="box order-info-container">
                    <div class="order-info-box">
                        <div id="order-location" class="order-info">
                            <h3>Store Location:</h3>
                            <p>Subang Jaya - Space Buns</p>
                        </div>
                        <div id="order-type" class="order-info">
                            <h3>Order Type:</h3>
                            <p>Self Pickup</p>
                        </div>
                        <div id="order-time" class="order-info">
                            <h3>Time:</h3>
                            <p>28 April 2021, 4:30pm</p>
                        </div>
                    </div>
                </div>

                <div class="box order-summary-container">
                    <h3>Order Summary</h3>
                    <div class="table-container">
                        <table>
                            <tr>
                                <th colspan="2">Item</th>
                                <th>Quantity</th>
                                <th>Total</th>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/chicken1.jpg" alt="Chicken 1"></td>
                                <td>
                                    <h6>Double Trouble</h6>
                                </td>
                                <td>2</td>
                                <td>RM 17.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/fish1.jpg" alt="Fish 1"></td>
                                <td>
                                    <h6>Salmon Fillet</h6>
                                </td>
                                <td>1</td>
                                <td>RM 16.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/beef1.jpg" alt="Beef 1"></td>
                                <td>
                                    <h6>You Got Beef</h6>
                                </td>
                                <td>3</td>
                                <td>RM 15.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/meatless1.jpg" alt="Meatless 1"></td>
                                <td>
                                    <h6>Mushy Shrooms</h6>
                                </td>
                                <td>1</td>
                                <td>RM 11.00</td>
                            </tr>
                        </table>
                    </div>

                    <div class="total-container">
                        <div class="total total-left">
                            <span class="total-items">No. of Items:</span>
                            <span class="total-total">Total: </span>
                        </div>
                        <div class="total total-right">
                            <span class="data-num">7</span>
                            <span class="data-total">RM106.00</span>
                        </div>
                    </div>
                </div>

                <div class="contact-details-container">
                    <form action="sb_orderConfirmation.html" id="checkout-form">
                        <h2>Contact Details</h2>

                        <div class="checkout-element">
                            <label for="full-name" class="required-field">Full Name</label><br>
                            <input id="full-name" type="text" placeholder="Tan Ah Beng" required minlength="3">
                        </div>
                        <div class="checkout-element">
                            <label for="phone-no" class="required-field">Phone No.</label><br>
                            <input id="phone-no" type="tel" name="phone" placeholder="0123456789"
                                pattern="^(01)[0-9][0-9]{7,8}$" id="phone-number" required>
                        </div>
                        <div class="checkout-element">
                            <label for="email" class="required-field">Email</label><br>
                            <input id="email" type="email" name="email" placeholder="spacebuns@gmail.com"
                                pattern="[a-z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,3}$" required>
                        </div>
                        <div class="checkout-element">
                            <label for="order-notes">Order notes</label><br>
                            <input id="order-notes" type="text" placeholder="Specify your preferences (if any)"
                                id="order-notes">
                        </div>
                </div>

                <div class="payment-type-container">
                    <h2>Payment method</h2>

                    <div class="payment-type">
                        <input type="radio" name="payment" value="”cash”" id="cash" required>
                        <label for="cash">Cash</label>
                    </div>
                    <div class="payment-type">
                        <input type="radio" name="payment" value="”creditCard”" id="creditCard" required>
                        <label for="creditCard">
                            Credit Card
                            <img id="visa-icon" src="Media/icons/visa.svg" alt="visa logo" height="27px">
                            <img id="mastercard-icon" src="Media/icons/mastercard.svg" alt="mastercard logo"
                                height="30px"></label>
                    </div>
                    <div class="payment-type">
                        <input type="radio" name="payment" value="”E-wallet”" id="e-wallet" required>
                        <label for="e-wallet">
                            E-Wallet
                            <img id="touch-n-go-ewallet-icon" src="Media/icons/touch-n-go-ewallet.svg"
                                alt="touch-n-go-ewallet logo" width="20px">
                            <img id="fave-pay-icon" src="Media/icons/favepay.svg" alt="fave-pay logo" height="20px">
                            <img id="grab-pay-icon" src="Media/icons/grabpay.svg" alt="grab-pay logo"
                                height="20px"></label>
                    </div>
                    <div class="payment-type">
                        <input type="radio" name="payment" value="”onlineBanking”" id="onlineBanking" required>
                        <label for="onlineBanking">Online Banking</label>
                    </div>
                </div>

                <div class="pay-button">
                    <input type="submit" value="Pay Now" id="checkout-form">
                    </form>
                    <a href="sb_cart.html">
                        <h6>Back to Food Cart</h6>
                    </a>
                </div>

            </div>
        </div>
    </section>


</body>
</html>

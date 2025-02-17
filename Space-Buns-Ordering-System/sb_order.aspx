﻿<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_order.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_order" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcoj_spVvnhJbKvChuD9JZdgnhfknJYxA&callback=initMap&libraries=places&v=weekly"></script>
    <link href="CSS/sb_order.css" rel="stylesheet" />



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="options-block">
        <b style="font-size: 2em; color: white; margin: 30px;">Start Ordering Now</b><br />
            <asp:Button ID="btnDelivery" runat="server" Text="Delivery" OnClientClick="getDeliveryMap()" CssClass="btnDelivery" UseSubmitBehavior="False" />
        <br />

            <asp:Button ID="btnPickup" runat="server" Text="Pick-up" OnClientClick="getPickUpMap()"  CssClass="btnPickup" UseSubmitBehavior="False" />
        <br />
        <br />

    </div>
    <div>
        <asp:Panel ID="pnlDelivery" runat="server" HorizontalAlign="Center" CssClass="pnlDateTime">
            <div class="title">
                Enter your delivery address
            </div>
            <div class="deliverySection">
                <div id="map_delivery"></div>
                <div class="deliveryRight">
                    <br />
                    Delivery Address<br />
                    <asp:TextBox ID="txtDeliveryAddress" runat="server" CssClass="textbox"></asp:TextBox>

                    <br />
                    Address Details<br />
                    <asp:TextBox ID="txtAddressDetails" runat="server" CssClass="textbox"></asp:TextBox>

                    <br />
                    Message to driver (optional)<br />
                    <asp:TextBox ID="txtMessage" runat="server" AutoCompleteType="HomeState" Rows="5" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>

                    <br />
                    <div class="confirmButton">

                        <asp:Button ID="btnConfirm" runat="server" OnClientClick="getmap()" Text="Confirm" CssClass="btnConfirm" />
                    </div>

                    <br />

                </div>
            </div>



        </asp:Panel>
        <asp:Panel ID="pnlPickup" runat="server" HorizontalAlign="Center">
            <div class="title">
                Select your preferred branch
            </div>
            <div class="mapContainer">
            <div class="map" id="map_pickUp"></div>

            </div>

            <%--<div id="branch-content-1">
                    <img width="50px" src="Media/icons/SpaceBunsLogo.png" alt="Space Buns Logo" />
                    <div id="branch-content-2">
                        <a href="https://www.google.com/maps" target="_blank">Directions</a>
                        <br />
                        <asp:Button ID="btnSelect" runat="server" Text="Select" />
                        <%--<button id="pickup-button" class="button" onclick="showPopUp()">Select</button>
                    </div>
                </div>--%>
        </asp:Panel>
        <div>
        </div>
        <asp:Panel ID="pnlDateTime" runat="server" CssClass="modalpopup">
            <div class="close-btn">
                <asp:Button ID="btnClose" runat="server" Text="&times;" CssClass="btnClose" />
            </div>
            <div class="selectDateandTimeTitle">
                <asp:Label ID="lblDeliveryType" runat="server" Text="Select Date and Time" CssClass="lblDeliveryType"></asp:Label>

            </div>
            <div class="datetime">
                <div class="date">
                    <div class="titleDatenTime">
                        Date<br />

                    </div>
                    <asp:DropDownList ID="ddlDates" runat="server" CssClass="ddlDates">
                    </asp:DropDownList>
                </div>
                <div class="time">
                    <div class="titleDatenTime">
                        Time<br />
                    </div>

                    <asp:DropDownList ID="ddlTime" runat="server" CssClass="ddlTime">
                    </asp:DropDownList>

                </div>
            </div>
            <br />
            <div class="delay-text">
                <p>
                    Note : There may be a variance of 10-15 mins from
                                your selected pickup/delivery time during peak hours.
                                But we will do our best to have your order ready as
                                close to your selected time as possible 🙂
                </p>
            </div>
            <div class="orderBtn">
                <asp:Button ID="btnOrder" runat="server" Text="Order Now" CssClass="btnOrder" PostBackUrl="~/sb_menu.aspx" />

            </div>
        </asp:Panel>
    </div>
    <div>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" Collapsed="True" CollapseControlID="btnPickup" ExpandControlID="btnDelivery" TargetControlID="pnlDelivery" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" Collapsed="True" CollapseControlID="btnDelivery" ExpandControlID="btnPickup" TargetControlID="pnlPickup" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlDateTime" TargetControlID="btnConfirm" BackgroundCssClass="modalBackground" CancelControlID="btnClose"></ajaxToolkit:ModalPopupExtender>
        <%--<ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlDateTime" BackgroundCssClass="modalBackground" CancelControlID="btnClose" TargetControlID="btnSelect"></ajaxToolkit:ModalPopupExtender>--%>
        <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="txtDate" Format="dd/MM/yyyy" PopupPosition="BottomRight" TargetControlID="txtDate" />--%>
    </div>

    <script src="Javascript/sb_order.js"></script>
</asp:Content>
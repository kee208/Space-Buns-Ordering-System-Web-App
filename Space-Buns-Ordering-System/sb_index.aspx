﻿<%@ Page Title="Home | Space Buns" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_index.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/sb_index.css" rel="stylesheet" />
     <section>

        <main>
            <!-- Return to top of Page Button-->
            <button onclick="ReturnTopFunction()" id="goTopBtn" title="Return to the top" type="button">&#8673</button>
            <%--<asp:Button ID="goTopBtn" runat="server" Text="&#8673" />--%>
            <%--<input id="goTopBtn" type="button" value="&#8673" onclick="ReturnTopFunction()" />--%>

            <!-- Intro Video Starts -->
            <div class="introVideo">
                <video width=70% margin=0 controls loop style="border: 1.5px solid #B97836;">
                    <source src="Media/Home/intro_video.mov" type="video/mp4">
                    <source src="Media/Home/intro_video.ogg" type="video/ogg">
                    <source src="Media/Home/intro_video.webm" type="video/webm">
                    Your browser does not support HTML video. Please download HTML5 browsers.
                </video>

                <p style="font-size: 10px; color: rgb(255, 255, 255);">
                    Music: In Dreams by Scott Buckley | <a href="https://www.scottbuckley.com.au"
                        style="text-decoration: underline;" title="Visit the Artist"> www.scottbuckley.com.au </a>
                </p>
            </div>
            <!-- Intro Video Ends -->

            <!-- About Us starts -->
            <article class=maincontent1 id="whoarewe">
                <h1 class="mainh1">Who Are We?</h1>
                <a href="sb_aboutUs.html">
                    <p id="whoarewecontent">
                        <b>Space Buns</b> is a <i>consumer-centric burger business</i> that focuses on making the best
                        handmade burgers in the world.
                        Inspired by the infamous “Burger Ramly '' which is loved by every true Malaysian, we decided to
                        make a classy
                        version of it. So, we started with a simple concept of selling affordable and delicious burgers
                        paired with the best
                        ingredients on top of our freshly handmade bun. We hope to provide a mind blowing experience to
                        all the
                        customers like how the Space blows everyone’s mind.
                    </p>
                </a>
            </article>
            <!-- About Us ends -->

            <!-- Recommendations Image map starts -->
            <article class=maincontent2>
                <h1 class="mainh1">Best Sellers</h1>
                <div class="imageMap-container">
                    <img src="Media/Home/Recommend.jpg" width="100%" height="100%" usemap="#recommend-map"
                        alt="Recommendations Image">

                    <map name="recommend-map">
                        <area href="sb_menu.aspx" shape="default" title="Go to Menu" alt="Menu">
                        <area href="sb_menu.aspx#beef" coords="40,50,340,390" shape="rect" alt="Beef Menu">
                        <area href="sb_menu.aspx#chicken" coords="450,50,750,390" shape="rect" alt="Chicken Menu">
                        <area href="sb_menu.aspx#meatless" coords="835,49,1140,390" shape="rect" alt="Meatless Menu">
                        <area href="sb_menu.aspx#fish" coords="235,435,540,780" shape="rect" alt="Fish Menu">
                        <area href="sb_menu.aspx#lamb" coords="690,435,990,780" shape="rect" alt="Lamb Menu">
                    </map>
                </div>
            </article>
            <!-- Recommendations Image map ends -->

            <!-- Promotions image slider starts-->
            <article class="maincontent3">
                <div class="indexPromo-container">
                    <div class="carousel-container">
                        <i class="fa fa-chevron-left" id="prevBtn"></i>
                        <i class="fa fa-chevron-right" id="nextBtn"></i>
                        <a class="carousel-slide" href="sb_promotions.html">
                            <img src="Media/Promotions/Buy1Free1.png" id="lastClone"><!-- third image -->
                            <img src="Media/Promotions/Alien Day.png">
                            <img src="Media/Promotions/HariRayaPoster.png">
                            <img src="Media/Promotions/Buy1Free1.png">
                            <img src="Media/Promotions/Alien Day.png" id="firstClone"> </td><!-- first image-->
                        </a>
                    </div>
                </div>
            </article>
            <!-- Promotions image slider ends-->
            </br>
            <!-- Events starts-->
            <article class="maincontent4">
                <div class="indexEvents-scroll">
                    <article class="eventsBox">

                        <article class="eventsContents">
                            <div class="eventsImg">
                                <img src="Media/Home/event1.jpg" alt="Corporate Events Image">
                            </div>

                            <h2 class="eventsHeader">CORPORATE EVENTS</h2>

                            <div class="eventsDesc">
                                <p> Working in an office do not have to be boring. Host
                                    office parties with us NOW! We provide the best burgers.
                                    Burgers and Parties, what are you waiting for? </br> </br> </br>
                                    <a href="sb_events.html" id="formoreinfo" title="More info"><b>Click Me!</b></a>
                                    to find out more!
                                </p>
                            </div>
                        </article>

                        <article class="eventsContents">
                            <div class="eventsImg">
                                <img src="Media/Home/event4.jpg" alt="Weddings Event Image">
                            </div>
                            <h2 class="eventsHeader">WEDDINGS</h2>
                            <div class="eventsDesc">
                                <p> Life is like an event. Make it memorable. We provide you with fresh ideas for
                                    your wedding. A stylish and fun wedding begins with US!
                                    Sit back while we bring you the experience of a lifetime </br> </br>
                                    <a href="sb_events.html" id="formoreinfo" title="More info"><b>Click Me!</b></a>
                                    &nbsp; to
                                    find
                                    out more!
                                </p>
                            </div>
                        </article>

                    </article>

            </article>

            </div>
            <!-- Events End -->

            <!-- Reviews Start-->
            <article class=maincontent5>
                <div class="indexReview-container">
                    <h1 class="mainh1">What Our Customers Say</h1>

                    <div class="custReview">
                        <!-- custReview div start -->
                        <div class="custReview-left">
                            <a href="https://www.instagram.com/pewdiepie/" target="_blank">
                                <img id="felixK" src="Media/Home/felix_K.jpeg">
                            </a>
                            <p>
                                <a href="sb_reviews.aspx">
                                    "Superb burger every single time I come here. It has a nice balance
                                    of flavour and the juiciness of the patty when you take a bite simple makes you
                                    crave
                                    more"
                                </a>
                            </p>
                        </div><!-- custReview-left div end-->

                        <div class="custReview-right">
                            <a href="https://www.instagram.com/iswarya.menon/?hl=en" target="_blank">
                                <img id="iswaryaM" src="Media/Home/iswarya_M.jpeg">
                            </a>
                            <p>
                                <a href="sb_reviews.aspx">
                                    "The patty, the buns - all made to perfection. It's clear why there's a lot of hype
                                    about this burger joint. Both the chicken and lamb burgers have amazing textures
                                    and taste heavenly and the buns are so fluffy"
                                </a>
                            </p>
                        </div> <!-- custReview-right div end-->
                    </div> <!-- custReview div end-->
                </div><!-- custReview container div end-->

                <div>
                    <h2>Featured In</h2>
                    <img id="featuredIn" src="Media/Reviews/featured.png">
                    <p style="color: aliceblue; font-size: 0.4em;">
                        *image for illustration purposes only. Images are used for education purposes to complete TAR UC
                        assignments.
                    </p>
                </div>
            </article>
            <!--Reviews End-->


        </main>

        <script src="Javascript/sb_index.js" async></script>

    </section>
</asp:Content>

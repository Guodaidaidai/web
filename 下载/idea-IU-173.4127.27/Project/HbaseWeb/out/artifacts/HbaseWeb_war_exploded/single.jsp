<%@ page import="myBean.Movie" %>
<%@ page import="sun.net.httpserver.HttpServerImpl" %><%--
  Created by IntelliJ IDEA.
  User: zhangxinlei
  Date: 17-12-31
  Time: 上午6:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

    <title>Movie Review | Single</title>

    <!-- Loading third party fonts -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Loading main css file -->
    <link rel="stylesheet" href="style.css">

    <!--[if lt IE 9]>
    <script src="js/ie-support/html5.js"></script>
    <script src="js/ie-support/respond.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <![endif]-->

</head>


<body>

<%
    Movie m=(Movie)session.getAttribute("movie");


%>


<div id="site-content">
    <header class="site-header">
        <div class="container">
            <a href="index.jsp" id="branding">
                <img src="images/logo.png" alt="" class="logo">
                <div class="logo-copy">
                    <h1 class="site-title">Company Name</h1>
                    <small class="site-description">Tagline goes here</small>
                </div>
            </a> <!-- #branding -->

            <div class="main-navigation">
                <button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
                <ul class="menu">
                    <li class="menu-item"><a href="index.jsp">Home</a></li>
                    <li class="menu-item"><a href="about.jsp">About</a></li>
                    <li class="menu-item current-menu-item"><a href="review.jsp">Movie reviews</a></li>
                    <li class="menu-item"><a href="joinus.jsp">Join us</a></li>
                    <li class="menu-item"><a href="contact.jsp">Contact</a></li>
                </ul> <!-- .menu -->

                <form action="#" class="search-form">
                    <input type="text" placeholder="Search...">
                    <button><i class="fa fa-search"></i></button>
                </form>n><i class="fa fa-search"></i></button>
                </form>
            </div> <!-- .main-navigation -->

            <div class="mobile-navigation"></div>
        </div>
    </header>
    <main class="main-content">
        <div class="container">
            <div class="page">
                <div class="breadcrumbs">
                    <a href="index.jsp">Home</a>
                    <a href="review.jsp">Movie Review</a>
                    <span>The Croods</span>
                </div>

                <div class="content">
                    <div class="row">
                        <div class="col-md-6">
                            <figure class="movie-poster"><img src=<%=m.getPost_url()%> alt="#"></figure>
                        </div>
                        <div class="col-md-6">
                            <h2 class="movie-title"><%=m.getM_name()%></h2>
                            <div class="movie-summary">
                                <p><%=m.getSummary()%></p>
                            </div>
                            <ul class="movie-meta">
                                <li><strong>Rating:</strong> <%=m.getRating()%>/100</li>
                                <!-- <li><strong>Rating:</strong>
                                     <div class="star-rating" title="Rated 4.00 out of 5"><span style="width:80%"><strong class="rating">5.00</strong> out of 5</span></div>
                                 </li>-->
                                <!-- <li><strong>Length:</strong> 98 min</li>-->


                                <li><strong>Rating:</strong> <%=m.getRating()%>/100</li>
                               <!-- <li><strong>Rating:</strong>
                                    <div class="star-rating" title="Rated 4.00 out of 5"><span style="width:80%"><strong class="rating">5.00</strong> out of 5</span></div>
                                </li>-->
                                <!--<li><strong>Length:</strong> 98 min</li>-->
                                <li><strong>Premiere:</strong> <%=m.getM_country()%></li>
                                <li><strong>Category:</strong> <%=m.getM_type()%></li>
                                <li><strong>Year:</strong> <%=m.getM_year()%></li>
                            </ul>

                           <!-- <ul class="starring">
                                <li><strong>Directors:</strong> Kirk de Mico (as Kirk DeMico). Chris Sanders</li>
                                <li><strong>Writers:</strong> Chris Sanders (screenplay), Kirk De Micco (screenplay)</li>
                                <li><strong>Stars:</strong> Nicolas Cage, Ryan Reynolds, Emma Stone</li>
                            </ul> -->
                        </div>

                    </div> <!-- .row -->
                    <div class="entry-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac pharetra libero. Integer in suscipit diam, sit amet eleifend nunc. Curabitur egestas nunc nulla, in aliquet risus efficitur quis. Vivamus facilisis est libero, vitae iaculis nulla cursus in. Suspendisse potenti. In et fringilla ipsum, quis varius quam. Morbi eleifend venenatis diam finibus vehicula. Suspendisse eu blandit metus. Sed feugiat pellentesque turpis, in lacinia ipsum. Vivamus nec luctus orci.</p>
                        <p>Aenean vehicula eget risus sit amet posuere. Maecenas id risus maximus, malesuada leo eget, pellentesque arcu. Phasellus vitae leo rhoncus, consectetur mauris vitae, lacinia quam. Nunc turpis erat, accumsan eget justo quis, auctor ultricies magna. Mauris sodales, risus sit amet hendrerit tincidunt, erat ante facilisis sapien, sit amet maximus neque massa a felis. Nullam consectetur justo massa, vel commodo metus gravida in. Aliquam erat volutpat. Nullam a lorem sed lorem euismod gravida a eu velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis ac ligula vel pharetra. Aenean vitae nulla sed dui volutpat euismod. Nam ex quam, consequat id rutrum sed, porttitor id lectus. Vestibulum venenatis consectetur justo ut sagittis. Duis dignissim tincidunt quam, nec pulvinar libero luctus nec. Morbi blandit nec lorem in ullamcorper.</p>
                        <p>Vestibulum et odio massa. Integer at odio ipsum. Proin vitae tristique nibh. Aenean semper ante sit amet ante ultricies tincidunt. Curabitur cursus, urna non ultricies posuere, dolor lacus cursus lorem, a dapibus nibh ex eget sem. Aliquam semper sagittis sapien a fermentum. Nullam sed iaculis lacus, et imperdiet risus. Praesent quis turpis ac nunc sodales tincidunt. Aliquam at leo odio. Sed a tempor nisl, et mattis felis. Nam mauris nunc, commodo ac orci ut, auctor viverra mauris.</p>
                        <p>Quisque nec justo vitae metus consectetur ultrices. Duis venenatis lorem massa, eu pulvinar quam faucibus sed. Nulla fringilla lorem sit amet sagittis mattis. Nunc in leo a odio mollis consectetur. Etiam ac nisl eget diam ullamcorper porta. Aliquam consectetur neque eget metus egestas sollicitudin. Curabitur ultrices urna et feugiat malesuada.</p>
                        <p>Nulla facilisi. Fusce sed dapibus leo, eu lobortis ante. Duis luctus mauris in ante semper, ut feugiat nisi condimentum. Nullam a odio et justo suscipit tempus. Vestibulum placerat dapibus quam, a egestas turpis efficitur id. Integer suscipit placerat placerat. Phasellus in lorem quis leo egestas accumsan. Nam et euismod ligula. Duis nec erat aliquam, sollicitudin diam non, ornare leo. Pellentesque augue leo, faucibus in nunc nec, tincidunt ullamcorper tortor. Phasellus aliquam condimentum elit. Nulla facilisi. Donec magna libero, bibendum eu faucibus et, mattis at felis. Integer turpis nibh, blandit nec elit vel, euismod laoreet quam. Donec vel ante nisi. Nunc luctus a tellus non.</p>
                    </div>
                </div>
            </div>
        </div> <!-- .container -->
    </main>
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="widget">
                        <h3 class="widget-title">About Us</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia tempore vitae mollitia nesciunt saepe cupiditate</p>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget">
                        <h3 class="widget-title">Recent Review</h3>
                        <ul class="no-bullet">
                            <li>Lorem ipsum dolor</li>
                            <li>Sit amet consecture</li>
                            <li>Dolorem respequem</li>
                            <li>Invenore veritae</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget">
                        <h3 class="widget-title">Help Center</h3>
                        <ul class="no-bullet">
                            <li>Lorem ipsum dolor</li>
                            <li>Sit amet consecture</li>
                            <li>Dolorem respequem</li>
                            <li>Invenore veritae</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget">
                        <h3 class="widget-title">Join Us</h3>
                        <ul class="no-bullet">
                            <li>Lorem ipsum dolor</li>
                            <li>Sit amet consecture</li>
                            <li>Dolorem respequem</li>
                            <li>Invenore veritae</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget">
                        <h3 class="widget-title">Social Media</h3>
                        <ul class="no-bullet">
                            <li>Facebook</li>
                            <li>Twitter</li>
                            <li>Google+</li>
                            <li>Pinterest</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget">
                        <h3 class="widget-title">Newsletter</h3>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Email Address">
                        </form>
                    </div>
                </div>
            </div> <!-- .row -->

            <div class="colophon">Copyright 2014 Company name, Designed by Themezy. All rights reserved</div>
        </div> <!-- .container -->

    </footer>
</div>
<!-- Default snippet for navigation -->



<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/app.js"></script>

</body>

</html>

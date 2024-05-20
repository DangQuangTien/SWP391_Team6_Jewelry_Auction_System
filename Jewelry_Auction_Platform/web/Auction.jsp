<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="component/auction.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Jewelry Auctions</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Auction.jsp">Auction</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="seller/valuation.jsp">Sell</a>
                    </li>
                    <% if (username == null) { %>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                    <% } else {%>
                    <li class="nav-item">
                        <a class="nav-link" href="MainController?action=Profile&username=<%= username%>"><%= username%></a>
                    </li>
                    <% }%>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="bell-icon"><i class="fas fa-bell"></i></a>
                        <div id="bell-box" style="display: none;">
                            <!-- Notifications -->
                            <button id="notificationButton">Show Notification</button>
                            <div id="notificationPopup" class="popup">
                                New message received!
                            </div>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search for anything" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </header>

    <div class="contaniner">
        <div class="vertical-nav-container">
            <div class="vertical-nav">
                <div class="grid-container">
                    <nav class="navbar bg-light vertical-nav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <p> Category: </p>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">All</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Jewelry</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Gem</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Material</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Price Range:</a>
                            </li>
                            <li class="nav-item">
                                <input type="text" placeholder="Min" />
                                <p>To</p>
                                <input type="text" placeholder="Max" />
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
     </div>    
           <div class="auction-item">               
                <div class="item-container">
                    <div class="auction-item">
                       <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image">
                       <h6>14k Solid Gold Patek Watch - Schauffhausen IWC 'Pristine Condition'</h6>
                       <p>Product Brand: IWC</p>
                       <p>Auction ID: 15678</p>
                       <p>Time left: 4d 20h</p>
                       <button>Bid Now</button>
                    </div>
                    <div class="auction-item">
                       <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image">
                       <h6>14k Solid Gold Patek Watch - Schauffhausen IWC 'Pristine Condition'</h6>
                       <p>Product Brand: IWC</p>
                       <p>Auction ID: 15678</p>
                       <p>Time left: 4d 20h</p>
                       <button>Bid Now</button>
                    </div>
                    <div class="auction-item">
                       <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image">
                       <h6>14k Solid Gold Patek Watch - Schauffhausen IWC 'Pristine Condition'</h6>
                       <p>Product Brand: IWC</p>
                       <p>Auction ID: 15678</p>
                       <p>Time left: 4d 20h</p>
                       <button>Bid Now</button>
                    </div>
                    <div class="auction-item">
                       <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image">
                       <h6>14k Solid Gold Patek Watch - Schauffhausen IWC 'Pristine Condition'</h6>
                       <p>Product Brand: IWC</p>
                       <p>Auction ID: 15678</p>
                       <p>Time left: 4d 20h</p>
                       <button>Bid Now</button>
                     </div>
                 </div>
               </div>
            </div>        
          </div>    

     <footer class="bg-light text-center py-3">
        <div>
            <h6>Jewelry Auction</h6>
            <a href="register.jsp">Register</a> |
            <a href="login.jsp">Login</a> |
            <a href="#">Help & FAQ</a> |
            <a href="#">Support</a> |
            <a href="#">Sitemap</a>
         </div>
         </footer>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>         
            <script src="javascript/Auction.js"></script>
</body>
</html>

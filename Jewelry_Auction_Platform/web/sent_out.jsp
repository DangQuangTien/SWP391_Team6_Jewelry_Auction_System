<!DOCTYPE html>
<html>
<head>
    <title>Jewelry Auction</title>
    <link rel="stylesheet" type="text/css" href="component/header.css">
    <link rel="stylesheet" type="text/css" href="component/footer.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
   
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="home.jsp">Jewelry Auctions</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Auction.jsp">Auction</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="seller/valuation.jsp">Sell</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MainController?action=Profile&username=<%= username %>"><%= username %></a>
                    </li>
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

    <main class="container my-4 flex-grow-1">
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="card product-display">
                    <div class="card-body" style="overflow-y: auto; max-height: 500px;">
                        <h2 class="card-title">Auction Your Item</h2>
                        <form>
                            <div class="form-group">
                                <label for="itemPictures">Upload Pictures of the item you want to auction</label>
                                <input type="file" class="form-control-file" id="itemPictures" multiple>
                            </div>
                            <div id="picturesPlaceholder" class="mt-3">
                                <!-- Placeholder for uploaded pictures -->
                                <p>No pictures uploaded yet.</p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    
            <div class="col-md-6 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Fill In The Detail</h2>
                        <form>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" placeholder="Enter your name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter your email">
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea class="form-control" id="description" rows="3" placeholder="Enter description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="number" class="form-control" id="price" placeholder="Enter price">
                            </div>                           
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <script>
        document.getElementById('itemPictures').addEventListener('change', function(event) {
            const files = event.target.files;
            const placeholder = document.getElementById('picturesPlaceholder');           
            placeholder.innerHTML = '';
    
            if (files.length > 0) {
                const ul = document.createElement('ul');
                ul.style.listStyleType = 'none'; 
                ul.style.padding = '0'; 
                
                Array.from(files).forEach(file => {
                    const li = document.createElement('li');
                    const img = document.createElement('img');
                    const reader = new FileReader();
    
                    img.style.maxWidth = '350px'; 
                    img.style.marginRight = '10px';
                    img.style.marginBottom = '10px'; 
    
                    reader.onload = function(e) {
                        img.src = e.target.result;
                    };
                    reader.readAsDataURL(file);
    
                    li.appendChild(img);
                    ul.appendChild(li);
                });
                
                placeholder.appendChild(ul);
            } else {
                placeholder.innerHTML = '<p>No pictures uploaded yet.</p>';
            }
        });
    </script>
    
       

    <footer class="bg-light text-center py-3 mt-auto">
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
    <script src="javascript/home.js"></script>
</body>
</html>

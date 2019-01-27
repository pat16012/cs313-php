<?php include 'add_to_shopping_cart.php';?>
<?php include 'store_Header.php';?>



    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="panel panel-primary">

                    <div class="panel-heading">Glow Rocks!</div>
                    <div class="panel-body"><img src="store_images/glowRock.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                    <div class="panel-footer"></div>
                    <form method="get" action= "store.php">
                        QTY: <input type="radio" id="glow" value="10"/>10
                        <input type="radio" id="glow" value="20"/>20
                        <input type="radio" id="glow" value="30"/>30
                        <input type="submit" value="Add to Cart"/>
                    </form>
                </div>
            </div>

           <div class="col-sm-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">Shiny Color Rocks!</div>
                    <div class="panel-body"><img src="store_images/colorShineRock.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                    <div class="panel-footer"></div>
                    <form method="get" action= "store.php">
                        QTY: <input type="radio" id="shiny" value="shiny"/>10
                        <input type="radio" id="shiny" value="20"/>20
                        <input type="radio" id="shiny" value="30"/>30
                        <input type="submit" value="Add to Cart"/>
                    </form>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">Jaged Rocks!</div>
                    <div class="panel-body"><img src="store_images/jagedRock.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                    <div class="panel-footer"></div>
                    <form method="get" action= "store.php">
                        QTY: <input type="radio" id="Jaged" value="jaged"/>10
                        <input type="radio" id="Jaged" value="20"/>20
                        <input type="radio" id="Jaged" value="30"/>30
                        <input type="submit" value="Add to Cart"/>
                    </form>
                </div>
            </div>
        </div>
    </div><br>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">Pointy Rocks!</div>
                    <div class="panel-body"><img src="store_images/pointyRock.JPG" class="img-responsive" style="width:100%" alt="Image"></div>
                    <div class="panel-footer"></div>
                    <form method="get" action= "store.php">
                        QTY: <input type="radio" id="pointy" value="10"/>10
                        <input type="radio" id="pointy" value="20"/>20
                        <input type="radio" id="pointy" value="30"/>30
                        <input type="submit" value="Add to Cart"/>
                    </form>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">River Rocks!</div>
                    <div class="panel-body"><img src="store_images/riverRock.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                    <div class="panel-footer"></div>
                    <form method="get" action= "store.php">
                        QTY: <input type="radio" id="river" value="10"/>10
                        <input type="radio" id="river" value="20"/>20
                        <input type="radio" id="river" value="30"/>30
                        <input type="submit" value="Add to Cart"/>
                    </form>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">Stripy Rocks!</div>
                    <div class="panel-body"><img src="store_images/stripyRock.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                    <div class="panel-footer"></div>
                    <form method="get" action= "store.php">
                        QTY: <input type="radio" id="Stripy" value="10"/>10
                        <input type="radio" id="Stripy" value="20"/>20
                        <input type="radio" id="Stripy" value="30"/>30
                        <input type="submit" value="Add to Cart"/>
                    </form>
                </div>
            </div>
        </div>
    </div><br><br>
    <footer class="container-fluid text-center">
        <p>Online Store Copyright</p>
        <form class="form-inline">Get deals:
            <input type="email" class="form-control" size="50" placeholder="Email Address">
            <button type="button" class="btn btn-danger">Sign Up</button>
        </form>
    </footer>

    </body>
    </html>

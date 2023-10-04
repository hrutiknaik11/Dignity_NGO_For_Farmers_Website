<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Shopping Cart System</title>
  <link rel='stylesheet' href="scart.css">
  <link rel="stylesheet" href="rwd.css">
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />
</head>

<body>
  <!-- Navbar start -->
  <div class="main_container" id="home">
  
  <div class="navbar">
    <div class="logo">
      <a href="https://dignityngo.000webhostapp.com/homepage.html">Dignity-A ngo for farmers.</a>
    </div>
    
    <div class="navbar_items">
      <ul>
        <li><a href="https://dignityngo.000webhostapp.com/homepage.html">HOME</a></li>
        <li><a href="index.php">pRODUCTS</a></li>
        <li><a href="cart.php">CART</a></li>
         <li><a href="checkout.php">CHECKOUT</a></li>
      </ul>
    </div>
  </div>
<br><br><br><br>
  <!-- Navbar end -->

  <!-- Displaying Products Start -->
  <div class="container">
    <div id="message"></div>
    <div class="row mt-2 pb-3">
      <?php
  			include 'config.php';
  			$stmt = $conn->prepare('SELECT * FROM product');
  			$stmt->execute();
  			$result = $stmt->get_result();
  			while ($row = $result->fetch_assoc()):
  		?>
      <div class="col-sm-6 col-md-4 col-lg-3 mb-2">
        <div class="card-deck">
          <div class="card p-2 border-secondary mb-2">
            <img src="<?= $row['product_image'] ?>" class="card-img-top" height="250">
            <div class="card-body p-1">
              <h4 class="card-title text-center text-info"><?= $row['product_name'] ?></h4>
              <h5 class="card-text text-center text-danger"><i class="fas fa-rupee-sign"></i>&nbsp;&nbsp;<?= number_format($row['product_price'],2) ?>/-</h5>

            </div>
            <div class="card-footer p-1">
              <form action="" class="form-submit">
                <div class="row p-2">
                  <div class="col-md-6 py-1 pl-4">
                    <b>Quantity : </b>
                  </div>
                  <div class="col-md-6">
                    <input type="number" class="form-control pqty" value="<?= $row['product_qty'] ?>">
                  </div>
                </div>
                <input type="hidden" class="pid" value="<?= $row['id'] ?>"><br>
                <input type="hidden" class="pname" value="<?= $row['product_name'] ?>"><br>
                <input type="hidden" class="pprice" value="<?= $row['product_price'] ?>"><br>
                <input type="hidden" class="pimage" value="<?= $row['product_image'] ?>"><br>
                <input type="hidden" class="pcode" value="<?= $row['product_code'] ?>"><br>
                <button class="btn btn-info btn-block addItemBtn"><i class="fas fa-cart-plus"></i>&nbsp;&nbsp;Add to
                  cart</button><br>
              </form><br>
            </div>
          </div>
        </div>
      </div>
      <?php endwhile; ?>
    </div>
  </div>
  <!-- Displaying Products End -->

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>

  <script type="text/javascript">
  $(document).ready(function() {

    // Send product details in the server
    $(".addItemBtn").click(function(e) {
      e.preventDefault();
      var $form = $(this).closest(".form-submit");
      var pid = $form.find(".pid").val();
      var pname = $form.find(".pname").val();
      var pprice = $form.find(".pprice").val();
      var pimage = $form.find(".pimage").val();
      var pcode = $form.find(".pcode").val();

      var pqty = $form.find(".pqty").val();

      $.ajax({
        url: 'action.php',
        method: 'post',
        data: {
          pid: pid,
          pname: pname,
          pprice: pprice,
          pqty: pqty,
          pimage: pimage,
          pcode: pcode
        },
        success: function(response) {
          $("#message").html(response);
          window.scrollTo(0, 0);
          load_cart_item_number();
        }
      });
    });

    // Load total no.of items added in the cart and display in the navbar
    load_cart_item_number();

    function load_cart_item_number() {
      $.ajax({
        url: 'action.php',
        method: 'get',
        data: {
          cartItem: "cart_item"
        },
        success: function(response) {
          $("#cart-item").html(response);
        }
      });
    }
  });
  </script>
  <div class="footer">
    <a href="#">© 2020 Dignity LLC</a><br><br>
    <a href="https://www.facebook.com/" class="fa fa-facebook" text-align="right"></a>
    <a href="https://twitter.com/login?lang=en" class="fa fa-twitter"></a>
    <a href="https://www.instagram.com/?hl=en" class="fa fa-instagram"></a>
  </div>
  </div>
</body>

</html>
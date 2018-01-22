<?php
	session_start();
	require_once 'gentelella-master/production/koneksion.php';
	try {
		$database = new Koneksion();
		$db = $database->OpenKoneksi();
		$sel1 = $database->sql($db, "select id_kt, nama_kt from tb_kt", array(''), "rows");


	} catch (Exception $e) {

	}

?>
<!-- top-header -->
<div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			<div class="top_right">
				<ul>
					<li><a href="contact.html">Contact</a></li>|
					<li><a href="login.html">Track Order</a></li>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<li class="top_link">Email:<a href="mailto:info@example.com">info@example.com</a></li>|
					<li class="top_link"><a href="login.html">Login</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- top-header -->
<!-- logo-cart -->
<div class="header_top">
	<div class="container">
		<div class="logo">
		 	<a href="index.html">Baby Store</a>
		</div>
		<div class="header_right">
			<div class="cart box_1">
				<a href="checkout.html">
				<h3>
					<div class="total">
						<span class="simpleCart_total"></span> <span id="br-hrg"><?php echo "$_SESSION[hrg]"; ?></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)
					</div>
					<img src="images/cart1.png" alt=""/></h3>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //logo-cart -->
<!------>
<div class="mega_nav">
	 <div class="container">
		 <div class="menu_sec">
		 <!-- start header menu -->
		<ul class="megamenu skyblue">
			<li class="active grid"><a class="color1" href="index.php">Home</a></li>
			<li class="grid"><a class="color1" href="#">Kategori</a>
				<div class="megapanel">
					<div class="row">
						<?php
							foreach ($sel1 as $key) {
								# code...
								try {
									$sl = $database->sql($db, "select id_kategori, nama_kategori from tb_kategori where id_kt='$key[id_kt]'",
									array(''), "rows");
								} catch (\Exception $e) {

								}
						?>
						<div class="col1">
							<div class="h_nav">
								<h4><?php echo "$key[nama_kt]"; ?></h4>
								<ul>


										<?php
											foreach ($sl as $row) {
										?>
									<li><a href="products.html"><?php echo "$row[nama_kategori]"; ?></a></li>
									<?php } ?>
								</ul>
							</div>
						</div>
						<?php

							}
						?>

					</div>
					<div class="row">
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    			</div>
			</li>
			<li><a class="color1" href="#">About Us</a></li>
			<li><a class="color1" href="#">Contact Us</a></li>
		</ul>
			<div class="search">
				 <form>
					<input type="text" value="" placeholder="Search...">
					<input type="submit" value="">
					</form>
			</div>
			<div class="clearfix"></div>
		 </div>
	  </div>
</div>
<!---->

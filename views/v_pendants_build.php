<!-- BUILD A PENDANT PAGE with paypal form -->
	<!--css-->
	<link rel="stylesheet" href="/build-a-pendant/css/main.css" type="text/css">
	<link rel="stylesheet" href="/build-a-pendant/css/features.css" type="text/css">
	<link rel="stylesheet" href='/build-a-pendant/css/responsive.css'>
	
<!--<body id='pendants'>-->

	<?php if(isset($client_files_head)) echo $client_files_head; ?>

		<h1 class='pendant'>Build a Pendant</h1>

		<!-- Left side with all the controls -->
		<div id='controls'>
			<p class='intro-para'>
				Let hand stamped words on the elegant beauty of fine silver or bronze carry a message of love and inspiration to someone special. 
				The charm of hand stamping is its random organic look, not precise or machine made. 
			
			</P>
				<hr>
					<h2>Pick a shape</h2>
						<div class="radioLeft">
							<label>
								<input type="radio" name="shapes" value="circle" checked>circle
							</label>
							<input type="radio" name="shapes" value="square">
							<label>square</label>
							<input type="radio" name="shapes" value="heart">
							<label>heart</label>
							<br>
						</div>
						<br>
				<hr>
					<h2>Pick a metal</h2>
						<div class="radioLeft">
							<input type="radio" name="metals" value="silver" checked>silver
							<input type="radio" name="metals" value="bronze">
							bronze<br>
						</div><!--radioLeft-->
						<br>
				<hr>
					<h2>Pick a size</h2>
						<input type="radio" name="size" value="sm">sm
						<input type="radio" name="size" value="md" checked>md
						<input type="radio" name="size" value="lg">lg
	                    <br><br>
							This pendant costs: $<span id='output'>25.00</span>
						<br><br>

			<!-- Message -->	
				<h2>Type a message</h2>
					<input type='text' id='message' class="changeMe resetMe" maxlength="16"> 
					<div id='message-error'>Max 16 characters</div>
					<br>
					<!--Select font-->
				<h2>Select a different font and size?</h2>
	    			<select id="fs"> 
	        			<option value="Arial">Arial</option>
	        			<option value="Verdana ">Verdana </option>
	        			<option value="Impact ">Impact </option>
	        			<option value="CenturyGothic">Gothic</option>
	    			</select>
	    			<!--Select font size-->
	    			<select id="fontsize">
	        			<option value="12" selected>12 px</option>
	        			<option value="24">24 px</option>
	    			</select>
				<br><br>

		</div><!--end controls-->

		<!-- Right side with the live preview -->
		<div id='preview'>
				<div id='preview-background'>
					<div id='canvas'>
						<div id='pendant-container'>
							<div id='pendant'>
								<img src='/build-a-pendant/images/circle-md-silver.png' width="" height="" alt="Medium Round Silver Pendant blank default">
							</div><!--end pendant-->
						</div><!--end pendant-container-->
						
						<div id='message-window'>
							<div id='message-output' class='changeMe'></div>
						</div><!--end message-window-->	

					</div><!--end canvas-->

					<!-- Total pendant cost-->
					<!--Total: $<span id='total'>0.00</span> <br><br>-->
				</div><!--end preview-background-->
				
				<!-- Buttons -->
				<input type='button' id='refresh-btn' value='Start over'>
				<input type='button' id='print-btn' value='Print'>
				<!--<input type='button' id='buy' value='Buy'>-->

		<!-- Paypal purchase -->
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
		<input type="hidden" name="cmd" value="_cart">
		<input type="hidden" name="business" value="lakenney@rcn.com">
		<input type="image" src="http://virtualwindowshopping.com/images/navViewCart.gif" border="0" name="submit" alt="Make payments with PayPal - it's fast, free and secure!">
		<input type="hidden" name="display" value="1">
		</form>

		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
		<input type="image" id='buy-now' src="http://virtualwindowshopping.com/images/buyNowbutton.gif" border="0" name="submit" alt="Make payments with PayPal - it's fast, free and secure!">
		<input type="hidden" name="add" value="1">
		<input type="hidden" name="cmd" value="_cart">
		<input type="hidden" name="business" value="lakenney@rcn.com">
		<input type="hidden" name="item_name" id="paypalShapeSizeMetal" value="circle md silver">

		<!--<input type="hidden" name="on0" id='paypalMessage' value="LUV">-->

		<input type="hidden" name="on0" id="paypalMessage" value="paypalMessage">
		<!--paypalMessage<input type="text" name="os0" maxlength="200">-->



		<input type="hidden" name="item_number" id="pendant" value="pendant">
		<input type="hidden" name="amount" id="paypalPrice" value="94.39">
		<input type="hidden" name="shipping" value="0.00">
		<input type="hidden" name="no_shipping" value="2">
		<input type="hidden" name="currency_code" value="USD">
		<input type="hidden" name="lc" value="US">
		<input type="hidden" name="bn" value="PP-ShopCartBF">
		</form>
		<!-- end Paypal purchase -->	
		<br><br>

		</div><!-- end right side live preview-->

	<?php if(isset($client_files_body)) echo $client_files_body; ?>

	<script src="../build-a-pendant/js/build-a-pendant.js"></script>

	<script src="/js/stock_order.js"></script>




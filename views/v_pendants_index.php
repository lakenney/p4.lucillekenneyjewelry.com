pendant page	
	<!--css-->
	<!--<link rel="stylesheet" href="css/main.css" type="text/css">
	<link rel="stylesheet" href="css/features.css" type="text/css">
	<link rel="stylesheet" href='../css/responsive.css'>-->
	
<body id='products'>

	<div class='wrapper'>

		<h1 class='pendant'>Build a Pendant</h1>

		<!-- Left side with all the controls -->
		<div id='controls'>
			<p class='intro-para'>
				Let hand stamped words on the elegant beauty of fine silver or bronze carry a message of love and inspiration to someone special.
			</P>
				<hr>
					<h2>Pick a shape</h2>
						<div class="radioLeft">
							<label><input type="radio" name="shapes" value="circle" checked>
							circle</label>
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
							This pendant costs: $<span id='output'>94.39</span>
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
								<img src='../build-a-pendant/images/circle-md-silver.png' width="101" height="101" alt="Medium Round Silver Pendant blank">
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
				<br><br>
		</div><!-- end right side live preview-->

	</div><!--Wrapper div-->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- Navigation highlight css 'iamhere' -->
	<script type="text/javascript" src="../js/highlightnavigation.js"> </script>

	<script src="js/build-a-pendant.js"></script>

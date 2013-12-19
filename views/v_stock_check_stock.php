<h2>Stock Check</h2>

<!-- These empty divs are where JavaScript will inject the ajax results -->
<!--Name of product: <div id='product_name'></div><br>-->

<!--
Number of posts: <div id='post_count'></div><br>
Number of users: <div id='user_count'></div><br>
Most recent post: <div id='most_recent_post'></div><br> -->

<div id='products-wrapper'> 

	<!-- need my header divds -->
	<div class="product-header">
		<h3>Product Name </h3>
	</div>
	<div class="product-header">
		<h3>Product Shape</h3>
	</div>
	<div class="product-header">
		<h3>Product Size </h3>
	</div>
	<div class="product-header">
		<h3>Product Metal </h3>
	</div>
	<div class="product-header">
		<h3>Product Stock </h3>
	</div>
	<div class="product-header">
		<h3>Product Price </h3>
	</div>

	<!-- to clear the floats -->
	<div class="clear-fix"></div>
	
	<!-- the actual content wrapper -->
	<div id="product-content">
	<div class='product' id="product_title"></div>
	<div class='product' id="product_shape"></div>
	<div class='product' id="product_size"></div>
	<div class='product' id="product_metal"></div>
	<div class='product' id="product_stock"></div>
	<div class='product' id="product_price"></div>


<!--<div id='products'></div>-->
	</div><!--end product-content-->
	
	<!-- to clear the floats -->
	<div class="clear-fix"></div>

</div><!--end product content wrapper-->




<button id='refresh-button'>Refresh</button>
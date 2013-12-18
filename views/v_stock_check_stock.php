<h1>In Stock</h2>

<!-- These empty divs are where JavaScript will inject the ajax results -->
Name of product: <div id='product_name'></div><br>

<!--
Number of posts: <div id='post_count'></div><br>
Number of users: <div id='user_count'></div><br>
Most recent post: <div id='most_recent_post'></div><br> -->


<?php echo $products->product_name; ?>


<button id='refresh-button'>Refresh</button>
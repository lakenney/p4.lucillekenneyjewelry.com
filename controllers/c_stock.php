<?php
class stock_controller extends base_controller {

	public function __construct() {

		parent::__construct();
		}//end construct

    /*-------------------------------------------------------------------------------------------------
    Index
    -------------------------------------------------------------------------------------------------*/
	public function index() {
		
		#echo "stock_controller construct called<br><br>";
	}//end index

    /*-------------------------------------------------------------------------------------------------
    Control panel to display 3 form outputs
    -------------------------------------------------------------------------------------------------*/
    public function check_stock() {
            
        // Setup view
            $this->template->content = View::instance('v_stock_check_stock');
            $this->template->title    = "Check Stock";

        // JavaScript files
            $client_files_body = Array(
                '/js/stock_check_stock.js'
            );            

            $this->template->client_files_body = Utils::load_client_files($client_files_body);

        // Render template
             echo $this->template;
    }


    /*-------------------------------------------------------------------------------------------------
    Process the form data
    -------------------------------------------------------------------------------------------------*/
    public function p_check_stock() {

        /*$data = Array();

        # Find out how many products there are
        $q = "SELECT count(product_id) FROM products";
        $data['product_count'] = DB::instance(DB_NAME)->select_field($q);

        # Find out how many posts there are
        $q = "SELECT count(post_id) FROM posts";
        $data['post_count'] = DB::instance(DB_NAME)->select_field($q);

        # Find out how many users there are
        $q = "SELECT count(user_id) FROM users";
        $data['user_count'] = DB::instance(DB_NAME)->select_field($q);

        # Find out when the last post was created
        $q = "SELECT created FROM posts ORDER BY created DESC LIMIT 1";
        $data['most_recent_post'] = Time::display(DB::instance(DB_NAME)->select_field($q));
        */
        // Build the query to get all the products
        $q = "SELECT *
            FROM products";

        // Execute the query to get all the products. 
        // Store the result array in the variable $products
        $products = DB::instance(DB_NAME)->select_rows($q);

        //$this->template->content->products = $products;

        /*print  '<pre>';
        print_r($products);
        print '</pre>';*/

        # Send back json results to the JS, formatted in json
        echo json_encode($products);
    }


   /*-------------------------------------------------------------------------------------------------
    ORDER
    -------------------------------------------------------------------------------------------------*/
    /*public function order() {

        // Setup view
           // $this->template->content = View::instance('v_pendants_build');

        // JavaScript files
           // $client_files_body = Array(
           //     '/js/stock_order.js'
           // );            

            //$this->template->client_files_body = Utils::load_client_files($client_files_body);

        // Render template
             //echo $this->template;

    }*/

    /*-------------------------------------------------------------------------------------------------
    Process ORDER
    -------------------------------------------------------------------------------------------------*/
    public function p_order() {

        // Sanitize posted data, to prevent injections and other malicious code.
        $_POST = DB::instance(DB_NAME)->sanitize($_POST); 

        // This data came from paypal form as post parameters from stock_check_status.js
        $product = $_POST["product"];
        //echo $(product);

        // Comes back as 'product    circle md silver'

        list($shape, $size, $metal) = explode( ' ', $product);
        //print $shape. ',' . $size . ',' . $metal;

        // Build the query to get all the products
        // Find match for $product in the database
        /*$q = "SELECT *
            FROM products
            WHERE shape = '$shape' and size = '$size' and metal = '$metal'";

        $order = DB::instance(DB_NAME)->select_row($q);*/

        // "get the value from it's stock field" 
        // the current stock total for the item 
        $q = "SELECT stock FROM products 
            WHERE shape = '".$shape."' 
            AND size = '".$size."' 
            AND metal ='".$metal."'"; 

        $current_stock = DB::instance(DB_NAME)->select_field($q); 

        //"if it's zero, make a note to admin to back order, 
        if($current_stock < 1) {
            //note to admin back order
            echo 'back order';
        }
        else {
            //subtract one from $current_stock
            $current_stock = current_stock - 1;
        }
        
        $new_tally = Array (
            'stock' => '$current_stock',
        );

        //and use the DB update method to update the stock for the item. 
        DB::instance(DB_NAME)->update("products",$new_tally); 
   }

        /*print  '<pre>';
        print_r($products);
        print '</pre>';
        */

        # Send back json results to the JS, formatted in json
        //echo json_encode($data);
              
        // Pass data results 
        // Error codes
        // If response = zero (false) display on back order

} # end of the class
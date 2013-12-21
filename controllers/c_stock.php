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
    public function order() {

        // Setup view
            $this->template->content = View::instance('v_pendants_build');

        // JavaScript files
            $client_files_body = Array(
                '/js/stock_order.js'
            );            

            $this->template->client_files_body = Utils::load_client_files($client_files_body);

        // Render template
             echo $this->template;

    }
    /*-------------------------------------------------------------------------------------------------
    Process ORDER
    -------------------------------------------------------------------------------------------------*/
    public function p_order() {

        echo $_POST["product"];

        // get post parameters from stock_check_status.js
        // retrieve items' ids from the post parameters
        // update values for these ids by retrieving the values found in the post
        // parameters

        /*// Build the query to get all the products
        $q = 'SELECT stock
            FROM products
            WHERE stock = "'.$_POST['paypalShapeSizeMetal'].'"';

        // Execute the query to get stock count. 
        // Store the result array in the variable $data
        $data = DB::instance(DB_NAME)->select_rows($q);

        $this->template->content = $data;

        print  '<pre>';
        print_r($products);
        print '</pre>';

        # Send back json results to the JS, formatted in json
        echo json_encode($data);


    // This is data we got from the paypal form         
    // <input type="hidden" name="item_name" id="paypalShapeSizeMetal" value="circle md silver">

    $_POST['paypalShapeSizeMetal'] = 'hello paypal post';*/
    
    //Make sure it's sanitized first
    //$_POST = DB::instance(DB_NAME)->sanitize($_POST);
    
    //$q = 'SELECT stock
            //FROM products
            //WHERE stock = "'.$_POST['paypalShapeSizeMetal'].'"';
    // echo a query is a useful debugging technique
    //echo $q;
        
    // Run the query, echo what it returns  
    //echo DB::instance(DB_NAME)->select_field($q);

    //echo strrev($_POST['name']);

    // Pass data results 
    // Error codes
    // If response = zero (false) display on back order

    }

} # end of the class
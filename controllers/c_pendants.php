<?php
class pendants_controller extends base_controller {

    public function __construct() {
        parent::__construct();
        #echo "pendants_controller construct called<br><br>";
    } 

    /*-------------------------------------------------------------------------------------------------
    INDEX ... displays pendants index page.
    -------------------------------------------------------------------------------------------------*/
    //public function index() {

        //$this->template->content = View::instance('v_pendants_index');
        #echo "This is the index page";
        //$this->template->title = "Pendants";
        //$this->template->body_id = 'Pendants';
        
        // Render the View
        // echo $this->template; 
    //}

          
   /*-------------------------------------------------------------------------------------------------
    Build
    -------------------------------------------------------------------------------------------------*/
    public function build() {

        $this->template->content = View::instance('v_pendants_build');
        $this->template->title = "Pendants";
        $this->template->body_id = 'pendants';

        // Code for controller specific css and js place in _v 
        // Create an array for all the client files
        // Method inside the utilities library to help with this
        $client_files_head = Array(
            '../build-a-pendant/css/main.css',
            '../build-a-pendant/css/features.css',
            '../build-a-pendant/css/responsive.css'
        );
            
        // Use load_client_files to generate the links from the above array
        $this->template->client_files_head = Utils::load_client_files($client_files_head);    
            
        # Setup view to v_pendants_build
        $this->template->content = View::instance('v_pendants_build');
        $this->template->title = "Pendants";
        $this->template->body_id = 'pendants';


        $client_files_body = Array(
            '/js/jquery.form.js',
            //'/js/pendants_build.js',
            //'../js/highlightnavigation.js',
            '../build-a-pendant/js/build-a-pendant.js'
        );            

        $this->template->client_files_body = Utils::load_client_files($client_files_body);

        # Render template
        echo $this->template;
            
        #echo "This is the pendants page";
    }

    /*-------------------------------------------------------------------------------------------------
    Process Build
    -------------------------------------------------------------------------------------------------*/    
    public function p_build() {
        
        // Associate this pendant with this user
        $_POST['product_id']  = $this->user->product_id;
                    
        // Unix timestamp of when this post was created / modified
        $_POST['created']  = Time::now();
        $_POST['modified'] = Time::now();
                
        // Insert method already sanitized                 
        DB::instance(DB_NAME)->insert('pendants',$_POST);
       
        // Set up the view
        $view = new View('v_pendants_p_build');

        /*// Pass data to the view
        $view->created     = $_POST['created'];
        $view->new_post_id = $new_post_id;*/

        $view->created = Time::display(Time::now());

        // Render the view
        echo $view;

        //echo "New post was added on ".Time::display(Time::now());        
        // Where do I want to redirect them
        //Router::redirect('/build');

    }


} # end of the class

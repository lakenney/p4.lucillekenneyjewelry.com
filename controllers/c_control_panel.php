 <?php
 class control_panel_controller extends base_controller {

	public function control_panel() {
	    
		# Setup view

			$this->template->content = View::instance('v_posts_control_panel');
			$this->template->title 	 = "Control Panel";

		# JavaScript files
		    $client_files_body = Array(
		            '/js/jquery.form.js',
		            '/js/posts_control_panel.js'
		    );            

	        $this->template->client_files_body = Utils::load_client_files($client_files_body);

	     # Render template
	        echo $this->template;
	}

}

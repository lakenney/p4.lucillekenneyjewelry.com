<form method='POST' action='/users/p_signup' id="validateSignup">

    First Name<br>
    <input type='text' name='first_name' id='first_name' value='<?php if(isset($_POST['first_name'])) echo $_POST['first_name']?>' class="required" >
    <br><br>
    
    Last Name<br>
	<input type='text'  name='last_name' value='<?php if(isset($_POST['last_name'])) echo $_POST['last_name']?>' class="required" >
    <br><br>
    
    Email<br>
    <input type='text' name='email' class="required email" >
    <br><br>
    
    <?php if($unique == false): ?>
        <div class='error'>
            Signup failed. You already have an account.
        </div>
        <br>
        
    <?php endif; ?>

    Password<br>
    <input type='password' name='password' class="required">
    <br><br>
    <!-- Removed to use validateMe js -->
    <!--<?php if(isset($error)): ?>
        <div class='error'>
            Please fill in all fields!.
        </div>
        <br>
        
    <?php endif; ?>-->
    
    <input type='submit' value='Sign up'>

</form>


<form method='POST' action='/users/p_signup' id="contactform">

    First Name<br>
    <input type='text' id='first_name' name='first_name' value='<?php if(isset($_POST['first_name'])) echo $_POST['first_name']?>' class="required" >
    <br><br>
    
    Last Name<br>
	<input type='text' id='last_name' name='last_name' value='<?php if(isset($_POST['last_name'])) echo $_POST['last_name']?>' class="required" >
    <br><br>
    
    Email<br>
    <input type='text' id="email" name='email' class="required email" >
    <br><br>
    
    <?php if($unique == false): ?>
        <div class='error'>
            Signup failed. You already have an account.
        </div>
        <br>
        
    <?php endif; ?>

    Password<br>
    <input type='password' name='password' id='password' class="required">
    <br><br>

    <?php if(isset($error)): ?>
        <div class='error'>
            Please fill in all fields!.
        </div>
        <br>
        
    <?php endif; ?>
    
    <input type='submit' value='Sign up'>

</form>

